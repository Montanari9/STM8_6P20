/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : 								     *
*  Filename  : routines.h						     *
*  Author    : Roberto Pieruci						     *
*                                                                            *
*  Compiler  : Cosmic ANSI-C						     *
*  CPU       : ST7FLITE1Bx						     *
*****************************  File Contents  ********************************
*									     *
*  general definitions for the microcontroller	 			     *
*									     *
******************************  Description  *********************************
*                                                                            *
*                                                                            *
*                                                                            *
**************************  Update Information  ******************************
*									     *
*  Ed. Date      Own Modification					     *
*  --- --------- ---  -----------------------------------------------------  *
*  001 Aug/16/04 RCP creation						     *
*  002 Feb/15/05 RCP improved						     *
*****************************************************************************/

#ifdef	EXT
  #undef EXT
#endif
#ifdef	LOCAL
  #undef LOCAL
#endif
#ifdef	ROUTINES	// Enter file name of the associated .c file here 
  #define EXT
  #define LOCAL
#else
  #define EXT extern
#endif

#ifdef LOCAL
/*****************************************************************************
*                 LOCAL (Variables, Constants & Defines)                     *
*****************************************************************************/



/*****************************************************************************
*                      LOCAL (Function Prototypes)                           *
*****************************************************************************/

/****************************************************************************/
#endif
#undef LOCAL

/*****************************************************************************
*                 GLOBAL (Variables, Constants & Defines)                    *
*****************************************************************************/
  
/********************  Application Timing Definition ************************/
#define	TIME_SCAN	5000000			// 5ms in nanosecs
#define	NUM_SCAN	(TIME_SCAN/PER_TB1)	// 5ms, based on PER_TB1
#define TIME_500MS 	(500000000/TIME_SCAN)	// 0,5S based on TIME_SCAN
#define TIME_1S		(1000000000/TIME_SCAN)	// 1s, based on TIME_SCAN
#define TIME_3S		(3000000000/TIME_SCAN)	// 3s, based on TIME_SCAN
#define TIME_BOUNCE	(100000000/TIME_SCAN)	// 100msec, based on TIME_SCAN
#define TIME_10S	(2000000000/TIME_SCAN*5)	// 10s, based on TIME_SCAN


EXT uchar @tiny	volatile ScanCount;
EXT uchar @tiny	volatile Scan;
//EXT uchar @tiny	volatile Count_500;

/********************  Application Sensors Definition ***********************/

#define Relay	PA4_ODR//PB2
EXT uchar @tiny Relay_Time;

typedef struct		//estrutura para definir chaves 
{
  unsigned char Count;
  wordbyte  Count_3s;	
  _Bool Active;			// chave ativa em nível - 0
  _Bool Edge;			// borda de acionamento - descida
  _Bool Active_3s;		// chave ativa, por 3+ seg
} @tiny SensorType;		// tiny é pg zero e Nome da variável

EXT SensorType Switch1;		// Definiu variável para a tecla
#define Switch1Pin	PG0_IDR//PB3	// Switch1 - definiu como sendo PB3
EXT SensorType Switch2;
#define Switch2Pin	PG1_IDR//PB4     // Switch2 - definiu como sendo PB4

EXT SensorType RC_Frame;	// RC Frame incoming - active or edge

#define Key_Selection		Switch1
#define Key_Selection_Pin	Switch1Pin
#define Key_Mode 		Switch2
#define Key_Mode_Pin		Switch2Pin
EXT char @tiny Mode;
EXT char @tiny Selection;
EXT unsigned char Time_Inc_1;
EXT unsigned int Mode_Time;
EXT unsigned int Error_Time;

EXT enum
{
  MODE_INITIAL,
  MODE_PEC,
  MODE_PSE,
  MODE_BLO,
  MODE_LIB,
  MODE_AEC,
  MODE_ACO,
  MODE_LOC
} ModeTypes;


/*****************************************************************************
*                       GLOBAL (Function Prototypes)                         *
*****************************************************************************/

EXT void Wait_Scan (void);
EXT void Init_Vars (void);
EXT void Treat_Sensor (SensorType * sensor, _Bool Pin, uchar Time_Bounce);
EXT void Process_Mode (void);
EXT void Put_Message_on_Display (unsigned char);
EXT void Put_Address_on_Display (unsigned int);
EXT void Check_Selection_and_Digit (void);
EXT void Select_Enter (void);
EXT void Treat_Display_Page_Address (void);
#define Set_Relay() Relay_Time = TIME_500MS
EXT void Treat_Relay (void);
EXT void Set_Error (void);
EXT void Overpass_Display (unsigned int NumberHex);

