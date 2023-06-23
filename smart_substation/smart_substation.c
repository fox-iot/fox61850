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

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include <sys/time.h>

#include <sched.h>

// GOOSE Includes
#include "mms_value.h"
#include "goose_publisher.h"

#include "goose_receiver.h"
#include "goose_subscriber.h"

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

//Yc Ys
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

// GOOSE trigger
bool TRIP_a = false;
bool TRIP_b = false;
bool TRIP_c = false;
bool TRIP_g = false;

// Sin and Cos arrays
double cfc[80] = {0.01768,0.01762,0.01746,0.01719,0.01681,0.01633,0.01575,0.01507,0.01430,0.01344,0.01250,0.01148,0.01039,0.00924,0.00803,0.00676,0.00546,0.00413,0.00277,0.00139,0.00000,-0.00139,-0.00277,-0.00413,-0.00546,-0.00676,-0.00803,-0.00924,-0.01039,-0.01148,-0.01250,-0.01344,-0.01430,-0.01507,-0.01575,-0.01633,-0.01681,-0.01719,-0.01746,-0.01762,-0.01768,-0.01762,-0.01746,-0.01719,-0.01681,-0.01633,-0.01575,-0.01507,-0.01430,-0.01344,-0.01250,-0.01148,-0.01039,-0.00924,-0.00803,-0.00676,-0.00546,-0.00413,-0.00277,-0.00139,-0.00000,0.00139,0.00277,0.00413,0.00546,0.00676,0.00803,0.00924,0.01039,0.01148,0.01250,0.01344,0.01430,0.01507,0.01575,0.01633,0.01681,0.01719,0.01746,0.01762};

double cfs[80] = {0,-0.00139,-0.00277,-0.00413,-0.00546,-0.00676,-0.00803,-0.00924,-0.01039,-0.01148,-0.01250,-0.01344,-0.01430,-0.01507,-0.01575,-0.01633,-0.01681,-0.01719,-0.01746,-0.01762,-0.01768,-0.01762,-0.01746,-0.01719,-0.01681,-0.01633,-0.01575,-0.01507,-0.01430,-0.01344,-0.01250,-0.01148,-0.01039,-0.00924,-0.00803,-0.00676,-0.00546,-0.00413,-0.00277,-0.00139,-0.00000,0.00139,0.00277,0.00413,0.00546,0.00676,0.00803,0.00924,0.01039,0.01148,0.01250,0.01344,0.01430,0.01507,0.01575,0.01633,0.01681,0.01719,0.01746,0.01762,0.01768,0.01762,0.01746,0.01719,0.01681,0.01633,0.01575,0.01507,0.01430,0.01344,0.01250,0.01148,0.01039,0.00924,0.00803,0.00676,0.00546,0.00413,0.00277,0.00139};

double pii=3.141592653589793;

// Create publisher so it can be used in the thread
GoosePublisher publisher;

// RMS calc - DO NOT USE
/*
double rmsValue(int arr[], int n)
{
  double square = 0, mean = 0.0, root = 0.0;

  // Calculate square.
  for (int i = 0; i < n; i++)
  {
    square += pow(arr[i], 2);
  }

  // Calculate Mean.
  mean = (square / (float)(n));

  // Calculate Root.
  root = sqrt(mean);

  return root;
}
*/

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

