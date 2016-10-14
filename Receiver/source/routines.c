/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : Xflash_RC_V0						     *
*  Filename  : routines.c						     *
*  Author    : Roberto Pieruci						     *
*                                                                            *
*  Compiler  : Cosmic ANSI-C						     *
*  CPU       : ST7FLITE1Bx						     *
*****************************  File Contents  ********************************
*									     *
*  general routines for the microcontroller      			     *
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
*  003 Jan/09/07 to avoid previous keys to be saved in PEC

*****************************************************************************/

/*************************  General Include Files  **************************/
#include "stm8s_conf.h"
#include "user_defs.h"		// User definitions
#include "timingsLit_setup.h"	// System Clock Setup
/****************************************************************************/

/***********************  Application Include Files  ************************/     

#include "hw_setup.h"
#define	ROUTINES
#include "routines.h"
#undef ROUTINES
#include "interrupt.h"
#include "rcontrol_rx.h"


/****************************************************************************/

void Wait_Scan (void)
/*****************************************************************************
	FUNCTION     : Wait_Scan ()
	DESCRIPTION  : Wait while not interrupt, and not Scan Time
		- Scan occurs each TIME_SCAN, based on Lite Timer Timebase1
		- Uses WFI to power saving
		- Triggered by any timer interruption 
	ARGUMENTS    : None
	RETURN VALUE : None
*****************************************************************************/
{
  while	(!Scan)		// still wait Scan Time
  {
    //Wfi();				// wait any int
  }
  Scan--;					// Scan time reached, getout
}

void Init_Vars (void)
/*****************************************************************************
	FUNCTION     : Init_Var ()
	DESCRIPTION  : Initialization of variables
	ARGUMENTS    : None
	RETURN VALUE : None
*****************************************************************************/
{
  ScanCount = NUM_SCAN;
  Switch2.Count = TIME_BOUNCE;
  Switch1.Count = TIME_BOUNCE;
  Mode = MODE_INITIAL;
  Selection = 0;
  RC_Address = 0;
}

void Treat_Sensor (SensorType * sensor, _Bool Pin, uchar Time_Bounce)
/*****************************************************************************
	FUNCTION     : Treat_Sensor (unsigned char Pin, SensorType * sensor)
	DESCRIPTION  : Reading of Keys, sensors, 
	ARGUMENTS    : Sensor(type) sensor: counter and flags
		       _Bool Pin: input HW
	RETURN VALUE : None
        
        Input:	Var:		Meaning:
		sensor.Edge	(Negative Edge on input after Bounce)
		sensor.Active	(Level 0 on input after Bounce)
		Pin		Input active LOW
		Note: if the Input pin is Active HIGH, negate this pin when
		calling this routine. Ex: Treat_Sensor (&Key, !PA0);

*****************************************************************************/
{
  (*sensor).Edge = FALSE;
  if ((*sensor).Active != Pin)	// same status
  {
    (*sensor).Count = Time_Bounce;
  }
  else			// different status
  {
    if (--(*sensor).Count == 0)
    {
      if ((*sensor).Active)
      {
	(*sensor).Active = FALSE;
      }
      else
      {
	(*sensor).Active = TRUE;
	(*sensor).Edge = TRUE;
      }			
      (*sensor).Count = Time_Bounce;
    }
  }
  if ((*sensor).Edge)
  {
    (*sensor).Count_3s.byte.lo = (TIME_3S&0x00ff);
    (*sensor).Count_3s.byte.hi = (TIME_3S&0xff00)>>8;
  }
  if ((*sensor).Active)
  {	// Decreases timer
    if (!--(*sensor).Count_3s.word)
    {
      (*sensor).Active_3s = TRUE;
    }
  }
  else
    (*sensor).Active_3s = FALSE;
}

