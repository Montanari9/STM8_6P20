/********************  (c) 2006 STMicroelectronics  **************************
*  Project   : 
*  Filename  : rcontrol_rx.c
*  Author    : BFM
*         
*  Compiler  : Cosmic ANSI-C
*  CPU       : STM8S	
*****************************  File Contents  ********************************
*									     *
*  Remote Control RF - Reception Routines	      			     *
*									     *
*****************************************************************************/

/*************************  General Include Files  **************************/
#include "stm8s_conf.h"
#include "user_defs.h"		// User definitions
#include "timingsLit_setup.h"	// System Clock Setup

/****************************************************************************/

/***********************  Application Include Files  ************************/     

#include "routines.h"
#include "hw_setup.h"
#define	RCONTROL_RX
#include "rcontrol_rx.h"
#undef RCONTROL_RX
#include "interrupt.h"


RecFrame RCFrame_temp;
/****************************************************************************/

void EvaluateRemoteControlFrame (void)
/*****************************************************************************
	FUNCTION     : EvaluateRemoteControlFrame ()
	DESCRIPTION  : This routine manipulates the Remote Control Frame 
		captured by Interrup ATR. Then, if the frame is valid, a copy 
		of RC Frame is available with respective flags. It also finds
		a Frame inside Memory.
		This routine also features previous Serial number detection 
		to avoid excessive find/decription for each reception.
	ARGUMENTS    : None
	RETURN VALUE : None  
*****************************************************************************/
{
  signed char	j;
	
  
  // suppose Frame not valid
  RC_Frame_Valid =  FALSE;
  // Check if timeout of reception
  if (RC_Timeout && !--RC_Timeout)	// timeout
  {
    // clear Previous vars of RC
    RC_Frame_Incoming = FALSE;
    //RC_Keys.byte = 0;
  }
  // Chech if Frame is ready
  if (!RC_Input_Ready)	// RControl Frame NOT Ready
    return;	

  // RControl Frame Ready
  disableInterrupts();		// avoid changes in RCFrame_Input
  if (RC_Input_Changing)	// can not use this frame	
  {
    enableInterrupts();
    return;
  }

  // RControl Frame Ready
  // Copy including Anticode flags
  RCFrame_temp = RCFrame_Input;	// Frame 3 bytes + Anticode
  RC_Input_Ready = FALSE;	// indicates Frame copied
  enableInterrupts();

  // Check Anticode
  if (RCFrame_temp.Anticode[0] != ANTICODE)   // Frame NOT valid
    return;

  // Frame is Valid; belongs to the system
  RC_Frame_Valid =  TRUE;
  RC_Frame_Incoming = TRUE;
	if (Mode == MODE_INITIAL)		//timeout longo para filtro
		RC_Timeout = TIME_OUT_RC;	// set new frame overflow time
	else	//timeout rapido para mover display
		RC_Timeout = TIME_OUT_RC1;	// set new frame overflow time
  RCFrame_Copy = RCFrame_temp;
  
  // Uses new Frame
  RC_Keys.byte = (char)(RCFrame_Copy.Data.Button & 0b11000000);	// switches copied
  RCFrame_Copy.Data.Serial[0] &= 0b00111111;		// pure serial number
  // Check if the same previous CR
  RC_Frame_Same = TRUE;	// suppose same previous frame
  for (j = 2; j >= 0; j--)
  {
    if (RCFrame_Copy.Data.Serial[j] != RCFrame_Copy_Previous.Data.Serial[j])
    {
      RC_Frame_Same = FALSE;
      RCFrame_Copy_Previous.Data.Serial[j] = RCFrame_Copy.Data.Serial[j];//update
    }
  }
  // Find inside Memory
  if (!RC_Frame_Same)
	{
		RC_Keys_Copy = RC_Keys;		// initiate with pressed keys
	}
	else
	{
		RC_Keys_Copy.byte |= RC_Keys.byte;		// accumulate pressed keys
	}
}

