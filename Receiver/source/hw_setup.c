/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : Xflash_RC_V0						     *
*  Filename  : hw_setup.c						     *
*  Author    : BFM						     *
*                                                                            *
*  Compiler  : Cosmic ANSI-C						     *
*  CPU       : STM9S							     *
*****************************  File Contents  ********************************
*									     *
*  general setup routines for the microcontroller			     *
*									     *
******************************  Description  *********************************
*                                                                            *
*                                                                            *
*                                                                            *
*****************************************************************************/

/*************************  General Include Files  **************************/
#include "stm8s_conf.h"
/****************************************************************************/

/***********************  Application Include Files  ************************/     

#define	HW_SETUP
#include "hw_setup.h"
#undef HW_SETUP
#include "routines.h"
/****************************************************************************/

void Set_Ports(void)
{
  GPIO_Init(GPIOD,GPIO_PIN_0,GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GPIOE,GPIO_PIN_2,GPIO_MODE_OUT_PP_LOW_FAST);	
}	

void Set_Timebase1(void)
{
	TIM4_TimeBaseInit(TIM4_PRESCALER_128,T_PWM_TIM4);
	//Enable TIM4 interrupt
  TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
  //Enable TIM4 
  TIM4_Cmd(ENABLE);
}


void Set_Autoreload_Timer(void)
{
  TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP,T_PWM_TIM1,0);
	//TIM1 Interrupt enable
  TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);
	//TIM1 counter enable 
  TIM1_Cmd(ENABLE);

}


