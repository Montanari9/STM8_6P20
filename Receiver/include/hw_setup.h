/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : Xflash_RC_V0						     *
*  Filename  : hw_setup.h						     *
*  Author    : Roberto Pieruci						     *
*                                                                            *
*  Compiler  : Cosmic ANSI-C						     *
*  CPU       : ST7FLITE							     *
*****************************  File Contents  ********************************
*									     *
*  general setup definitions for the microcontroller 			     *
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
#ifdef	HW_SETUP	// Enter file name of the associated .c file here 
	#define EXT
	#define LOCAL
#else
	#define EXT extern
#endif



#ifdef LOCAL
/*****************************************************************************
*                 LOCAL (Variables, Constants & Defines)                     *
*****************************************************************************/

#define FCPU 16000000

/***********************TIM 1 DEFINES******************************************/
#define FPWM_TIM1 16000//(240000) //Hz
#define T_PWM_TIM1 ((FCPU/FPWM_TIM1)-1)
/***********************TIM 4 DEFINES******************************************/
#define FPWM_TIM4 1000 //Hz
#define PRESCALER 128
#define T_PWM_TIM4 (((FCPU/PRESCALER)/FPWM_TIM4)-1)


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

//#define Set_WatchDog() WDGCR = (char)WDOG_VAL;

EXT void Set_Ports(void);
EXT void Set_Timebase1(void);
EXT void Set_Autoreload_Timer(void);

