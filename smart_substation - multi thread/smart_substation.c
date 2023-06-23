/*
 * sv_subscriber_example.c
 *
 * Example program for Sampled Values (SV) subscriber
 *
 */

// SV Includes
#include "hal_thread.h"
#include <signal.h>
#include <stdio.h>
#include "sv_subscriber.h"
#include <stdbool.h>
#include <math.h>

#include <sys/resource.h>

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include <pthread.h>
#include <unistd.h>
#include <stdbool.h>
#include <errno.h>

#define QUEUE_SIZE 1  // number of elements in the queue
#define TIMEOUT_SEC 5 // timeout value in seconds

#include <sys/time.h>

#include <sched.h>

// GOOSE Includes
#include "mms_value.h"
#include "goose_publisher.h"

#include "goose_receiver.h"
#include "goose_subscriber.h"

// MMS
#include "iec61850_server.h"
#include "static_model.h"
static IedServer iedServer = NULL;

// Threads
pthread_mutex_t mutexGoose = PTHREAD_MUTEX_INITIALIZER; // mutex lock for the GOOSE queue
pthread_mutex_t mutexMMS = PTHREAD_MUTEX_INITIALIZER;   // mutex lock for the MMS queue
pthread_mutex_t mutexCPU = PTHREAD_MUTEX_INITIALIZER;   // mutex lock for the CPU queue
pthread_cond_t condGoose = PTHREAD_COND_INITIALIZER;    // condition variable for signaling when data is available in the GOOSE queue
pthread_cond_t condMMS = PTHREAD_COND_INITIALIZER;      // condition variable for signaling when data is available in the MMS queue

pthread_t gooseThread, mmsThread, cpuThread;

// Config GOOSE interface (VLAN)
#define INTERFACE "enp2s0"

#define SMPCNT 80
#define MAXMUS 6

// Slope
#define S1 0.3
#define S2 0.5
#define IDIF 20
#define IDIF1 100
#define IDIF2 250

// GOOSE Burst Delay
#define BURST_DELAY_T1 10 // Siemens 3.5
#define BURST_DELAY_T2 10 // Siemens 8.0
#define BURST_DELAY_T3 10 // Siemens 16.0

// #define NUNMUSTEST 4

char *svID[MAXMUS];
char *goID[MAXMUS];
uint8_t svMUs = 0;

// SV values
typedef struct
{
  double IA[MAXMUS][SMPCNT];
  double IB[MAXMUS][SMPCNT];
  double IC[MAXMUS][SMPCNT];
  int32_t IN[MAXMUS][SMPCNT];
  uint32_t smpCnt[MAXMUS];
  uint8_t smpSynch[MAXMUS];
  double delta[3];
} MUs;
MUs mus;

// Yc Ys
typedef struct
{
  double cIA[MAXMUS][SMPCNT];
  double sIA[MAXMUS][SMPCNT];
  double cIB[MAXMUS][SMPCNT];
  double sIB[MAXMUS][SMPCNT];
  double cIC[MAXMUS][SMPCNT];
  double sIC[MAXMUS][SMPCNT];
} YcYs;
YcYs Y;

int resetGoose = 0;
bool changeMMS = false;

double a_[MAXMUS][3];
double b_[MAXMUS][3];

double ia_rms[MAXMUS];
double ib_rms[MAXMUS];
double ic_rms[MAXMUS];

double I1_a;
double I1_b;
double I1_c;

double I2_a;
double I2_b;
double I2_c;

double I_RE_a;
double I_RE_b;
double I_RE_c;

double I_OP_a;
double I_OP_b;
double I_OP_c;

double angle_a;
double angle_b;
double angle_c;

double SLOPE1;
double SLOPE2;

// GOOSE Counter (every 10s)
int32_t GOOSEcount = 0;

// Variable for keyboard stopping
static bool running = true;

// GOOSE triggers
typedef struct
{
  bool a;
  bool b;
  bool c;
  bool g;
} trip_t;

// GOOSE triggers
typedef struct
{
  trip_t queue[QUEUE_SIZE];
  int head;  // index of the head of the queue
  int tail;  // index of the tail of the queue
  int count; // number of elements in the queue
} goose_t;

