/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : Xflash_RC_V0						     *
*  Filename  : interrupt.h						     *
*  Author    : Roberto Pieruci						     *
*                                                                            *
*  Compiler  : Cosmic ANSI-C						     *
*  CPU       : ST7FLITE2x						     *
*****************************  File Contents  ********************************
*									     *
*  interrupt definitions						     *
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
#ifdef	INTERRUPT	// Enter file name of the associated .c file here 
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


/*****************************************************************************
*                       GLOBAL (Function Prototypes)                         *
*****************************************************************************/

EXT @interrupt void _stext(void);		// keep it; Cosmic definition
EXT @interrupt void TimeBase1_Int(void);	// LT RTC1
EXT @interrupt void @nostack ATR_Ovf_Int(void);	// ART OVF
EXT @interrupt void Trap_Int(void);		// TRAP
EXT @interrupt void Void_Int(void);		// Void
