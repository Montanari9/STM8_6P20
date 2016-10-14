/********************  (c) 2006 STMicroelectronics  **************************
*  Project   : 							     *
*  Filename  : main.c							     *
*  Author    : 								     *
*                                                                            *
*  Compiler  :  Cosmic ANSI-C                                                *
*  CPU       :  ST7FLITE						     *
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
*****************************************************************************/

/*************************  General Include Files  **************************/

#include "user_defs.h"		// User definitions
#include "io7flite_select.h"	// CPU Selection
#include "cpu_inlines.h"	// ST7 specific definitions
/****************************************************************************/

/***********************  Application Include Files  ************************/
     
#include "hw_setup.h"
#include "routines.h"
#include "interrupt.h"
#include "rcontrol_rx.h"
#include "flash_eeprom.h"
#include "display.h"
#include "i2cm_drv.h"

/****************************************************************************/

/*******************************  Global Variables  *************************/
PageAddrtype pagetest;

/****************************************************************************/

void main(void)
{
  AutoCalibration();
  Clear_RAM();
  System_Init();
  Set_Ports();
  Init_Vars(); 
  Set_Timebase1();
  Set_Autoreload_Timer();
  I2Cm_Init();			// I2C peripheral initialization routine.*/
  //Set_WatchDog();
  Flash_Release();
  Init_RemoteControl();
  Enable_Interrupt();
  CheckRCConsistency();
  Blink_Nothing();

while(1)
  {
    Wait_Scan(); //Aguarda dar o tempo de 5 ms -scan
    //Set_WatchDog();	// after Scan, WDog timer is serviced 
    
    // Treat Sensors, switches, keys debounce
    Update_Display ();
    Treat_Sensor(&Key_Mode, Key_Mode_Pin, TIME_BOUNCE);
    Treat_Sensor(&Key_Selection, Key_Selection_Pin, TIME_BOUNCE);
    EvaluateRemoteControlFrame();
    Treat_Sensor(&RC_Frame, !RC_Frame_Incoming, 1);
    
    // Check if frame, blink DP0
    if (RC_Frame.Active)
      Display_DP[0] = 1; //1
    else
      Display_DP[0] = 0; //0
      
    Process_Mode();

    Treat_Relay();
  }
	
}

/******************************** END OF FILE *******************************/