goose_t goose;

typedef struct
{
  trip_t lastTrip;
  int time; // Time the trip happened
} mms_t;

mms_t mms;

float cpu_usage = 0.0;
float memory_usage = 0.0;

// Sin and Cos arrays
double cfc[80] = {0.01768, 0.01762, 0.01746, 0.01719, 0.01681, 0.01633, 0.01575, 0.01507, 0.01430, 0.01344, 0.01250, 0.01148, 0.01039, 0.00924, 0.00803, 0.00676, 0.00546, 0.00413, 0.00277, 0.00139, 0.00000, -0.00139, -0.00277, -0.00413, -0.00546, -0.00676, -0.00803, -0.00924, -0.01039, -0.01148, -0.01250, -0.01344, -0.01430, -0.01507, -0.01575, -0.01633, -0.01681, -0.01719, -0.01746, -0.01762, -0.01768, -0.01762, -0.01746, -0.01719, -0.01681, -0.01633, -0.01575, -0.01507, -0.01430, -0.01344, -0.01250, -0.01148, -0.01039, -0.00924, -0.00803, -0.00676, -0.00546, -0.00413, -0.00277, -0.00139, -0.00000, 0.00139, 0.00277, 0.00413, 0.00546, 0.00676, 0.00803, 0.00924, 0.01039, 0.01148, 0.01250, 0.01344, 0.01430, 0.01507, 0.01575, 0.01633, 0.01681, 0.01719, 0.01746, 0.01762};

double cfs[80] = {0, -0.00139, -0.00277, -0.00413, -0.00546, -0.00676, -0.00803, -0.00924, -0.01039, -0.01148, -0.01250, -0.01344, -0.01430, -0.01507, -0.01575, -0.01633, -0.01681, -0.01719, -0.01746, -0.01762, -0.01768, -0.01762, -0.01746, -0.01719, -0.01681, -0.01633, -0.01575, -0.01507, -0.01430, -0.01344, -0.01250, -0.01148, -0.01039, -0.00924, -0.00803, -0.00676, -0.00546, -0.00413, -0.00277, -0.00139, -0.00000, 0.00139, 0.00277, 0.00413, 0.00546, 0.00676, 0.00803, 0.00924, 0.01039, 0.01148, 0.01250, 0.01344, 0.01430, 0.01507, 0.01575, 0.01633, 0.01681, 0.01719, 0.01746, 0.01762, 0.01768, 0.01762, 0.01746, 0.01719, 0.01681, 0.01633, 0.01575, 0.01507, 0.01430, 0.01344, 0.01250, 0.01148, 0.01039, 0.00924, 0.00803, 0.00676, 0.00546, 0.00413, 0.00277, 0.00139};

double pii = 3.141592653589793;

void GOOSE_send(GoosePublisher publisher, trip_t trip);

void *cpuThreadTask(void *arg);
void *mmsThreadTask(void *arg);

