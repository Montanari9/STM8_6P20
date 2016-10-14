/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : 								     *
*  Filename  : moveable.h						     *
*  Author    : Roberto Pieruci						     *
*                                                                            *
*  Compiler  : Cosmic ANSI-C						     *
*  CPU       : ST7FLITE							     *
*****************************  File Contents  ********************************
*									     *
*  IAP Flash Routines Definitionsin the Moveable segment to IAP program IAP  *
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
#ifdef	MOVEABLE	// Enter file name of the associated .c file here 
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

#if FLASH_EE == 1
  EXT void ProgramFlashBlock (unsigned char @near *FlashAddr,	// to 
			      unsigned char @tiny *RamAddr);	// from
/*
EXT void ProgramFlashBlock (unsigned char @near *FlashAdd,	// to 
			    unsigned char @near *RamAdd,	// from
			    unsigned char RamSize);		// byte qtty
*/
#endif
