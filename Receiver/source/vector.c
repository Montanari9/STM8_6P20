/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : Xflash_RC_V0						     *
*  Filename  : vector.c							     *
*  Author    : Roberto Pieruci						     *
*                                                                            *
*  Compiler  : Cosmic ANSI-C						     *
*  CPU       : ST7FLITE2x						     *
*****************************  File Contents  ********************************
*									     *
*  Interrupt Vector Table						     *
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

/*************************  General Include Files  **************************/

#include "user_defs.h"		// User definitions
#include "io7flite_select.h"	// CPU Selection
#include "cpu_inlines.h"	// ST7 specific definitions
/****************************************************************************/

/***********************  Application Include Files  ************************/     

#include "interrupt.h"
/****************************************************************************/

#ifdef ST72F26x	// ST72F26x
void (* const _vectab[])() = {
	NULL,			// 0xffe0,e1: unused
	NULL,			// 0xffe2,e3: unused
	Trap_Int,		// 0xffe4,e5: I2C
	Trap_Int,		// 0xffe6,e7: SCI
	NULL,			// 0xffe8,e9: unused
	NULL,			// 0xffea,eb: unused
	Trap_Int,		// 0xffec,ed: AVD
	Trap_Int,		// 0xffee,ef: TimerB Periph
	TimeBase1_Int,		// 0xfff0,f1: MCC timebase
	Trap_Int,		// 0xfff2,f3: TimerA Periph
	Trap_Int,		// 0xfff4,f5: SPI
	NULL,			// 0xfff6,f7: unused 
	Trap_Int,		// 0xfff8,f9: EI1
	Trap_Int,		// 0xfffa,fb: EI0
	Trap_Int,		// 0xfffc,fd: TRAP
	_stext,			// 0xfffe,ff: RESET; keep as is
	};

#else		// ST7FLITESx/0x/1x/2x/3x
void (* const _vectab[])() = {
	Trap_Int,		// 0xffe0,e1: ATR OVF2 (Lite3) or unused (LiteS/0/1/2)
	Void_Int,		// 0xffe2,e3: SPI
	TimeBase1_Int,		// 0xffe4,e5: LT RTC1
	Void_Int,		// 0xffe6,e7: LT IC
	ATR_Ovf_Int,		// 0xffe8,e9: ATR OVF
	Void_Int,		// 0xffea,eb: ATR OC/IC (OC only  LiteS/0)
	Void_Int,		// 0xffec,ed: AVD
	Trap_Int,		// 0xffee,ef: SCI (Lite3) or unused (LiteS/0/1/2)
	Trap_Int,		// 0xfff0,f1: LT RTC2 or unused (LiteS/0)
	Void_Int,		// 0xfff2,f3: EI3
	Void_Int,		// 0xfff4,f5: EI2
	Void_Int,		// 0xfff6,f7: EI1
	Void_Int,		// 0xfff8,f9: EI0
	Trap_Int,		// 0xfffa,fb: AWU or unused (LiteS/0)
	Trap_Int,		// 0xfffc,fd: TRAP
	_stext,			// 0xfffe,ff: RESET; keep as is
	};
#endif