void *gooseThreadTaskTimeout(void *arg)
{
  CommParameters gooseCommParameters;

  gooseCommParameters.appId = 0x0003;
  gooseCommParameters.dstAddress[0] = 0x01;
  gooseCommParameters.dstAddress[1] = 0x0c;
  gooseCommParameters.dstAddress[2] = 0xcd;
  gooseCommParameters.dstAddress[3] = 0x01;
  gooseCommParameters.dstAddress[4] = 0x00;
  gooseCommParameters.dstAddress[5] = 0x08;
  gooseCommParameters.vlanId = 1;
  gooseCommParameters.vlanPriority = 4;

  bool oldState = false;

  GoosePublisher publisher = GoosePublisher_create(&gooseCommParameters, INTERFACE);
  if (publisher)
  {
    GoosePublisher_setGoCbRef(publisher, "SEL_751_1CFG/LLN0$GO$novo"); //"PROT_BARCFG/LLN0$GO$PROT_BAR"   GoosePublisher_setGoCbRef(publisher, argv[args++]);
    GoosePublisher_setConfRev(publisher, 4);                           // Ver se precisa alterar futuramente
    GoosePublisher_setGoID(publisher, "flavio");                       //"PROT_BAR"  GoosePublisher_setGoID(publisher, argv[args++]);
    GoosePublisher_setDataSetRef(publisher, "SEL_751_1CFG/LLN0$ABC");  //"PROT_BARCFG/LLN0$DATASET"   GoosePublisher_setDataSetRef(publisher, argv[args++]);
    GoosePublisher_setTimeAllowedToLive(publisher, 2000);              // Ver se precisa alterar futuramente
    GoosePublisher_setSimulation(publisher, false);
  }

  while (1)
  {
    pthread_mutex_lock(&mutexGoose); // acquire the mutex lock before accessing the shared queue

    // calculate the timeout time
    struct timespec timeout_time;
    clock_gettime(CLOCK_REALTIME, &timeout_time);
    timeout_time.tv_sec += TIMEOUT_SEC;

    // wait for data to arrive in the queue or a timeout to occur
    while (goose.count == 0)
    {
      int status = pthread_cond_timedwait(&condGoose, &mutexGoose, &timeout_time);
      if (status == ETIMEDOUT)
      {
        printf("[GOOSE TX] Status\n");
        trip_t trip;
        trip.a = false;
        trip.b = false;
        trip.c = false;
        trip.g = false;
        GOOSE_send(publisher, trip);

        break;
      }
    }

    if (goose.count > 0)
    {
      // read the value from the head of the queue
      trip_t trip = goose.queue[goose.head];
      goose.head = (goose.head + 1) % QUEUE_SIZE;
      goose.count--;
      printf("[GOOSE TX] Trip\n");

      GOOSE_send(publisher, trip);
    }

    pthread_mutex_unlock(&mutexGoose); // release the mutex lock after accessing the shared queue
  }
}

void *mmsThreadTask(void *arg)
{
  while (1)
  {
    pthread_mutex_lock(&mutexCPU); // acquire the mutex lock before accessing the shared queue
    IedServer_lockDataModel(iedServer);

    IedServer_updateUTCTimeAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_AnIn1_t, Hal_getTimeInMs());
    IedServer_updateFloatAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_AnIn1_mag_f, cpu_usage);

    IedServer_updateUTCTimeAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_AnIn2_t, Hal_getTimeInMs());
    IedServer_updateFloatAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_AnIn2_mag_f, memory_usage);

    pthread_mutex_unlock(&mutexCPU);
    pthread_mutex_lock(&mutexMMS);

    IedServer_updateUTCTimeAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO1_t, mms.time);
    IedServer_updateBooleanAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO1_stVal, mms.lastTrip.a);

    IedServer_updateUTCTimeAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO2_t, mms.time);
    IedServer_updateBooleanAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO2_stVal, mms.lastTrip.b);

    IedServer_updateUTCTimeAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO3_t, mms.time);
    IedServer_updateBooleanAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO3_stVal, mms.lastTrip.c);

    IedServer_updateUTCTimeAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO4_t, mms.time);
    IedServer_updateBooleanAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO4_stVal, mms.lastTrip.g);

    pthread_mutex_unlock(&mutexMMS);
    IedServer_unlockDataModel(iedServer);

    Thread_sleep(1000);
  }
}

void *cpuThreadTask(void *arg)
{
  struct rusage usage;
  struct timeval start, end;

  while (1)
  {
    getrusage(RUSAGE_SELF, &usage);
    start = usage.ru_utime;

    sleep(10);

    getrusage(RUSAGE_SELF, &usage);
    end = usage.ru_utime;

    pthread_mutex_lock(&mutexCPU);

    // Calculate CPU usage
    cpu_usage = ((end.tv_sec - start.tv_sec) * 1000000 + (end.tv_usec - start.tv_usec)) / 10000.0;

    // Print CPU usage
    // printf("CPU Usage: %.2f%%\n", cpu_usage);

    // Get memory usage
    memory_usage = usage.ru_maxrss;

    // Print memory usage
    printf("Memory Usage: %ld KB\n", usage.ru_maxrss);

    pthread_mutex_unlock(&mutexCPU);
  }
}