void GetRControlFrame (void)
/*****************************************************************************
	FUNCTION     : GetRControlFrame ()
	DESCRIPTION  : This routine captures/filters Remote Control Frames
		from the Input pin. It is called from Interrupt ART overflow. 
		Interrupt time 18.5usecs max
	ARGUMENTS    : None
	RETURN VALUE : None
*****************************************************************************/
{
  u8 register tmp;
  // Capture Rx Input bit into RxIn byte
  if (!RxPin)				// Put bit into Carry
    CountLow++;				// If 0, increases Zero counter
  _asm("rlc a", RxIn);			// Save as bit0; previous is bit1 now
  RxIn = (char)_asm("and a,#3");	// Mask previous and current Rx bits

  if (RxIn != 0b10)			// check if falling edge
  {	// falling edge not found
    CountPer++;				// increases period counter
    // Overflow checks
    if ( (CountPer > Per_Max) )	// error
		{
			StatusRx = OVERPERIOD;
		}
  } 
  else
  {	// falling edge found!
    // **************** Start Switch **************** //
		switch (StatusRx)
    {
      case HEADER:
      {
				// Check Header timing min
				if ( (CountLow < NUM_PILOT_MIN) || (CountPer < NUM_HEADER_MIN) )	//error
				{
					//RC_Positioning();
					goto reset_RC;
					break;
				}
				CountHigh = (char)(CountPer - CountLow);
				if ( (CountHigh < NUM_CK_MIN) || (CountHigh > NUM_CK_MAX) )		//error
				{
					//RC_Positioning();
					goto reset_RC;
					break;
				}
				// Found Header, CountPer is 24x the CK, or 8x the Period
				CountPer = (char)(CountPer >> 1);	// 4*Period
				Period = (char)((char)(CountPer+2)>>2);	// Period, rounded
				CountPer = (char)((char)(CountPer+4)>>3);	// Period/2, rounded
				Per_Max = (char)(Period+CountPer);	// Period+1/2 to check ovf 
				Per_Min = (char)(Period-CountPer);	// Period-1/2 to check udf 
				if (Per_Min < 3)
					Per_Min = 3;
				CountCycle = 32;	// it's needed 24 (Frame) 
													// + 4 (Anticode)
													// + 4 to be discarded 
				RCFrame_Input.Anticode[0] = 0;
				RC_Input_Changing = TRUE;
				StatusRx = FRAME;
      }
      break;
	
      case FRAME:
      {
				// Check Frame period timing min
				//if (CountPer < (char)(Period-1))		// error
				if (CountPer < Per_Min)		// error
				{
					//RC_Positioning();
					goto reset_RC;
					break;
				}
				else			// bit OK to be measured
				{
					//Teste de frame-------------------------/
					CountCycle--;
					
					tmp = (char)(CountCycle>>3);    //tmp is index, nao pode ser tmp-1
					RCFrame_Input.Anticode[tmp] >>= 1;                                   //shift right
					if ((char)(CountPer-0) < (char)(CountLow*2))
					SetBit(RCFrame_Input.Anticode[tmp],7);
					
					
					
					CountLow =  (char)(CountLow << 1);

					
					if (CountCycle==4)	// frame completed
					{
						RC_Input_Ready = TRUE;
						goto reset_RC;
						//RC_Positioning();
					}
				}
      }
      break;
			
			case OVERPERIOD:
      default:
      {
				reset_RC:
				//RC_Positioning();
				RC_Input_Changing = FALSE;
				CountCycle = 1;
				StatusRx = HEADER;
				Per_Max = NUM_HEADER_MAX;
				break;
			}
      break;
			
    }
	// **************** END Switch **************** //
    CountPer = 1;	// zeroed and incremented
    CountLow = 0;	// zeroed; compensates the 0 when an edge is detected
  }
}


void Remove_RC_Info (void)
/*****************************************************************************
	FUNCTION     : Remove_RC_Info ()
	DESCRIPTION  : This routine initiates Remote Control Routines vars. 
	ARGUMENTS    : None
	RETURN VALUE : None
*****************************************************************************/
{
  signed char j;
  for (j = 3; j >= 0; j--)	//aqui 0-3, era 0-2
  {
    RCFrame_Copy.Data.Serial[j] = 0;
    RCFrame_Copy_Previous.Data.Serial[j] = 0;
  }
  RCFrame_Address = 0;
}

void Init_RemoteControl (void)
/*****************************************************************************
	FUNCTION     : Init_RemoteControl ()
	DESCRIPTION  : This routine initiates Remote Control Routines vars. 
	ARGUMENTS    : None
	RETURN VALUE : None
*****************************************************************************/
{
  //Init_RC();	// for RC Frame capture 
  RC_Input_Ready = FALSE;
  RC_Keys.byte = 0;
  RC_Timeout = 1;
  RC_Positioning();
//  RCFrame_Copy_Previous.Data.Serial = 0;// already in Clear_Mem
  RCFrame_Address = 0;
}

void RC_Positioning (void)
/*****************************************************************************
	FUNCTION     : RC_Positioning ()
	DESCRIPTION  : This routine prepares RC vars for a new frame. 
	ARGUMENTS    : None
	RETURN VALUE : None
*****************************************************************************/
{
  RC_Input_Changing = FALSE;
  CountCycle = 1;
  StatusRx = HEADER;
  Per_Max = NUM_HEADER_MAX;
}
