/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : Xflash_RC_V0						     *
*  Filename  : timingsLit_setup.h					     *
*  Author    : Roberto Pieruci						     *
*                                                                            *
*  Compiler  :  Cosmic ANSI-C                                                *
*  CPU       :  ST7FLITE						     *
*****************************  File Contents  ********************************
*									     *
*  ST7FLITE SYSTEM CLOCK AND TIMERS SETUP				     *
*									     *
******************************  Description  *********************************
*                                                                            *
*  USER IS REQUESTED TO SELECT ALL OPTIONS BELLOW ACCORDINGLY.               *
*  As a result, USER will be able to use the following timing definitions:   *
*  - FCPU:       CPU Frequency in Hz                                         *
*  - PER_CPU:    CPU Clock Period in nanosecs                                *
*  - PER_LTIMER: Lite Timer Clock Period in nanosecs                         *
*  - PER_TB1:    Lite Timer Timebase1 Period in nanosecs                     *
*  - LTTB:       Lite Timer TB bit value to reach TB1                        *
*  - WDOG_VAL:    WatchDog Timer value for WDog window time period           *
*									     *
**************************  Update Information  ******************************
*									     *
*  Ed. Date      Own Modification					     *
*  --- --------- ---  -----------------------------------------------------  *
*  001 Aug/16/04 RCP creation						     *
*									     *
*****************************************************************************/

/****************************  Setup Description  ****************************

For this application, this is the timings setup:
- Oscillator Frequency: RCosc = 1MHz, Internal RC 1%, PLL x 8
- CPU Frequency: FCPU = 8MHz, SMS bit = 0 (NORMAL mode)
- Lite Timer TimeBase1: FLTIMER, TB bit = 0 (1ms IF FOSC = 8MHz)
- Lite Timer TimeBase2: not used
- AutoReload Timer counter: not used

*****************************************************************************/

/***************************** PUBLIC DECLARATIONS **************************/

#ifndef TIMINGS_SETUP
#define TIMINGS_SETUP

/*****************************************************************************
*									     *
*		PLEASE SELECT ALL OPTIONS BELOW ACCORDINGLY		     *
*									     *
*****************************************************************************/
 
/* USER DEFINITION: Input Oscillator Frequency SOURCE, selected in the 
   Option Bytes; please select ONE option line and comment all others:      */
//	#define	EXTERNAL_OSC		// External Frequency origin  
	#define	RC_OSC			// RC oscillator Frequency origin
//	#define	XTAL_OSC		// Xtal/ressonator frequency origin

/* USER DEFINITION: Input Oscillator Frequency VALUE, selected by USER 
   please enter the IN_FREQ_VAL frequency value in Hz                      */
	#define	IN_FREQ_VAL	1000000		// in Hz; please insert  
						// the Frequency value

/* USER DEFINITION: PLL clock multiplier selected in the Option Bytes;
   please select ONE option line, and comment all others	            */
//	#define	PLL	1		// if PLL off
//	#define	PLL	4		// if PLL x 4
	#define	PLL	8		// if PLL x 8

/* USER DEFINITION: Normal/Slow Mode selected by SMS bit of MCCSR;
   please select ONE option line, and comment all others		    */
	#define	NORMAL_MODE	1	// if FCPU = FOSC (SMS bit reset)
//	#define	SLOW_MODE	1	// if FCPU = FOSC / 32 (SMS bit set)

/* USER DEFINITION: TimeBase1 of LiteTimer Clock selected by TB bit of LTCSR;
   please select ONE option line, and comment all others 		    */
	#define	LTTB	0	// if TimeBase1 based on FLTIMER (TB reset)
//	#define	LTTB	1	// if TimeBase1 based on FLTIMER/2 (TB set)

/* USER DEFINITION: AutoReload Timer Clock selected by CK1..0 bits of ATCSR;
   please select ONE option line, and comment all others 		    */
//	#define	ATCLK	0	// if ART Clock OFF (CK1,0 = 00)
//	#define	ATCLK	1	// if ART Freq = FLTIMER (CK1,0 = 01)
	#define	ATCLK	2	// if ART Freq = FCPU (CK1,0 = 10)
//	#define	ATCLK	3	// if ART Freq = F32MHz (CK1,0 = 11) NOT
				// AVAILABLE in LITE3x and LiteSx/0x families

/* USER DEFINITION: Overflow PWM Period of AutoReload Timer selected by ATR register 
   value; please enter the PWM period in NANOSECONDS			    */
	#define	PER_ATR_OVF	62500	// OVF Period in nanosecs

/* USER DEFINITION: WatchDog Period selected by USER 
   For Lite1x/2x/3x it can be variable; For LiteSx/0x it is fixed and
   equals to the Lite Timer Period times 2
   please enter the PER_WDOG period in MILLISSECONDS For Lite1x/2x/3x       */
	#define	PER_WDOG 	20	// WatchDog period in milliseconds

/*****************************************************************************	
*			SYSTEM CLOCK check and calcs			     *
*****************************************************************************/

/*********************** Check Oscillator definition ************************/ 