// Splitter for SCD parser
int split(char *str, char c, char ***arr)
{
  int count = 1;
  int token_len = 1;
  int i = 0;
  char *p;
  char *t;

  p = str;
  while (*p != '\0')
  {
    if (*p == c)
      count++;
    p++;
  }

  *arr = (char **)malloc(sizeof(char *) * count);
  if (*arr == NULL)
    exit(1);

  p = str;
  while (*p != '\0')
  {
    if (*p == c)
    {
      (*arr)[i] = (char *)malloc(sizeof(char) * token_len);
      if ((*arr)[i] == NULL)
        exit(1);
      token_len = 0;
      i++;
    }
    p++;
    token_len++;
  }

  (*arr)[i] = (char *)malloc(sizeof(char) * token_len);
  if ((*arr)[i] == NULL)
    exit(1);

  i = 0;
  p = str;
  t = ((*arr)[i]);
  while (*p != '\0')
  {
    if (*p != c && *p != '\0')
    {
      *t = *p;
      t++;
    }
    else
    {
      *t = '\0';
      i++;
      t = ((*arr)[i]);
    }
    p++;
  }

  return count;
}

// GOOSE send function

void GOOSE_send(GoosePublisher publisher, trip_t trip)
{
  static bool oldState = false;

  // GOOSE DataSet (in order of creation)
  LinkedList dataSetValues = LinkedList_create();
  LinkedList_add(dataSetValues, MmsValue_newIntegerFromInt16(trip.a));
  LinkedList_add(dataSetValues, MmsValue_newIntegerFromInt16(trip.b));
  LinkedList_add(dataSetValues, MmsValue_newIntegerFromInt16(trip.c));
  LinkedList_add(dataSetValues, MmsValue_newIntegerFromInt16(trip.g));

  // Create Quality Bit
  MmsValue *quality = MmsValue_newBitString(13);
  MmsValue_setBitStringFromInteger(quality, QUALITY_VALIDITY_GOOD); // QUALITY_VALIDITY_GOOD | QUALITY_VALIDITY_INVALID | QUALITY_TEST
  // LinkedList_add(dataSetValues, quality);

  // Auto increase State Number
  if (trip.g != oldState)
  {
    oldState = !oldState;
    GoosePublisher_increaseStNum(publisher);
  }

  // Send burst
  if (trip.g)
  {
    printf("\x1b[41m===========================================================================\x1b[0m\n");
    // for (int i = 0; i < 5; i++)
    // {
    //   if (GoosePublisher_publish(publisher, dataSetValues) != -1)
    //   {
    //     if (i < 2)
    //       Thread_sleep(BURST_DELAY_T1);
    //     else if (i == 2)
    //       Thread_sleep(BURST_DELAY_T2);
    //     else if (i == 3 || i == 4)
    //       Thread_sleep(BURST_DELAY_T3);
    //     else
    //       break;
    //   }
    // }
    GoosePublisher_publish(publisher, dataSetValues);
  }
  else
  {
    printf("\x1b[32m+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\x1b[0m\n");
    GoosePublisher_publish(publisher, dataSetValues);
  }
  LinkedList_destroyDeep(dataSetValues, (LinkedListValueDeleteFunction)MmsValue_delete);
}

// Kill process with keboard
void sigint_handler(int signalId)
{
  running = 0;
}

