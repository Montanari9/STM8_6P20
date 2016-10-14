/********************  (c) 2010 STMicroelectronics  **************************
*  Project   : 							     *
*  Filename  : main.c							     *
*  Author    : 								     *
*                                                                            *
*  Compiler  :  Cosmic ANSI-C                                                *
*  CPU       :  STM8S105					     *
*****************************  File Contents  ********************************
*									     *
*  'main' routine for application					     *
*									     *
******************************  Description  *********************************
*                                                                            *
*                                                                            *
*                                                                            *
**************************  Update Information  ******************************
*									     *
*  Ed. Date      Own Modification					     *
*  --- --------- ---  -----------------------------------------------------  *
*  001 Out/15/05 RCP creation						     *
*  002 Nov/30/06 RCP improved						     *
*  003 Aug/02/10 BFM migrated						     *
*****************************************************************************/

/*************************  General Include Files  **************************/

#include "stm8s_conf.h"	// CPU Selection
#include "user_defs.h"		// User definitions
#include "cpu_inlines.h"	// ST7 specific definitions
/****************************************************************************/

/***********************  Application Include Files  ************************/
     
#include "hw_setup.h"
#include "routines.h"
#include "interrupt.h"
#include "rcontrol_rx.h"
#include "flash_eeprom.h"
#include "display.h"
unsigned char @near * PointerFlash;
/****************************************************************************/

/*******************************  Global Variables  *************************/
//PageAddrtype pagetest;
/****************************************************************************/

void main(void)
{
	int j=0;
	//set up internal clock at 16Mhz
	CLK->CKDIVR = 0b00000000;
	Set_Ports();//migrada
  Init_Vars();//na 
  Set_Timebase1();//migrada
  Set_Autoreload_Timer();//migrada
  Init_RemoteControl();//na
  enableInterrupts();//migrada
while(1)
  {		
    EvaluateRemoteControlFrame();
    Treat_Sensor(&RC_Frame, !RC_Frame_Incoming, 1);
		if (!Key_Selection.Active && RC_Frame.Edge)	// any RC pressed
		{
			RC_Address = RCFrame_Address;	// from frame evaluation
			Mode_Time = TIME_10S;
		}
	}

}

/******************************** END OF FILE *******************************/