void GOOSE_send(GoosePublisher publisher, bool tripA, bool tripB,bool tripC,bool tripG)
{
  static bool oldState = false;

  // GOOSE DataSet (in order of creation)
  LinkedList dataSetValues = LinkedList_create();
  LinkedList_add(dataSetValues, MmsValue_newBoolean(TRIP_a));
  LinkedList_add(dataSetValues, MmsValue_newBoolean(TRIP_b));
  LinkedList_add(dataSetValues, MmsValue_newBoolean(TRIP_c));
  LinkedList_add(dataSetValues, MmsValue_newBoolean(TRIP_g));

  // Create Quality Bit
  MmsValue *quality = MmsValue_newBitString(13);
  MmsValue_setBitStringFromInteger(quality, QUALITY_VALIDITY_GOOD); // QUALITY_VALIDITY_GOOD | QUALITY_VALIDITY_INVALID | QUALITY_TEST
  // LinkedList_add(dataSetValues, quality);

  // Auto increase State Number
  if (tripG != oldState)
  {
    oldState = !oldState;
    GoosePublisher_increaseStNum(publisher);
  }

  // Send burst
  if (tripG)
  {
    printf("\x1b[41m===========================================================================\x1b[0m\n");
    for (int i = 0; i < 1; i++)
    {
      if (GoosePublisher_publish(publisher, dataSetValues) != -1)
      {
        if (i < 2)
          Thread_sleep(BURST_DELAY_T1);
        else if (i == 2)
          Thread_sleep(BURST_DELAY_T2);
        else if (i == 3 || i == 4)
          Thread_sleep(BURST_DELAY_T3);
        else
          break;
      }
    }
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
  // Check if it is the master MU
  for (size_t i = 3; i < (svMUs-1); i++)
  {
    // Check which device called
    if (strcmp(SVSubscriber_ASDU_getSvId(asdu), svID[i]) == 0)
    {
      mus.smpCnt[i] = (SVSubscriber_ASDU_getSmpCnt(asdu) % SMPCNT);
      mus.smpSynch[i] = SVSubscriber_ASDU_getSmpSynch(asdu);

      for (int j = 79; j > 0; j--) {
        mus.IA[i][j] = mus.IA[i][j-1];
        mus.IB[i][j] = mus.IB[i][j-1];
        mus.IC[i][j] = mus.IC[i][j-1];
      }

      mus.IA[i][0] = SVSubscriber_ASDU_getINT32(asdu, 0);
      mus.IB[i][0] = SVSubscriber_ASDU_getINT32(asdu, 8);
      mus.IC[i][0] = SVSubscriber_ASDU_getINT32(asdu, 16);
      // mus.IN[i][mus.smpCnt[i]] = SVSubscriber_ASDU_getINT32(asdu, 24);
      
      for (int j = 0; j < 80; j++) {
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
      
      for (int j = 0; j < 80; j++) {
        a_[i][0] = a_[i][0] + Y.cIA[i][j];
        b_[i][0] = a_[i][0] + Y.sIA[i][j];
        a_[i][1] = a_[i][1] + Y.cIB[i][j];
        b_[i][1] = a_[i][1] + Y.sIB[i][j];
        a_[i][2] = a_[i][2] + Y.cIC[i][j];
        b_[i][2] = a_[i][2] + Y.sIC[i][j];
      }
      
      ia_rms[i] = abs(sqrt(a_[i][0]*a_[i][0]+b_[i][0]*b_[i][0]))/1380.0;
      ib_rms[i] = abs(sqrt(a_[i][1]*a_[i][1]+b_[i][1]*b_[i][1]))/1380.0;
      ic_rms[i] = abs(sqrt(a_[i][2]*a_[i][2]+b_[i][2]*b_[i][2]))/1380.0;
      
      I1_a = ia_rms[4];
      I1_b = ib_rms[4];
      I1_c = ic_rms[4];
      
      I2_a = ia_rms[0]+ia_rms[1]+ia_rms[2]+ia_rms[3];
      I2_b = ib_rms[0]+ib_rms[1]+ib_rms[2]+ib_rms[3];
      I2_c = ic_rms[0]+ic_rms[1]+ic_rms[2]+ic_rms[3];
      
      I_RE_a=abs((I1_a+I2_a)/2);
      I_RE_b=abs((I1_b+I2_b)/2);
      I_RE_c=abs((I1_c+I2_c)/2);
      
      I_OP_a=abs((I1_a-I2_a));
      I_OP_b=abs((I1_b-I2_b));
      I_OP_c=abs((I1_c-I2_c));
      
      angle_a=atan(I_OP_a/I_RE_a)*180/pii;
      angle_b=atan(I_OP_b/I_RE_b)*180/pii;
      angle_c=atan(I_OP_c/I_RE_c)*180/pii;

      SLOPE1=atan(S1)*180/pii;
      SLOPE2=atan(S2)*180/pii;
      
      if (I_RE_a < IDIF1 && I_OP_a > IDIF) {
	      TRIP_a=1;
	      TRIP_g=1;
	    }
      if (I_RE_a > IDIF1 && I_RE_a < IDIF2 && angle_a > SLOPE1) {
              TRIP_a=1;
              TRIP_g=1;
	    }
      if (I_RE_a > IDIF2 && angle_a > SLOPE2) {
              TRIP_a=1;
              TRIP_g=1;
	    }
      if (I_RE_b < IDIF1 && I_OP_b > IDIF) {
              TRIP_b=1;
              TRIP_g=1;
	    }
      if (I_RE_b > IDIF1 && I_RE_b < IDIF2 && angle_b > SLOPE1) {
              TRIP_b=1;
              TRIP_g=1;
	    }
      if (I_RE_b > IDIF2 && angle_b > SLOPE2) {
              TRIP_b=1;
              TRIP_g=1;
	    }
      if (I_RE_c < IDIF1 && I_OP_c > IDIF) {
              TRIP_c=1;
              TRIP_g=1;
	    }
      if (I_RE_c > IDIF1 && I_RE_c < IDIF2 && angle_c > SLOPE1) {
              TRIP_c=1;
              TRIP_g=1;
      }
      if (I_RE_c > IDIF2 && angle_c > SLOPE2) {
              TRIP_c=1;
              TRIP_g=1;
      }
      if (TRIP_g){
              if ((SVSubscriber_ASDU_getSmpCnt(asdu) == 0)) {
		resetGoose++;
	      }
      }
      if(resetGoose==20) {
	TRIP_a=0;
        TRIP_b=0;
        TRIP_c=0;
        TRIP_g=0;
	resetGoose = 0;
      }
      
      // Print Every 1s
      if ((SVSubscriber_ASDU_getSmpCnt(asdu) == 0)) {
          fprintf(stdout, "\x1b[32m %s -> IA: %10.2f   | IB: %10.2f   | IC: %10.2f | TripG: %d | AngleA: %f | AngleB: %f | AngleC: %f\x1b[0m\n",svID[i], ia_rms[4], ib_rms[4], ic_rms[4], TRIP_g, angle_a, angle_b, angle_c);
	//fprintf(stdout, "\x1b[32m %s -> TripA: %d   | TripB: %d   | TripC: %d | TripG: %d\x1b[0m\n", svID[i], TRIP_a, TRIP_b, TRIP_c, TRIP_g);
      }
      
      /*
      // Delta calc
      if ((mus.smpCnt[0] % 80) == 0)
      {
        mus.delta[0] = abs(rmsValue(mus.IA[1], SMPCNT) - rmsValue(mus.IA[7], SMPCNT)) / 1000.0;
        mus.delta[1] = abs(rmsValue(mus.IB[1], SMPCNT) - rmsValue(mus.IB[7], SMPCNT)) / 1000.0;
        mus.delta[2] = abs(rmsValue(mus.IC[1], SMPCNT) - rmsValue(mus.IC[7], SMPCNT)) / 1000.0;
        if ((mus.delta[0] > 10.0) || (mus.delta[1] > 10.0) || (mus.delta[2] > 10.0))
          tripGoose = true;
        else
          tripGoose = false;
      }

      // Print every 1s
      if ((SVSubscriber_ASDU_getSmpCnt(asdu) == 0))
      {
        printf("smpCnt: %d", mus.smpCnt[i]);
        printf("%5s - > IA: %10.2f A | IB: %10.2f A | IC: %10.2f A | Synch: %d\n", svID[i], rmsValue(mus.IA[i], SMPCNT) / 1000.0, rmsValue(mus.IB[i], SMPCNT) / 1000.0, rmsValue(mus.IC[i], SMPCNT) / 1000.0, mus.smpSynch[i]);
        if (tripGoose)
          fprintf(stdout, "\x1b[41m Diff - > IA: %10.2f   | IB: %10.2f   | IC: %10.2f\x1b[0m\n", mus.delta[0], mus.delta[1], mus.delta[2]);
        else
          fprintf(stdout, "\x1b[32m Diff - > IA: %10.2f   | IB: %10.2f   | IC: %10.2f\x1b[0m\n", mus.delta[0], mus.delta[1], mus.delta[2]);
      }
      
      
      */
    }
  }
}

void
gooseListener(GooseSubscriber subscriber, void* parameter)
{
    MmsValue* values = GooseSubscriber_getDataSetValues(subscriber);

    LinkedList dataSetValues = LinkedList_create();
    LinkedList_add(dataSetValues, MmsValue_newIntegerFromInt32(MmsValue_toInt32(MmsValue_getElement(values, 0))));
	//printf("Value is: %d\n", MmsValue_toInt32(MmsValue_getElement(values, 0)));

    CommParameters gooseCommParameters;

    gooseCommParameters.appId = 0x0006;
    uint8_t macBuf[6];
    GooseSubscriber_getDstMac(subscriber,macBuf);
    gooseCommParameters.dstAddress[0] = macBuf[0];
    gooseCommParameters.dstAddress[1] = macBuf[1];
    gooseCommParameters.dstAddress[2] = macBuf[2];
    gooseCommParameters.dstAddress[3] = macBuf[3];
    gooseCommParameters.dstAddress[4] = macBuf[4];
    gooseCommParameters.dstAddress[5] = 0x06;
    gooseCommParameters.vlanId = GooseSubscriber_getVlanId(subscriber);
    gooseCommParameters.vlanPriority = GooseSubscriber_getVlanPrio(subscriber);

    GoosePublisher publisher = GoosePublisher_create(&gooseCommParameters, INTERFACE);

    if (publisher) {
        GoosePublisher_setGoCbRef(publisher, "subscriberCFG/LLN0$GO$NewGOOSEMessage");
	GoosePublisher_setGoID(publisher, "SEL_487E_1");
        GoosePublisher_setConfRev(publisher, GooseSubscriber_getConfRev(subscriber));
        GoosePublisher_setDataSetRef(publisher, "subscriberCFG/LLN0$timetransfer2");
        GoosePublisher_setTimeAllowedToLive(publisher, GooseSubscriber_getTimeAllowedToLive(subscriber));

	GoosePublisher_publish(publisher, dataSetValues);

	GoosePublisher_destroy(publisher);
	//printf("OK!\n");
    }
    //LinkedList_destroyDeep(dataSetValues, (LinkedListValueDeleteFunction)MmsValue_delete);

/*

    printf("  stNum: %u sqNum: %u\n", GooseSubscriber_getStNum(subscriber),
            GooseSubscriber_getSqNum(subscriber));
    printf("  timeToLive: %u\n", GooseSubscriber_getTimeAllowedToLive(subscriber));

    uint64_t timestamp = GooseSubscriber_getTimestamp(subscriber);

    printf("  timestamp: %u.%u\n", (uint32_t) (timestamp / 1000), (uint32_t) (timestamp % 1000));
    printf("  message is %s\n", GooseSubscriber_isValid(subscriber) ? "valid" : "INVALID");

    char buffer[1024];

    //MmsValue_printToBuffer(values, buffer, 1024);

    //bool buffer = MmsValue_getBoolean(values);

    printf("  allData: %i\n", MmsValue_getBoolean(MmsValue_getElement(values, 0)));
*/
}



int main(int argc, char **argv)
{
  struct sched_param param;
  int pid_num = 0;
  
  param.sched_priority = 90;
  sched_setscheduler(pid_num, SCHED_FIFO, &param);

  SVReceiver receiver = SVReceiver_create();
  GooseReceiver goReceiver = GooseReceiver_create();

  char *interface;
  int args = 1;
  bool goose;

  if (argc > 1)
  {
    interface = argv[args++];
    SVReceiver_setInterfaceId(receiver, interface);
    GooseReceiver_setInterfaceId(goReceiver, interface);
    fprintf(stdout, "Set interface id: %s\n", interface);
  }
  else
  {
    interface = INTERFACE;
    fprintf(stdout, "Using interface %s\n", interface);
    SVReceiver_setInterfaceId(receiver, interface);
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
    CommParameters gooseCommParameters;

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
 
    gooseCommParameters.appId = goAPPID;
    gooseCommParameters.dstAddress[0] = goMACAddress_int[0];
    gooseCommParameters.dstAddress[1] = goMACAddress_int[1];
    gooseCommParameters.dstAddress[2] = goMACAddress_int[2];
    gooseCommParameters.dstAddress[3] = goMACAddress_int[3];
    gooseCommParameters.dstAddress[4] = goMACAddress_int[4];
    gooseCommParameters.dstAddress[5] = goMACAddress_int[5];
    gooseCommParameters.vlanId = goVLANID;
    gooseCommParameters.vlanPriority = goVLANPRIO;

    publisher = GoosePublisher_create(&gooseCommParameters, INTERFACE);    
    if (publisher)
    {
      GoosePublisher_setGoCbRef(publisher, argv[args++]);    //"PROT_BARCFG/LLN0$GO$PROT_BAR"
      GoosePublisher_setConfRev(publisher, 4);               // Ver se precisa alterar futuramente
      GoosePublisher_setGoID(publisher, argv[args++]);       //"PROT_BAR"
      GoosePublisher_setDataSetRef(publisher, argv[args++]); //"PROT_BARCFG/LLN0$DATASET"
      GoosePublisher_setTimeAllowedToLive(publisher, 2000);  // Ver se precisa alterar futuramente
      GoosePublisher_setSimulation(publisher, false);     
    }

//    GooseSubscriber goSubscriber = GooseSubscriber_create("publisherCFG/LLN0$GO$NewGOOSEMessage", NULL);
//    uint8_t dstMac[6] = {0x01,0x0c,0xcd,0x01,0x00,0x03};
//    GooseSubscriber_setDstMac(goSubscriber, dstMac);
//    GooseSubscriber_setAppId(goSubscriber, 0x0003);

//    GooseSubscriber_setListener(goSubscriber, gooseListener, NULL);

//    GooseReceiver_addSubscriber(goReceiver, goSubscriber);

//    GooseReceiver_start(goReceiver);

  }
  else
  {
    goose = false;
  }
  // SV Create subscribers and thread
  for (int i = 3; i < svMUs; i++)
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

    uint64_t previousMillis = 0; // will store last time
    while (running)
    {
      uint64_t currentMillis = Hal_getTimeInMs();
      if ((currentMillis - previousMillis > 1000 || TRIP_a || TRIP_b || TRIP_c || TRIP_g))
      {
        // Save the last time
        previousMillis = currentMillis;
        GOOSEcount++;
        if (GOOSEcount > 10)
        {
          GOOSEcount = 0;
          //tripGoose = true;
          GoosePublisher_increaseStNum(publisher);
        }
        //else
          //tripGoose = false;
        if (goose)
        {
          GOOSE_send(publisher, TRIP_a, TRIP_b, TRIP_c, TRIP_g);
        }
      }
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