/* Callback handler for received SV messages */
static void svUpdateListener(SVSubscriber subscriber, void *parameter, SVSubscriber_ASDU asdu)
{
  trip_t trip;
  trip.a = false;
  trip.b = false;
  trip.c = false;
  trip.g = false;

  // Check if it is the master MU
  for (size_t i = 0; i < (svMUs - 1); i++)
  {
    // Check which device called
    if (strcmp(SVSubscriber_ASDU_getSvId(asdu), svID[i]) == 0)
    {
      mus.smpCnt[i] = (SVSubscriber_ASDU_getSmpCnt(asdu) % SMPCNT);
      mus.smpSynch[i] = SVSubscriber_ASDU_getSmpSynch(asdu);

      for (int j = 79; j > 0; j--)
      {
        mus.IA[i][j] = mus.IA[i][j - 1];
        mus.IB[i][j] = mus.IB[i][j - 1];
        mus.IC[i][j] = mus.IC[i][j - 1];
      }

      mus.IA[i][0] = SVSubscriber_ASDU_getINT32(asdu, 0);
      mus.IB[i][0] = SVSubscriber_ASDU_getINT32(asdu, 8);
      mus.IC[i][0] = SVSubscriber_ASDU_getINT32(asdu, 16);
      // mus.IN[i][mus.smpCnt[i]] = SVSubscriber_ASDU_getINT32(asdu, 24);

      for (int j = 0; j < 80; j++)
      {
        Y.cIA[i][j] = cfc[j] * mus.IA[i][j];
        Y.sIA[i][j] = cfs[j] * mus.IA[i][j];
        Y.cIB[i][j] = cfc[j] * mus.IB[i][j];
        Y.sIB[i][j] = cfs[j] * mus.IB[i][j];
        Y.cIC[i][j] = cfc[j] * mus.IC[i][j];
        Y.sIC[i][j] = cfs[j] * mus.IC[i][j];
      }

      a_[i][0] = 0;
      a_[i][1] = 0;
      a_[i][2] = 0;
      b_[i][0] = 0;
      b_[i][1] = 0;
      b_[i][2] = 0;

      for (int j = 0; j < 80; j++)
      {
        a_[i][0] = a_[i][0] + Y.cIA[i][j];
        b_[i][0] = a_[i][0] + Y.sIA[i][j];
        a_[i][1] = a_[i][1] + Y.cIB[i][j];
        b_[i][1] = a_[i][1] + Y.sIB[i][j];
        a_[i][2] = a_[i][2] + Y.cIC[i][j];
        b_[i][2] = a_[i][2] + Y.sIC[i][j];
      }

      ia_rms[i] = abs(sqrt(a_[i][0] * a_[i][0] + b_[i][0] * b_[i][0])) / 1380.0;
      ib_rms[i] = abs(sqrt(a_[i][1] * a_[i][1] + b_[i][1] * b_[i][1])) / 1380.0;
      ic_rms[i] = abs(sqrt(a_[i][2] * a_[i][2] + b_[i][2] * b_[i][2])) / 1380.0;

      I1_a = ia_rms[4];
      I1_b = ib_rms[4];
      I1_c = ic_rms[4];

      I2_a = ia_rms[0] + ia_rms[1] + ia_rms[2] + ia_rms[3];
      I2_b = ib_rms[0] + ib_rms[1] + ib_rms[2] + ib_rms[3];
      I2_c = ic_rms[0] + ic_rms[1] + ic_rms[2] + ic_rms[3];

      I_RE_a = abs((I1_a + I2_a) / 2);
      I_RE_b = abs((I1_b + I2_b) / 2);
      I_RE_c = abs((I1_c + I2_c) / 2);

      I_OP_a = abs((I1_a - I2_a));
      I_OP_b = abs((I1_b - I2_b));
      I_OP_c = abs((I1_c - I2_c));

      angle_a = atan(I_OP_a / I_RE_a) * 180 / pii;
      angle_b = atan(I_OP_b / I_RE_b) * 180 / pii;
      angle_c = atan(I_OP_c / I_RE_c) * 180 / pii;

      SLOPE1 = atan(S1) * 180 / pii;
      SLOPE2 = atan(S2) * 180 / pii;

      if (I_RE_a < IDIF1 && I_OP_a > IDIF)
      {
        trip.a = true;
        trip.g = true;
      }
      if (I_RE_a > IDIF1 && I_RE_a < IDIF2 && angle_a > SLOPE1)
      {
        trip.a = true;
        trip.g = true;
      }
      if (I_RE_a > IDIF2 && angle_a > SLOPE2)
      {
        trip.a = true;
        trip.g = true;
      }
      if (I_RE_b < IDIF1 && I_OP_b > IDIF)
      {
        trip.b = true;
        trip.g = true;
      }
      if (I_RE_b > IDIF1 && I_RE_b < IDIF2 && angle_b > SLOPE1)
      {
        trip.b = true;
        trip.g = true;
      }
      if (I_RE_b > IDIF2 && angle_b > SLOPE2)
      {
        trip.b = true;
        trip.g = true;
      }
      if (I_RE_c < IDIF1 && I_OP_c > IDIF)
      {
        trip.c = true;
        trip.g = true;
      }
      if (I_RE_c > IDIF1 && I_RE_c < IDIF2 && angle_c > SLOPE1)
      {
        trip.c = true;
        trip.g = true;
      }
      if (I_RE_c > IDIF2 && angle_c > SLOPE2)
      {
        trip.c = true;
        trip.g = true;
      }
      if (trip.g)
      {
        pthread_mutex_lock(&mutexGoose); // acquire the GOOSE mutex lock before accessing the shared queue
        // add the trip value to the GOOSE queue
        goose.queue[goose.tail] = trip;
        goose.tail = (goose.tail + 1) % QUEUE_SIZE;
        goose.count++;
        pthread_cond_signal(&condGoose);   // signal the condition variable to wake up any waiting threads
        pthread_mutex_unlock(&mutexGoose); // release the GOOSE mutex lock after accessing the shared queue

        pthread_mutex_lock(&mutexMMS); // acquire the MMS mutex lock before accessing the shared queue

        uint64_t timestamp = Hal_getTimeInMs();
        mms.lastTrip = trip;
        mms.time = timestamp;

        pthread_cond_signal(&condMMS);   // signal the condition variable to wake up any waiting threads
        pthread_mutex_unlock(&mutexMMS); // release the MMS mutex lock after accessing the shared queue
      }
      if (trip.g)
      {
        if ((SVSubscriber_ASDU_getSmpCnt(asdu) == 0))
        {
          resetGoose++;
        }
      }
      if (resetGoose == 20)
      {
        trip.a = false;
        trip.b = false;
        trip.c = false;
        trip.g = false;

        pthread_mutex_lock(&mutexMMS);
        mms.lastTrip = trip;
        pthread_mutex_unlock(&mutexMMS);

        resetGoose = 0;
      }

      // Print Every 1s
      // if ((SVSubscriber_ASDU_getSmpCnt(asdu) == 0))
      //{
      //  fprintf(stdout, "\x1b[32m %s -> IA: %10.2f   | IB: %10.2f   | IC: %10.2f | TripG: %d | AngleA: %f | AngleB: %f | AngleC: %f\x1b[0m\n", svID[i], ia_rms[4], ib_rms[4], ic_rms[4], trip.g, angle_a, angle_b, angle_c);
      //}
      break;
    }
  }
}

