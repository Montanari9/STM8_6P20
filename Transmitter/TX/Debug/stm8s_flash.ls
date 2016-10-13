   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
  77                     ; 81 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  77                     ; 82 {
  79                     .text:	section	.text,new
  80  0000               _FLASH_Unlock:
  84                     ; 84     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  86                     ; 87     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
  88  0000 a300fd        	cpw	x,#253
  89  0003 260a          	jrne	L73
  90                     ; 89         FLASH->PUKR = FLASH_RASS_KEY1;
  92  0005 35565062      	mov	20578,#86
  93                     ; 90         FLASH->PUKR = FLASH_RASS_KEY2;
  95  0009 35ae5062      	mov	20578,#174
  97  000d 2008          	jra	L14
  98  000f               L73:
  99                     ; 95         FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 101  000f 35ae5064      	mov	20580,#174
 102                     ; 96         FLASH->DUKR = FLASH_RASS_KEY1;
 104  0013 35565064      	mov	20580,#86
 105  0017               L14:
 106                     ; 98 }
 109  0017 81            	ret
 144                     ; 106 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 144                     ; 107 {
 145                     .text:	section	.text,new
 146  0000               _FLASH_Lock:
 150                     ; 109     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 152                     ; 112   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 154  0000 9f            	ld	a,xl
 155  0001 c4505f        	and	a,20575
 156  0004 c7505f        	ld	20575,a
 157                     ; 113 }
 160  0007 81            	ret
 183                     ; 120 void FLASH_DeInit(void)
 183                     ; 121 {
 184                     .text:	section	.text,new
 185  0000               _FLASH_DeInit:
 189                     ; 122     FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 191  0000 725f505a      	clr	20570
 192                     ; 123     FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 194  0004 725f505b      	clr	20571
 195                     ; 124     FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 197  0008 35ff505c      	mov	20572,#255
 198                     ; 125     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 200  000c 7217505f      	bres	20575,#3
 201                     ; 126     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 203  0010 7213505f      	bres	20575,#1
 204                     ; 127     (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 206  0014 c6505f        	ld	a,20575
 207                     ; 128 }
 210  0017 81            	ret
 265                     ; 136 void FLASH_ITConfig(FunctionalState NewState)
 265                     ; 137 {
 266                     .text:	section	.text,new
 267  0000               _FLASH_ITConfig:
 271                     ; 139   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 273                     ; 141     if (NewState != DISABLE)
 275  0000 a30000        	cpw	x,#0
 276  0003 2706          	jreq	L711
 277                     ; 143         FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 279  0005 7212505a      	bset	20570,#1
 281  0009 2004          	jra	L121
 282  000b               L711:
 283                     ; 147         FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 285  000b 7213505a      	bres	20570,#1
 286  000f               L121:
 287                     ; 149 }
 290  000f 81            	ret
 324                     ; 158 void FLASH_EraseByte(uint32_t Address)
 324                     ; 159 {
 325                     .text:	section	.text,new
 326  0000               _FLASH_EraseByte:
 328       00000000      OFST:	set	0
 331                     ; 161     assert_param(IS_FLASH_ADDRESS_OK(Address));
 333                     ; 164    *(PointerAttr uint8_t*) (uint16_t)Address = FLASH_CLEAR_BYTE; 
 335  0000 1e05          	ldw	x,(OFST+5,sp)
 336  0002 7f            	clr	(x)
 337                     ; 166 }
 340  0003 81            	ret
 383                     ; 176 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 383                     ; 177 {
 384                     .text:	section	.text,new
 385  0000               _FLASH_ProgramByte:
 387       00000000      OFST:	set	0
 390                     ; 179     assert_param(IS_FLASH_ADDRESS_OK(Address));
 392                     ; 180     *(PointerAttr uint8_t*) (uint16_t)Address = Data;
 394  0000 7b07          	ld	a,(OFST+7,sp)
 395  0002 1e05          	ldw	x,(OFST+5,sp)
 396  0004 f7            	ld	(x),a
 397                     ; 181 }
 400  0005 81            	ret
 434                     ; 190 uint8_t FLASH_ReadByte(uint32_t Address)
 434                     ; 191 {
 435                     .text:	section	.text,new
 436  0000               _FLASH_ReadByte:
 438       00000000      OFST:	set	0
 441                     ; 193     assert_param(IS_FLASH_ADDRESS_OK(Address));
 443                     ; 196     return(*(PointerAttr uint8_t *) (uint16_t)Address); 
 445  0000 1e05          	ldw	x,(OFST+5,sp)
 446  0002 f6            	ld	a,(x)
 449  0003 81            	ret
 492                     ; 207 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 492                     ; 208 {
 493                     .text:	section	.text,new
 494  0000               _FLASH_ProgramWord:
 496       00000000      OFST:	set	0
 499                     ; 210     assert_param(IS_FLASH_ADDRESS_OK(Address));
 501                     ; 213     FLASH->CR2 |= FLASH_CR2_WPRG;
 503  0000 721c505b      	bset	20571,#6
 504                     ; 214     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 506  0004 721d505c      	bres	20572,#6
 507                     ; 217     *((PointerAttr uint8_t*)(uint16_t)Address)       = *((uint8_t*)(&Data));
 509  0008 7b07          	ld	a,(OFST+7,sp)
 510  000a 1e05          	ldw	x,(OFST+5,sp)
 511  000c f7            	ld	(x),a
 512                     ; 219     *(((PointerAttr uint8_t*)(uint16_t)Address) + 1) = *((uint8_t*)(&Data)+1); 
 514  000d 7b08          	ld	a,(OFST+8,sp)
 515  000f 1e05          	ldw	x,(OFST+5,sp)
 516  0011 e701          	ld	(1,x),a
 517                     ; 221     *(((PointerAttr uint8_t*)(uint16_t)Address) + 2) = *((uint8_t*)(&Data)+2); 
 519  0013 7b09          	ld	a,(OFST+9,sp)
 520  0015 1e05          	ldw	x,(OFST+5,sp)
 521  0017 e702          	ld	(2,x),a
 522                     ; 223     *(((PointerAttr uint8_t*)(uint16_t)Address) + 3) = *((uint8_t*)(&Data)+3); 
 524  0019 7b0a          	ld	a,(OFST+10,sp)
 525  001b 1e05          	ldw	x,(OFST+5,sp)
 526  001d e703          	ld	(3,x),a
 527                     ; 224 }
 530  001f 81            	ret
 575                     ; 232 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 575                     ; 233 {
 576                     .text:	section	.text,new
 577  0000               _FLASH_ProgramOptionByte:
 579  0000 89            	pushw	x
 580       00000000      OFST:	set	0
 583                     ; 235     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 585                     ; 238     FLASH->CR2 |= FLASH_CR2_OPT;
 587  0001 721e505b      	bset	20571,#7
 588                     ; 239     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 590  0005 721f505c      	bres	20572,#7
 591                     ; 242     if (Address == 0x4800)
 593  0009 a34800        	cpw	x,#18432
 594  000c 2607          	jrne	L542
 595                     ; 245        *((NEAR uint8_t*)Address) = Data;
 597  000e 7b05          	ld	a,(OFST+5,sp)
 598  0010 1e01          	ldw	x,(OFST+1,sp)
 599  0012 f7            	ld	(x),a
 601  0013 200c          	jra	L742
 602  0015               L542:
 603                     ; 250        *((NEAR uint8_t*)Address) = Data;
 605  0015 7b05          	ld	a,(OFST+5,sp)
 606  0017 1e01          	ldw	x,(OFST+1,sp)
 607  0019 f7            	ld	(x),a
 608                     ; 251        *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 610  001a 7b05          	ld	a,(OFST+5,sp)
 611  001c 43            	cpl	a
 612  001d 1e01          	ldw	x,(OFST+1,sp)
 613  001f e701          	ld	(1,x),a
 614  0021               L742:
 615                     ; 253     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 617  0021 ae00fd        	ldw	x,#253
 618  0024 cd0000        	call	_FLASH_WaitForLastOperation
 620                     ; 256     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 622  0027 721f505b      	bres	20571,#7
 623                     ; 257     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 625  002b 721e505c      	bset	20572,#7
 626                     ; 258 }
 629  002f 85            	popw	x
 630  0030 81            	ret
 666                     ; 265 void FLASH_EraseOptionByte(uint16_t Address)
 666                     ; 266 {
 667                     .text:	section	.text,new
 668  0000               _FLASH_EraseOptionByte:
 670  0000 89            	pushw	x
 671       00000000      OFST:	set	0
 674                     ; 268     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 676                     ; 271     FLASH->CR2 |= FLASH_CR2_OPT;
 678  0001 721e505b      	bset	20571,#7
 679                     ; 272     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 681  0005 721f505c      	bres	20572,#7
 682                     ; 275      if (Address == 0x4800)
 684  0009 a34800        	cpw	x,#18432
 685  000c 2603          	jrne	L762
 686                     ; 278        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 688  000e 7f            	clr	(x)
 690  000f 2009          	jra	L172
 691  0011               L762:
 692                     ; 283        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 694  0011 1e01          	ldw	x,(OFST+1,sp)
 695  0013 7f            	clr	(x)
 696                     ; 284        *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 698  0014 1e01          	ldw	x,(OFST+1,sp)
 699  0016 a6ff          	ld	a,#255
 700  0018 e701          	ld	(1,x),a
 701  001a               L172:
 702                     ; 286     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 704  001a ae00fd        	ldw	x,#253
 705  001d cd0000        	call	_FLASH_WaitForLastOperation
 707                     ; 289     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 709  0020 721f505b      	bres	20571,#7
 710                     ; 290     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 712  0024 721e505c      	bset	20572,#7
 713                     ; 291 }
 716  0028 85            	popw	x
 717  0029 81            	ret
 780                     ; 297 uint16_t FLASH_ReadOptionByte(uint16_t Address)
 780                     ; 298 {
 781                     .text:	section	.text,new
 782  0000               _FLASH_ReadOptionByte:
 784  0000 5204          	subw	sp,#4
 785       00000004      OFST:	set	4
 788                     ; 299     uint8_t value_optbyte, value_optbyte_complement = 0;
 790                     ; 300     uint16_t res_value = 0;
 792                     ; 303     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 794                     ; 306     value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
 796  0002 f6            	ld	a,(x)
 797  0003 6b02          	ld	(OFST-2,sp),a
 799                     ; 307     value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
 801  0005 e601          	ld	a,(1,x)
 802  0007 6b01          	ld	(OFST-3,sp),a
 804                     ; 310     if (Address == 0x4800)	 
 806  0009 a34800        	cpw	x,#18432
 807  000c 2608          	jrne	L523
 808                     ; 312         res_value =	 value_optbyte;
 810  000e 7b02          	ld	a,(OFST-2,sp)
 811  0010 5f            	clrw	x
 812  0011 97            	ld	xl,a
 813  0012 1f03          	ldw	(OFST-1,sp),x
 816  0014 2023          	jra	L723
 817  0016               L523:
 818                     ; 316         if (value_optbyte == (uint8_t)(~value_optbyte_complement))
 820  0016 7b01          	ld	a,(OFST-3,sp)
 821  0018 43            	cpl	a
 822  0019 1102          	cp	a,(OFST-2,sp)
 823  001b 2617          	jrne	L133
 824                     ; 318             res_value = (uint16_t)((uint16_t)value_optbyte << 8);
 826  001d 7b02          	ld	a,(OFST-2,sp)
 827  001f 5f            	clrw	x
 828  0020 97            	ld	xl,a
 829  0021 4f            	clr	a
 830  0022 02            	rlwa	x,a
 831  0023 1f03          	ldw	(OFST-1,sp),x
 833                     ; 319             res_value = res_value | (uint16_t)value_optbyte_complement;
 835  0025 7b01          	ld	a,(OFST-3,sp)
 836  0027 5f            	clrw	x
 837  0028 97            	ld	xl,a
 838  0029 01            	rrwa	x,a
 839  002a 1a04          	or	a,(OFST+0,sp)
 840  002c 01            	rrwa	x,a
 841  002d 1a03          	or	a,(OFST-1,sp)
 842  002f 01            	rrwa	x,a
 843  0030 1f03          	ldw	(OFST-1,sp),x
 846  0032 2005          	jra	L723
 847  0034               L133:
 848                     ; 323             res_value = FLASH_OPTIONBYTE_ERROR;
 850  0034 ae5555        	ldw	x,#21845
 851  0037 1f03          	ldw	(OFST-1,sp),x
 853  0039               L723:
 854                     ; 326     return(res_value);
 856  0039 1e03          	ldw	x,(OFST-1,sp)
 859  003b 5b04          	addw	sp,#4
 860  003d 81            	ret
 934                     ; 335 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
 934                     ; 336 {
 935                     .text:	section	.text,new
 936  0000               _FLASH_SetLowPowerMode:
 940                     ; 338     assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
 942                     ; 341     FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
 944  0000 c6505a        	ld	a,20570
 945  0003 a4f3          	and	a,#243
 946  0005 c7505a        	ld	20570,a
 947                     ; 344     FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
 949  0008 9f            	ld	a,xl
 950  0009 ca505a        	or	a,20570
 951  000c c7505a        	ld	20570,a
 952                     ; 345 }
 955  000f 81            	ret
1013                     ; 353 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1013                     ; 354 {
1014                     .text:	section	.text,new
1015  0000               _FLASH_SetProgrammingTime:
1019                     ; 356     assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1021                     ; 358     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1023  0000 7211505a      	bres	20570,#0
1024                     ; 359     FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1026  0004 9f            	ld	a,xl
1027  0005 ca505a        	or	a,20570
1028  0008 c7505a        	ld	20570,a
1029                     ; 360 }
1032  000b 81            	ret
1057                     ; 367 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1057                     ; 368 {
1058                     .text:	section	.text,new
1059  0000               _FLASH_GetLowPowerMode:
1063                     ; 369     return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1065  0000 c6505a        	ld	a,20570
1066  0003 5f            	clrw	x
1067  0004 a40c          	and	a,#12
1068  0006 5f            	clrw	x
1069  0007 02            	rlwa	x,a
1072  0008 81            	ret
1097                     ; 377 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1097                     ; 378 {
1098                     .text:	section	.text,new
1099  0000               _FLASH_GetProgrammingTime:
1103                     ; 379     return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1105  0000 c6505a        	ld	a,20570
1106  0003 5f            	clrw	x
1107  0004 a401          	and	a,#1
1108  0006 5f            	clrw	x
1109  0007 02            	rlwa	x,a
1112  0008 81            	ret
1146                     ; 387 uint32_t FLASH_GetBootSize(void)
1146                     ; 388 {
1147                     .text:	section	.text,new
1148  0000               _FLASH_GetBootSize:
1150  0000 5204          	subw	sp,#4
1151       00000004      OFST:	set	4
1154                     ; 389     uint32_t temp = 0;
1156                     ; 392     temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1158  0002 c6505d        	ld	a,20573
1159  0005 5f            	clrw	x
1160  0006 97            	ld	xl,a
1161  0007 90ae0200      	ldw	y,#512
1162  000b cd0000        	call	c_umul
1164  000e 96            	ldw	x,sp
1165  000f 1c0001        	addw	x,#OFST-3
1166  0012 cd0000        	call	c_rtol
1169                     ; 395     if (FLASH->FPR == 0xFF)
1171  0015 c6505d        	ld	a,20573
1172  0018 a1ff          	cp	a,#255
1173  001a 2611          	jrne	L354
1174                     ; 397         temp += 512;
1176  001c ae0200        	ldw	x,#512
1177  001f bf02          	ldw	c_lreg+2,x
1178  0021 ae0000        	ldw	x,#0
1179  0024 bf00          	ldw	c_lreg,x
1180  0026 96            	ldw	x,sp
1181  0027 1c0001        	addw	x,#OFST-3
1182  002a cd0000        	call	c_lgadd
1185  002d               L354:
1186                     ; 401     return(temp);
1188  002d 96            	ldw	x,sp
1189  002e 1c0001        	addw	x,#OFST-3
1190  0031 cd0000        	call	c_ltor
1194  0034 5b04          	addw	sp,#4
1195  0036 81            	ret
1297                     ; 412 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1297                     ; 413 {
1298                     .text:	section	.text,new
1299  0000               _FLASH_GetFlagStatus:
1301  0000 89            	pushw	x
1302       00000002      OFST:	set	2
1305                     ; 414     FlagStatus status = RESET;
1307                     ; 416     assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1309                     ; 419     if ((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1311  0001 9f            	ld	a,xl
1312  0002 c4505f        	and	a,20575
1313  0005 2707          	jreq	L325
1314                     ; 421         status = SET; /* FLASH_FLAG is set */
1316  0007 ae0001        	ldw	x,#1
1317  000a 1f01          	ldw	(OFST-1,sp),x
1320  000c 2003          	jra	L525
1321  000e               L325:
1322                     ; 425         status = RESET; /* FLASH_FLAG is reset*/
1324  000e 5f            	clrw	x
1325  000f 1f01          	ldw	(OFST-1,sp),x
1327  0011               L525:
1328                     ; 429     return status;
1330  0011 1e01          	ldw	x,(OFST-1,sp)
1333  0013 5b02          	addw	sp,#2
1334  0015 81            	ret
1419                     ; 531 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1419                     ; 532 {
1420                     .text:	section	.text,new
1421  0000               _FLASH_WaitForLastOperation:
1423  0000 5205          	subw	sp,#5
1424       00000005      OFST:	set	5
1427                     ; 533     uint8_t flagstatus = 0x00;
1429  0002 0f05          	clr	(OFST+0,sp)
1431                     ; 534     uint32_t timeout = OPERATION_TIMEOUT;
1433  0004 aeffff        	ldw	x,#65535
1434  0007 1f03          	ldw	(OFST-2,sp),x
1435  0009 ae000f        	ldw	x,#15
1436  000c 1f01          	ldw	(OFST-4,sp),x
1439  000e 2010          	jra	L375
1440  0010               L765:
1441                     ; 560         flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1443  0010 c6505f        	ld	a,20575
1444  0013 a405          	and	a,#5
1445  0015 6b05          	ld	(OFST+0,sp),a
1447                     ; 561         timeout--;
1449  0017 96            	ldw	x,sp
1450  0018 1c0001        	addw	x,#OFST-4
1451  001b a601          	ld	a,#1
1452  001d cd0000        	call	c_lgsbc
1455  0020               L375:
1456                     ; 558     while ((flagstatus == 0x00) && (timeout != 0x00))
1458  0020 0d05          	tnz	(OFST+0,sp)
1459  0022 2609          	jrne	L775
1461  0024 96            	ldw	x,sp
1462  0025 1c0001        	addw	x,#OFST-4
1463  0028 cd0000        	call	c_lzmp
1465  002b 26e3          	jrne	L765
1466  002d               L775:
1467                     ; 566     if (timeout == 0x00 )
1469  002d 96            	ldw	x,sp
1470  002e 1c0001        	addw	x,#OFST-4
1471  0031 cd0000        	call	c_lzmp
1473  0034 2604          	jrne	L106
1474                     ; 568         flagstatus = FLASH_STATUS_TIMEOUT;
1476  0036 a602          	ld	a,#2
1477  0038 6b05          	ld	(OFST+0,sp),a
1479  003a               L106:
1480                     ; 571     return((FLASH_Status_TypeDef)flagstatus);
1482  003a 7b05          	ld	a,(OFST+0,sp)
1483  003c 5f            	clrw	x
1484  003d 97            	ld	xl,a
1487  003e 5b05          	addw	sp,#5
1488  0040 81            	ret
1551                     ; 581 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1551                     ; 582 {
1552                     .text:	section	.text,new
1553  0000               _FLASH_EraseBlock:
1555  0000 89            	pushw	x
1556  0001 5206          	subw	sp,#6
1557       00000006      OFST:	set	6
1560                     ; 583   uint32_t startaddress = 0;
1562                     ; 593   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1564                     ; 594   if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1566  0003 1e0b          	ldw	x,(OFST+5,sp)
1567  0005 a300fd        	cpw	x,#253
1568  0008 260c          	jrne	L536
1569                     ; 596       assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1571                     ; 597       startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1573  000a ae8000        	ldw	x,#32768
1574  000d 1f05          	ldw	(OFST-1,sp),x
1575  000f ae0000        	ldw	x,#0
1576  0012 1f03          	ldw	(OFST-3,sp),x
1579  0014 200a          	jra	L736
1580  0016               L536:
1581                     ; 601       assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1583                     ; 602       startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1585  0016 ae4000        	ldw	x,#16384
1586  0019 1f05          	ldw	(OFST-1,sp),x
1587  001b ae0000        	ldw	x,#0
1588  001e 1f03          	ldw	(OFST-3,sp),x
1590  0020               L736:
1591                     ; 610     pwFlash = (PointerAttr uint32_t *)(uint16_t)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1593  0020 1e07          	ldw	x,(OFST+1,sp)
1594  0022 a640          	ld	a,#64
1595  0024 cd0000        	call	c_cmulx
1597  0027 96            	ldw	x,sp
1598  0028 1c0003        	addw	x,#OFST-3
1599  002b cd0000        	call	c_ladd
1601  002e be02          	ldw	x,c_lreg+2
1602  0030 1f01          	ldw	(OFST-5,sp),x
1604                     ; 614     FLASH->CR2 |= FLASH_CR2_ERASE;
1606  0032 721a505b      	bset	20571,#5
1607                     ; 615     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1609  0036 721b505c      	bres	20572,#5
1610                     ; 619     *pwFlash = (uint32_t)0;
1612  003a 1e01          	ldw	x,(OFST-5,sp)
1613  003c a600          	ld	a,#0
1614  003e e703          	ld	(3,x),a
1615  0040 a600          	ld	a,#0
1616  0042 e702          	ld	(2,x),a
1617  0044 a600          	ld	a,#0
1618  0046 e701          	ld	(1,x),a
1619  0048 a600          	ld	a,#0
1620  004a f7            	ld	(x),a
1621                     ; 627 }
1624  004b 5b08          	addw	sp,#8
1625  004d 81            	ret
1729                     ; 638 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
1729                     ; 639                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
1729                     ; 640 {
1730                     .text:	section	.text,new
1731  0000               _FLASH_ProgramBlock:
1733  0000 89            	pushw	x
1734  0001 5206          	subw	sp,#6
1735       00000006      OFST:	set	6
1738                     ; 641     uint16_t Count = 0;
1740                     ; 642     uint32_t startaddress = 0;
1742                     ; 645     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1744                     ; 646     assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
1746                     ; 647     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1748  0003 1e0b          	ldw	x,(OFST+5,sp)
1749  0005 a300fd        	cpw	x,#253
1750  0008 260c          	jrne	L317
1751                     ; 649         assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1753                     ; 650         startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1755  000a ae8000        	ldw	x,#32768
1756  000d 1f03          	ldw	(OFST-3,sp),x
1757  000f ae0000        	ldw	x,#0
1758  0012 1f01          	ldw	(OFST-5,sp),x
1761  0014 200a          	jra	L517
1762  0016               L317:
1763                     ; 654         assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1765                     ; 655         startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1767  0016 ae4000        	ldw	x,#16384
1768  0019 1f03          	ldw	(OFST-3,sp),x
1769  001b ae0000        	ldw	x,#0
1770  001e 1f01          	ldw	(OFST-5,sp),x
1772  0020               L517:
1773                     ; 659     startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
1775  0020 1e07          	ldw	x,(OFST+1,sp)
1776  0022 a640          	ld	a,#64
1777  0024 cd0000        	call	c_cmulx
1779  0027 96            	ldw	x,sp
1780  0028 1c0001        	addw	x,#OFST-5
1781  002b cd0000        	call	c_lgadd
1784                     ; 662     if (FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
1786  002e 1e0d          	ldw	x,(OFST+7,sp)
1787  0030 260a          	jrne	L717
1788                     ; 665         FLASH->CR2 |= FLASH_CR2_PRG;
1790  0032 7210505b      	bset	20571,#0
1791                     ; 666         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
1793  0036 7211505c      	bres	20572,#0
1795  003a 2008          	jra	L127
1796  003c               L717:
1797                     ; 671         FLASH->CR2 |= FLASH_CR2_FPRG;
1799  003c 7218505b      	bset	20571,#4
1800                     ; 672         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
1802  0040 7219505c      	bres	20572,#4
1803  0044               L127:
1804                     ; 676     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1806  0044 5f            	clrw	x
1807  0045 1f05          	ldw	(OFST-1,sp),x
1809  0047               L327:
1810                     ; 682   *((PointerAttr uint8_t*) (uint16_t)startaddress + Count) = ((uint8_t)(Buffer[Count]));
1812  0047 1e0f          	ldw	x,(OFST+9,sp)
1813  0049 72fb05        	addw	x,(OFST-1,sp)
1814  004c f6            	ld	a,(x)
1815  004d 1e03          	ldw	x,(OFST-3,sp)
1816  004f 72fb05        	addw	x,(OFST-1,sp)
1817  0052 f7            	ld	(x),a
1818                     ; 676     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1820  0053 1e05          	ldw	x,(OFST-1,sp)
1821  0055 1c0001        	addw	x,#1
1822  0058 1f05          	ldw	(OFST-1,sp),x
1826  005a 1e05          	ldw	x,(OFST-1,sp)
1827  005c a30040        	cpw	x,#64
1828  005f 25e6          	jrult	L327
1829                     ; 685 }
1832  0061 5b08          	addw	sp,#8
1833  0063 81            	ret
1846                     	xdef	_FLASH_WaitForLastOperation
1847                     	xdef	_FLASH_ProgramBlock
1848                     	xdef	_FLASH_EraseBlock
1849                     	xdef	_FLASH_GetFlagStatus
1850                     	xdef	_FLASH_GetBootSize
1851                     	xdef	_FLASH_GetProgrammingTime
1852                     	xdef	_FLASH_GetLowPowerMode
1853                     	xdef	_FLASH_SetProgrammingTime
1854                     	xdef	_FLASH_SetLowPowerMode
1855                     	xdef	_FLASH_EraseOptionByte
1856                     	xdef	_FLASH_ProgramOptionByte
1857                     	xdef	_FLASH_ReadOptionByte
1858                     	xdef	_FLASH_ProgramWord
1859                     	xdef	_FLASH_ReadByte
1860                     	xdef	_FLASH_ProgramByte
1861                     	xdef	_FLASH_EraseByte
1862                     	xdef	_FLASH_ITConfig
1863                     	xdef	_FLASH_DeInit
1864                     	xdef	_FLASH_Lock
1865                     	xdef	_FLASH_Unlock
1866                     	xref.b	c_lreg
1867                     	xref.b	c_x
1868                     	xref.b	c_y
1887                     	xref	c_ladd
1888                     	xref	c_cmulx
1889                     	xref	c_lzmp
1890                     	xref	c_lgsbc
1891                     	xref	c_ltor
1892                     	xref	c_lgadd
1893                     	xref	c_rtol
1894                     	xref	c_umul
1895                     	end
