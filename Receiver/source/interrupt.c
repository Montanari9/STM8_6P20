/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : 								     *
*  Filename  : interrupt.c						     *
*  Author    : Roberto Pieruci						     *
*                                                                            *
*  Compiler  : Cosmic ANSI-C						     *
*  CPU       : ST7FLITE1B						     *
*****************************  File Contents  ********************************
*									     *
*  interrupt routines							     *
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

#include "hw_setup.h"
#define	INTERRUPT
#include "interrupt.h"
#undef INTERRUPT
#include "routines.h"
#include "rcontrol_rx.h"
#include "flash_eeprom.h"
#include "display.h"
/****************************************************************************/

@interrupt void @nostack @nosvf TimeBase1_Int(void)
/*****************************************************************************
	FUNCTION     : TimeBase1_Int ()
	DESCRIPTION  : Lite Time Timebase1 Overflow calls
	ARGUMENTS    : None
	RETURN VALUE : None
*****************************************************************************/
{
  LTCSR1;		// clear TB1F pending bit
  // Update ScanCont to Scan Basetime
  if (!--ScanCount)
  {
    ScanCount = NUM_SCAN;		// Scan time reached, reset
    if (!++Scan) 			// Informs external routines
      Scan--;
    Scan_Display ();
  }
	
}

@interrupt void Trap_Int(void)
/*****************************************************************************
	FUNCTION     : Trap_Int ()
	DESCRIPTION  : False Interrupt calls
	ARGUMENTS    : None
	RETURN VALUE : None
*****************************************************************************/
{
}

@interrupt void Void_Int(void)
/*****************************************************************************
	FUNCTION     : Void_Int ()
	DESCRIPTION  : False Interrupt calls
	ARGUMENTS    : None
	RETURN VALUE : None
*****************************************************************************/
{
}

@interrupt void @nostack ATR_Ovf_Int(void)  //@nosvf       
/*****************************************************************************
	FUNCTION     : ATR_Ovf_Int ()
	DESCRIPTION  : Autoreload Timer overflow interrupt service routine.
	ARGUMENTS    : None
	RETURN VALUE : None
*****************************************************************************/
{
  unsigned char @tiny temp;
  //SaveY();	//
  
  ATCSR;		// clear pending bit
  GetRControlFrame();
  
  //RestoreY();
}

 