int main(int argc, char **argv)
{
  struct sched_param param;
  int pid_num = 0;

  param.sched_priority = 90;
  sched_setscheduler(pid_num, SCHED_FIFO, &param);

  SVReceiver receiver = SVReceiver_create();
  GooseReceiver goReceiver = GooseReceiver_create();

  IedServerConfig config = IedServerConfig_create();
  iedServer = IedServer_createWithConfig(&iedModel, NULL, config);
  IedServerConfig_destroy(config);

  char *interface;
  int args = 1;
  bool goose;

  if (argc > 1)
  {
    interface = argv[args++];
    SVReceiver_setInterfaceId(receiver, interface);
    GooseReceiver_setInterfaceId(goReceiver, interface);
    IedServer_setGooseInterfaceId(iedServer, interface);
    fprintf(stdout, "Set interface id: %s\n", interface);
  }
  else
  {
    interface = INTERFACE;
    fprintf(stdout, "Using interface %s\n", interface);
    SVReceiver_setInterfaceId(receiver, interface);
    IedServer_setGooseInterfaceId(iedServer, interface);
  }

  // ---------------------------------------SV SCD parser--------------------------------------- //
  // ---------------------- MUs parse ----------------------
  int mus = atoi(argv[args++]);
  // fprintf(stdout, "Number of MUs: %i\n", mus);

  int c = 0;
  char **arr = NULL;
  char *vector1[mus];
  char *vector_end[mus];

  // ---------------------- APPID parse ----------------------
  c = split(argv[args++], ',', &arr);

  for (int i = 0; i < c; i++)
    vector1[i] = arr[i];

  c = split(vector1[0], '$', &arr);
  if (c > 1)
    mus++;

  if (c > 1)
  {
    for (int i = 0; i < mus; i++)
    {
      if (i < 2)
        vector_end[i] = arr[i];
      else
        vector_end[i] = vector1[i - 1];
    }
  }
  else
  {
    for (int i = 0; i < mus; i++)
      vector_end[i] = vector1[i];
  }

  int svAPPID[mus];
  for (int i = 0; i < mus; i++)
  {
    svAPPID[i] = (int)strtol(vector_end[i], NULL, 16);
  }

  // ---------------------- MACs parse ----------------------
  c = split(argv[args++], ',', &arr);
  for (int i = 0; i < c; i++)
    vector1[i] = arr[i];

  c = split(vector1[0], '$', &arr);
  if (c > 1)
  {
    for (int i = 0; i < mus; i++)
    {
      if (i < 2)
        vector_end[i] = arr[i];
      else
        vector_end[i] = vector1[i - 1];
    }
  }
  else
  {
    for (int i = 0; i < mus; i++)
      vector_end[i] = vector1[i];
  }

  int svMACAddress_int[6 * mus];
  for (int i = 0; i < mus; i++)
  {
    split(vector_end[i], '-', &arr);
    for (int j = 0; j < 6; j++)
    {
      svMACAddress_int[i + j] = (int)strtol(arr[j], NULL, 16);
    }
  }

  // ----------------------VLANID  parse ----------------------
  c = split(argv[args++], ',', &arr);

  for (int i = 0; i < c; i++)
    vector1[i] = arr[i];

  c = split(vector1[0], '$', &arr);
  if (c > 1)
  {
    for (int i = 0; i < mus; i++)
    {
      if (i < 2)
        vector_end[i] = arr[i];
      else
        vector_end[i] = vector1[i - 1];
    }
  }
  else
  {
    for (int i = 0; i < mus; i++)
      vector_end[i] = vector1[i];
  }

  int svVLANID[mus];
  for (int i = 0; i < mus; i++)
  {
    svVLANID[i] = (int)strtol(vector_end[i], NULL, 16);
  }

  // ----------------------VLANPRIO  parse ----------------------
  c = split(argv[args++], ',', &arr);

  for (int i = 0; i < c; i++)
    vector1[i] = arr[i];

  c = split(vector1[0], '$', &arr);
  if (c > 1)
  {
    for (int i = 0; i < mus; i++)
    {
      if (i < 2)
        vector_end[i] = arr[i];
      else
        vector_end[i] = vector1[i - 1];
    }
  }
  else
  {
    for (int i = 0; i < mus; i++)
      vector_end[i] = vector1[i];
  }

  int svVLANPRIO[mus];
  for (int i = 0; i < mus; i++)
  {
    svVLANPRIO[i] = (int)strtol(vector_end[i], NULL, 10);
  }

  // ----------------------svID  parse ----------------------
  c = split(argv[args++], ',', &arr);

  for (int i = 0; i < c; i++)
    vector1[i] = arr[i];

  c = split(vector1[0], '$', &arr);
  if (c > 1)
  {
    for (int i = 0; i < mus; i++)
    {
      if (i < 2)
        vector_end[i] = arr[i];
      else
        vector_end[i] = vector1[i - 1];
    }
  }
  else
  {
    for (int i = 0; i < mus; i++)
      vector_end[i] = vector1[i];
  }

  for (int i = 0; i < mus; i++)
  {
    svID[i] = vector_end[i];
  }

  // ----------------------svMUs  update ----------------------
  svMUs = mus;
  fprintf(stdout, "Number of MUs: %i\n", svMUs);

  //  printf("found %d svIDs.\n", c);
  // for (int i = 0; i < c; i++)
  // {
  //   svID[i] = arr[i];
  //   fprintf(stdout, "%s\n", svID[i]);
  // }
  if (argc == 15)
  {
    goose = true;
    // ---------------------------------------GOOSE SCD parser--------------------------------------- //

    // Get goID
    int goAPPID = (int)strtol(argv[args++], NULL, 16);
    printf("Goose APPID : %x\n", goAPPID);

    // Get MAC
    char *goMACAddress_str = argv[args++];
    split(goMACAddress_str, '-', &arr);
    int goMACAddress_int[6];
    for (int i = 0; i < 6; i++)
      goMACAddress_int[i] = (int)strtol(arr[i], NULL, 16);
    for (int i = 0; i < 6; i++)
      printf("Goose MAC #%d: %02x\n", i, goMACAddress_int[i]);

    // Get VLANID
    int goVLANID = (int)strtol(argv[args++], NULL, 16);
    printf("Goose VLANID : %x\n", goVLANID);

    // Get VLANPRIO
    int goVLANPRIO = (int)strtol(argv[args++], NULL, 16);
    printf("Goose VLANPRIO : %x\n", goVLANPRIO);

    CommParameters gooseCommParameters;

    gooseCommParameters.appId = goAPPID;
    gooseCommParameters.dstAddress[0] = goMACAddress_int[0];
    gooseCommParameters.dstAddress[1] = goMACAddress_int[1];
    gooseCommParameters.dstAddress[2] = goMACAddress_int[2];
    gooseCommParameters.dstAddress[3] = goMACAddress_int[3];
    gooseCommParameters.dstAddress[4] = goMACAddress_int[4];
    gooseCommParameters.dstAddress[5] = goMACAddress_int[5];
    gooseCommParameters.vlanId = goVLANID;
    gooseCommParameters.vlanPriority = goVLANPRIO;
  }
  else
  {
    goose = false;
  }
  if (goose)
    pthread_create(&gooseThread, NULL, gooseThreadTaskTimeout, NULL);

  /* MMS server will be instructed to start listening to client connections. */
  IedServer_start(iedServer, 102);

  pthread_create(&mmsThread, NULL, mmsThreadTask, NULL);

  pthread_create(&cpuThread, NULL, cpuThreadTask, NULL);

  if (!IedServer_isRunning(iedServer))
  {
    printf("Starting server failed! Exit.\n");
    IedServer_destroy(iedServer);
    exit(-1);
  }

  //  SV Create subscribers and thread
  for (int i = 0; i < (svMUs - 1); i++)
  {
    SVSubscriber subscriber;

    CommParameters svCommParameters;
    svCommParameters.appId = svAPPID[i];
    svCommParameters.dstAddress[0] = svMACAddress_int[i];
    svCommParameters.dstAddress[1] = svMACAddress_int[i + 1];
    svCommParameters.dstAddress[2] = svMACAddress_int[i + 2];
    svCommParameters.dstAddress[3] = svMACAddress_int[i + 3];
    svCommParameters.dstAddress[4] = svMACAddress_int[i + 4];
    svCommParameters.dstAddress[5] = svMACAddress_int[i + 5];
    svCommParameters.vlanId = svVLANID[i];
    svCommParameters.vlanPriority = svVLANPRIO[i];

    // Create a subscriber listening to SV messages
    subscriber = SVSubscriber_create(svCommParameters.dstAddress, svCommParameters.appId);

    // Install a callback handler for the subscribers
    SVSubscriber_setListener(subscriber, svUpdateListener, &svCommParameters);

    // Connect the subscriber to the receivers
    SVReceiver_addSubscriber(receiver, subscriber);
  }

  // Start listening to SV messages - starts a new receiver background thread
  SVReceiver_start(receiver);

  if (SVReceiver_isRunning(receiver))
  {
    signal(SIGINT, sigint_handler);

    while (running)
    {
      Thread_sleep(1);
    }

    /* Stop listening to SV messages */
    SVReceiver_stop(receiver);
  }
  else
  {
    printf("Failed to start SV subscriber. Reason can be that the Ethernet interface doesn't exist or root permission are required.\n");
  }

  /* Cleanup and free resources */
  SVReceiver_destroy(receiver);
  return 0;
}
