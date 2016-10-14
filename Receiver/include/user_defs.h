/********************  (c) 2004 STMicroelectronics  **************************
*  Project   : any							     *
*  Filename  : user_defs.h						     *
*  Author    : Roberto Pieruci						     *
*                                                                            *
*  Compiler  :  Cosmic ANSI-C                                                *
*  CPU       :  any ST7 core                                                 *
*****************************  File Contents  ********************************
*									     *
*  General User Types definitions					     *
*									     *
**************************  Update Information  ******************************
*									     *
*  Ed. Date      Own Modification					     *
*  --- --------- ---  -----------------------------------------------------  *
*  001 Aug/16/04 RCP creation						     *
*									     *
*****************************************************************************/

/***************************** PUBLIC DECLARATIONS **************************/

#ifndef USER_DEFS
#define USER_DEFS

/* Generic Definitions */
#define FALSE           0
#define	TRUE		(!(FALSE))
#define NULL		0

/* Standard Macro Definitions */
#define Dim(x) (sizeof(x) / sizeof(x[0])) // Nbr of elements in array x[]
#define ABS(x) (x) > 0 ? (x) : -(x)	  // Absolute value of expression

/* Memory Access Definitions */
#define LOWORD(mem)	(mem&0xFFFF)	// for long vars
#define HIWORD(mem)	(mem>>16)	// for long vars
#define LOBYTE(mem)	(mem&0xFF)	// for int vars
#define HIBYTE(mem)	((mem&0xff00)>>8)	// for int vars


typedef unsigned char	letter;		// 1 byte
typedef unsigned char	uchar;
typedef   signed char	schar;
typedef unsigned short	ushort;		// 2 bytes
typedef   signed short	sshort;		// 2 bytes
typedef unsigned int	uint;		// depends on compiler 2 or 4 bytes
typedef unsigned long	ulong;		// 4 bytes

/* Memory Access Definitions */
#define ReadPointedValue(Pointer) *(Pointer)
#define Write_Address_Byte(Pointer,Value) *(Pointer)=Value
#define vWrite_Address_ByteAdd(Pointer,ByteAdd) *(Pointer)=*(ByteAdd)

/* New Type: "hilo":
unsigned short, accessed only as Byte High and Low
ex:  hilo Var;
use: Var.hi; Var.low;
*/                                                        
typedef struct	
	{
	uchar hi;
	uchar lo;
	} hilo;

/* New Type: "wordbyte":
unsigned short, but also accessed as Byte High and Low 
ex:  wordbyte Var;
use: Var.byte.hi; Var.byte.lo; Var.word;  
*/
typedef union
 	{
	ushort word;
	hilo byte;
	} wordbyte;
	       	
/* New Type: "flags":
placed into a char, accessed only as individual bits
ex:  flags Var;
use: Var.bit0; Var.bit4;
*/
typedef struct
	{
	uchar    bit0:1;
	uchar    bit1:1;                
	uchar    bit2:1;                 
	uchar    bit3:1;            
	uchar    bit4:1;
	uchar    bit5:1;
	uchar    bit6:1;
	uchar    bit7:1;
	} flags;
	
/* New Type: "char_bit":
unsigned char, accessed as individual bits as well as whole byte 
ex:  char_bit Var;
use: Var.bit.bit5; Var.byte; 
*/
typedef union
	{
	uchar	byte;
	flags	bit;
	} char_bit;

#endif
/******************************** END OF FILE *******************************/
