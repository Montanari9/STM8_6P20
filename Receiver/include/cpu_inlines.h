/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : any							     *
*  Filename  : cpu_inlines.h						     *
*  Author    : Roberto Pieruci						     *
*                                                                            *
*  Compiler  :  Cosmic ANSI-C                                                *
*  CPU       :  ST7FLITE2x						     *
*****************************  File Contents  ********************************
*									     *
*  General CPU Macros definitions					     *
*									     *
**************************  Update Information  ******************************
*									     *
*  Ed. Date      Own Modification					     *
*  --- --------- ---  -----------------------------------------------------  *
*  001 Aug/16/04 RCP creation						     *
*  002 Feb/15/05 RCP improved						     *
*****************************************************************************/

/***************************** PUBLIC DECLARATIONS **************************/

#ifndef CPU_INLINES
#define CPU_INLINES

/* Inline Assembler Instructions Definitions */
#define Nop()			_asm ("NOP\n")
#define Trap()			_asm ("TRAP\n")
#define	Wfi()			_asm ("WFI\n")
#define SaveY()			_asm ("push y")
#define RestoreY()		_asm ("pop  y")
#define SaveCC()		_asm ("push CC")
#define RestoreCC()		_asm ("pop  CC")

/* Inline Functions declarations for Cosmic C Compiler*/
#ifndef __PROCESSOR__
#define __PROCESSOR__	1
@inline char carry(void);
@inline char irq(void);
@inline char imask(void);
#endif

#endif
/******************************** END OF FILE *******************************/





