/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : 								     *
*  Filename  : rcontrol_rx.h						     *
*  Author    : Roberto Pieruci						     *
*                                                                            *
*  Compiler  : Cosmic ANSI-C						     *
*  CPU       : ST7FLITE							     *
*****************************  File Contents  ********************************
*									     *
*  Remote Control RF - Reception Routines definition 			     *
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
#ifdef	RCONTROL_RX	// Enter file name of the associated .c file here 
	#define EXT
	#define LOCAL
#else
	#define EXT extern
#endif

#ifdef LOCAL
  /*****************************************************************************
  *                 LOCAL (Variables, Constants & Defines)                     *
  *****************************************************************************/
  
  /****************** Application Remote Control Definition *******************/
  #define RxPin		PE3_IDR//PC0		// Reception Input
  #define T_CK		330000		// Clock pulse width
  #define T_HEADER	(24*T_CK)	// Header time = Pilot per + 1 clock
  
  // Time base for Remote Control Receiving Frame comes from 
  // Autoreload Timer OVF - PER_ATR_OVF)
	// Detection: Clock pulses from 6/10 T_CK to 2 T_CK
  #define NUM_CK_MAX		((T_CK*20/PER_ATR_OVF+5)/10)
  #define NUM_CK_MIN		((T_CK*6/PER_ATR_OVF+5)/10)
  #define NUM_HEADER_MAX	((T_HEADER*20/PER_ATR_OVF+5)/10)
  #define NUM_HEADER_MIN	((T_HEADER*6/PER_ATR_OVF+5)/10)
  #define NUM_PILOT_MIN		((23*T_CK*6/PER_ATR_OVF+5)/10)
  #define NUM_BIT_MAX		((3*T_CK*20/PER_ATR_OVF+5)/10)

	#if NUM_CK_MIN == 0
		#error T_CK IS TOO LOW COMPARED TO PER_ATR_OVF; ;error
	#endif
	#if NUM_HEADER_MIN < 24
		#error T_CK IS TOO LOW COMPARED TO PER_ATR_OVF; ;error
	#endif

  EXT enum
  {
    HEADER,		// Find Header 
    FRAME,		// Frame construction
    OVERPERIOD		// Width higher than max for each Enum part
  } RC_Cycle;
  
  EXT unsigned char CountCycle, StatusRx;
  EXT unsigned char RxIn, CountLow, CountPer, Period, Per_Max;
  #define		Per_Min			Period	//same variable
  #define		CountHigh		Period	//same variable

  /*****************************************************************************
  *                      LOCAL (Function Prototypes)                           *
  *****************************************************************************/
  
  /****************************************************************************/
#endif
#undef LOCAL

/*****************************************************************************
*                 GLOBAL (Variables, Constants & Defines)                    *
*****************************************************************************/
	
#define ANTICODE 0b10100000

#define TIME_8S	(4000000000/TIME_SCAN*2)// 8s, based on TIME_SCAN

// Time base for Learning sequencies comes from TIME_SCAN
#define TIME_OUT_RC		(400000000/TIME_SCAN)	// 400ms, based on TIME_SCAN
#define TIME_OUT_RC1	(60000000/TIME_SCAN)	// 60ms, based on TIME_SCAN
#define TIME_RC_FRAME_BLINK	(100000000/TIME_SCAN)	// 100ms, based on TIME_SCAN

#define RCONTROL_MEM_SIZE	4	// each Remote Control is 4-byte lenght
#define RCONTROL_PAGE_QTTY	64	// There are 63 entries for Rcontrols
//64 = 63 Remote Controls
//256 = 255 Remote Controls
//512 = 511 Remote Controls

#ifndef PADDRTYPE
  #if (RCONTROL_PAGE_QTTY > 128)
    typedef unsigned int	PageAddrtype;
    typedef signed int		sPageAddrtype;
  #else
    typedef unsigned char	PageAddrtype;
    typedef signed char		sPageAddrtype;
  #endif
  #define PADDRTYPE
#endif
 
EXT PageAddrtype @tiny RC_Address;	// Current Display Address
EXT PageAddrtype @tiny RCFrame_Address;	// Current Remote control Address
EXT _Bool RC_Frame_Incoming;
EXT _Bool RC_Frame_Valid;
EXT _Bool RC_Frame_Same;
EXT _Bool RC_Input_Ready;
EXT _Bool RC_Input_Changing;

typedef struct   
{
  unsigned char Anticode[1];       // precisa disto [1] para aceitar array; nao pode fazer tmp-1.
  union 
  {
    unsigned char Button;
    unsigned char Serial[3];
  } Data;
} RecFrame;

EXT RecFrame RCFrame_Input, RCFrame_Copy, RCFrame_Copy_Previous;

  
EXT unsigned char @tiny	SWTmp;
EXT char_bit @tiny RC_Keys, RC_Keys_Copy;
#define	RC_Key1	RC_Keys.bit.bit7
#define	RC_Key0	RC_Keys.bit.bit6
#define	RC_Key1_Copy	RC_Keys_Copy.bit.bit7	
#define	RC_Key0_Copy	RC_Keys_Copy.bit.bit6
EXT unsigned char @tiny RC_Timeout;

EXT union 
{
  unsigned char		Byte[RCONTROL_MEM_SIZE];		// Data and CSum
  flags						Status[RCONTROL_MEM_SIZE];
  unsigned char		SerialN[3];		// Serial Number and Status
  struct
  {
    unsigned char	dummy;	// first byte free
    PageAddrtype	Addr;	// char or int, page address
  } Page;
} @tiny Buffer;

#define Mem_RC_Used				Buffer.Status[0].bit7	// Status: Used area 1
#define Mem_RC_Blocked		Buffer.Status[0].bit6	// Status: Blocked 1		
#define Mem_RC_Key1				Buffer.Status[RCONTROL_MEM_SIZE-1].bit7  
#define Mem_RC_Key0				Buffer.Status[RCONTROL_MEM_SIZE-1].bit6  
#define Mem_RC_Keys				Buffer.Byte[RCONTROL_MEM_SIZE-1]  

/*****************************************************************************
*                       GLOBAL (Function Prototypes)                         *
*****************************************************************************/

/****************** Application Remote Control Definition *******************/
EXT void Init_RemoteControl (void);
EXT void Remove_RC_Info (void);
EXT void RC_Positioning (void);
EXT void GetRControlFrame (void);
EXT void EvaluateRemoteControlFrame (void);
EXT void ProgramRemoteControl(PageAddrtype Page);
EXT void BlockRemoteControl(PageAddrtype Page);
EXT PageAddrtype FindRControlInMem (PageAddrtype PageStart);
EXT PageAddrtype FindPageZeroed (PageAddrtype Page);
EXT void ClearRemoteControl(PageAddrtype Page);
EXT void EraseAllRemoteControls(void);
EXT void CheckRCConsistency (void); 