#ifdef EXTERNAL_OSC
	#ifdef RC_OSC
		#error BOTH EXTERNAL_OSC AND RC_OSC SELECTED; error
	#endif
	#ifdef XTAL_OSC
		#error BOTH EXTERNAL_OSC AND XTAL_OSC SELECTED; error
	#endif
#endif	
#ifdef RC_OSC
	#ifdef XTAL_OSC
		#error BOTH RC_OSC AND XTAL_OSC SELECTED; error
	#endif
#endif	
#ifndef EXTERNAL_OSC
	#ifndef RC_OSC
		#ifndef XTAL_OSC
			#error NONE OSCILLATION SOURCE DEFINED; error
		#endif
	#endif
#endif
		
#ifdef RC_OSC
	#define FOSC	(IN_FREQ_VAL * PLL)	// in Hz
#else	
	#define	FOSC	(IN_FREQ_VAL * PLL)/2	// in Hz
#endif

#if	FOSC > 8000000			// in Hz
	#error FOSC GREATER THAN 8MHz  ;error
#endif
#if	PLL == 4
	#if	FOSC != 4000000		// in Hz
		#error PLL SETUP IMCOMPATIBLE WITH INPUT FREQ; ;error
	#endif
#endif
#if	PLL == 8
	#if	FOSC != 8000000		// in Hz
		#error PLL SETUP IMCOMPATIBLE WITH INPUT FREQ; ;error
	#endif
#endif
	
#define PER_OSC		(1000000000 / FOSC)	// in nanosecs
#define	FOSC_BY32	(FOSC / 32)		// in Hz
#define PER_OSC_BY32	(3200000000 / FOSC *10)	// in nanosecs
#define	FLTIMER		(FOSC_BY32 / 250)	// in Hz
#define	PER_LTIMER	(PER_OSC_BY32 * 250)	// in nanosecs

/********************** Check Normal/Slow Mode definition *******************/ 

#ifdef NORMAL_MODE
	#ifdef SLOW_MODE
		#error BOTH NORMAL_MODE AND SLOW_MODE SELECTED ;error
	#else
		#define	FCPU		FOSC		// in Hz
		#define	PER_CPU		PER_OSC		// in nanosecs
	#endif
#else
	#ifdef SLOW_MODE
		#define	FCPU	FOSC_BY32		// in Hz
		#define	PER_CPU	PER_OSC_BY32		// in nanosecs
	#else
		#error NO NORMAL_MODE NOR SLOW_MODE DEFINED ;error
	#endif
#endif

/************************ Check Lite Timer definition ***********************/ 

#ifndef	LTTB
	#error LTTB NOT DEFINED FOR LITE TIMER TIME BASE; error
#else
	#if	LTTB == 0 
		#define	PER_TB1		PER_LTIMER		// in nanosecs
	#else
		#if	LTTB == 1
			#define	PER_TB1	(PER_LTIMER*2)		// in nanosecs
		#else
			#error LTTB BAD DEFINITION FOR LITE TIMER; error
		#endif
	#endif
#endif
#define	PERIOD_LT_TBASE	(1000000 / FLT_TBASE)		// in uSec

/********************** Check AutoReload Timer definition *******************/ 

#ifdef ATCLK
	#if 	ATCLK == 3
		#define	FATR_CLK	(FCPU * 4)		// in Hz
		#if	FATR_CLK != 32000000
			#error FCPU MUST be 8MHz; please review Settings
		#endif
		#define	PER_ATR_CLK	(PER_CPU / 4) 		// in nSec
	#endif	
	#if 	ATCLK == 2
		#define	FATR_CLK	FCPU			// in Hz
		#define	PER_ATR_CLK	PER_CPU 		// in nSec
	#endif	
	#if	ATCLK == 1
		#define	FATR_CLK	FLTIMER			// in Hz
		#define	PER_ATR_CLK	PER_LTIMER 		// in nSec
	#endif	
	#if	ATCLK == 0
		#define	FATR_CLK	0			// in Hz
		#define	PER_ATR_CLK	0xffffffff		// in nSec
	#endif	
#else
	#error ATCLK AUTORELOAD TIMER CLOCK SOURCE NOT DEFINED ;error
#endif

#ifndef	PER_ATR_OVF
	#error PLEASE DEFINE THE PER_ATR_OVF PERIOD OF ATR; error
#endif
#if	(((PER_ATR_OVF*2/PER_ATR_CLK)+1)/2) > 4096
	#error PER_ATR_OVF PERIOD TOO HIGH
#endif
#if	(((PER_ATR_OVF*2/PER_ATR_CLK)+1)/2) < 2
	#error PER_ATR_OVF PERIOD TOO LOW
#endif
#define ATR_VAL 	(4096-(((PER_ATR_OVF*2/PER_ATR_CLK)+1)/2))

/************************ Check WatchDog period *****************************/ 
#ifndef IO7FLIT0	// for Lite1x/2x/3x
	#if	((((PER_WDOG * FCPU/8000)-1000)/2000) + 0xC0) > 255 
		#error PER_WDOG value too high; user error
	#endif
	#define WDOG_VAL	((((PER_WDOG * FCPU/8000)-1000)/2000) + 0xC0)
#endif

/****************************************************************************/ 


#endif
/******************************** END OF FILE *******************************/
