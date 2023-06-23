/* * sv_subscriber_example.c * * Example program for Sampled Values (SV) subscriber * */

// SV Includes
#include "hal_thread.h"
#include <signal.h>
#include <stdio.h>
#include "sv_subscriber.h"
#include <math.h>

#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include <sys/time.h>

#include <sched.h>

// GOOSE Includes
#include "mms_value.h"
#include "goose_publisher.h"

// Config
#define INTERFACE "eth0"

#define SMPCNT 80
#define MAXMUS 10

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
  int32_t IA[MAXMUS][SMPCNT];
  int32_t IB[MAXMUS][SMPCNT];
  int32_t IC[MAXMUS][SMPCNT];
  int32_t IN[MAXMUS][SMPCNT];
  uint32_t smpCnt[MAXMUS];
  uint8_t smpSynch[MAXMUS];
  double delta[3];
} MUs;
MUs mus;

// GOOSE Counter (every 10s)
int32_t GOOSEcount = 0;

// Variable for keyboard stopping
static bool running = true;

// GOOSE trigger
bool tripGoose = false;

// Create publisher so it can be used in the thread
GoosePublisher publisher = NULL;

// RMS calc
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

void GOOSE_send(GoosePublisher publisher, bool state)
{
  static bool oldState = false;

  // GOOSE DataSet (in order of creation)
  LinkedList dataSetValues = LinkedList_create();
  LinkedList_add(dataSetValues, MmsValue_newBoolean(false));
  LinkedList_add(dataSetValues, MmsValue_newBoolean(false));
  LinkedList_add(dataSetValues, MmsValue_newBoolean(state));
  LinkedList_add(dataSetValues, MmsValue_newBoolean(false));
  LinkedList_add(dataSetValues, MmsValue_newBoolean(false));
  LinkedList_add(dataSetValues, MmsValue_newBoolean(false));

  // Create Quality Bit
  MmsValue *quality = MmsValue_newBitString(13);
  MmsValue_setBitStringFromInteger(quality, QUALITY_VALIDITY_GOOD); // QUALITY_VALIDITY_GOOD | QUALITY_VALIDITY_INVALID | QUALITY_TEST
  // LinkedList_add(dataSetValues, quality);

  // Auto increase State Number
  if (state != oldState)
  {
    oldState = state;
    GoosePublisher_increaseStNum(publisher);
  }

  // Send burst
  if (state)
  {
    printf("\x1b[41m===========================================================================\x1b[0m\n");
    for (int i = 0; i < 6; i++)
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
  for (size_t i = 0; i < svMUs; i++)
  {
    // Check which device called
    if (strcmp(SVSubscriber_ASDU_getSvId(asdu), svID[i]) == 0)
    {
      mus.smpCnt[i] = (SVSubscriber_ASDU_getSmpCnt(asdu) % SMPCNT);
      mus.smpSynch[i] = SVSubscriber_ASDU_getSmpSynch(asdu);

      mus.IA[i][mus.smpCnt[i]] = SVSubscriber_ASDU_getINT32(asdu, 0);
      mus.IB[i][mus.smpCnt[i]] = SVSubscriber_ASDU_getINT32(asdu, 8);
      mus.IC[i][mus.smpCnt[i]] = SVSubscriber_ASDU_getINT32(asdu, 16);
      // mus.IN[i][mus.smpCnt[i]] = SVSubscriber_ASDU_getINT32(asdu, 24);

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
        printf("%5s - > IA: %10.2f A | IB: %10.2f A | IC: %10.2f A | Synch: %d | Last TimeStamp: %lu\n", svID[i], rmsValue(mus.IA[i], SMPCNT) / 1000.0, rmsValue(mus.IB[i], SMPCNT) / 1000.0, rmsValue(mus.IC[i], SMPCNT) / 1000.0, mus.smpSynch[i], SVSubscriber_ASDU_getTimestamp(asdu, 0));
	if (tripGoose)
          fprintf(stdout, "\x1b[41m Diff - > IA: %10.2f   | IB: %10.2f   | IC: %10.2f\x1b[0m\n", mus.delta[0], mus.delta[1], mus.delta[2]);
        else
          fprintf(stdout, "\x1b[32m Diff - > IA: %10.2f   | IB: %10.2f   | IC: %10.2f\x1b[0m\n", mus.delta[0], mus.delta[1], mus.delta[2]);
      }
    }
  }
}

int main(int argc, char **argv)
{
  struct sched_param param;
  int pid_num = 0;

  param.sched_priority = 80;
  sched_setscheduler(pid_num, SCHED_FIFO, &param);

  SVReceiver receiver = SVReceiver_create();

  char *interface;
  interface = INTERFACE;
  int args = 1;
  bool goose;

  if (argc > 1)
  {
    SVReceiver_setInterfaceId(receiver, argv[args++]);
    fprintf(stdout, "Set interface id: %s\n", argv[1]);
  }
  else
  {
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
    printf("svAPPID #%d: %x\n", i, svAPPID[i]);
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

  for (int i = 0; i < mus; i++)
    printf("MAC #%d: %s\n", i, vector_end[i]);

  int svMACAddress_int[6 * mus];
  for (int i = 0; i < mus; i++)
  {
    split(vector_end[i], '-', &arr);
    for (int j = 0; j < 6; j++)
    {
      svMACAddress_int[i + j] = (int)strtol(arr[j], NULL, 16);
      printf("Address #%d: %02x\n", j, svMACAddress_int[i + j]);
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
    printf("svVLANID #%d: %d\n", i, svVLANID[i]);
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
    printf("svVLANPRIO #%d: %d\n", i, svVLANPRIO[i]);
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
    fprintf(stdout, "svID: %s\n", svID[i]);
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

    publisher = GoosePublisher_create(&gooseCommParameters, interface);
    if (publisher)
    {
      GoosePublisher_setGoCbRef(publisher, argv[args++]);    //"PROT_BARCFG/LLN0$GO$PROT_BAR"
      GoosePublisher_setConfRev(publisher, 4);               // Ver se precisa alterar futuramente
      GoosePublisher_setGoID(publisher, argv[args++]);       //"PROT_BAR"
      GoosePublisher_setDataSetRef(publisher, argv[args++]); //"PROT_BARCFG/LLN0$DATASET"
      GoosePublisher_setTimeAllowedToLive(publisher, 2000);  // Ver se precisa alterar futuramente
      GoosePublisher_setSimulation(publisher, false);
    }
  }
  else
  {
    goose = false;
  }
  // SV Create subscribers and thread
  for (int i = 0; i < svMUs; i++)
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
      if ((currentMillis - previousMillis > 1000 || tripGoose))
      {
        // Save the last time
        previousMillis = currentMillis;
        GOOSEcount++;
        if (GOOSEcount > 10)
        {
          GOOSEcount = 0;
          tripGoose = true;
          // GoosePublisher_increaseStNum(publisher);
        }
        else
          tripGoose = false;
        if (goose)
        {
          GOOSE_send(publisher, tripGoose);
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
