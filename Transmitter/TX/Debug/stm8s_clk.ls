   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
  17                     .const:	section	.text
  18  0000               _HSIDivFactor:
  19  0000 01            	dc.b	1
  20  0001 02            	dc.b	2
  21  0002 04            	dc.b	4
  22  0003 08            	dc.b	8
  23  0004               _CLKPrescTable:
  24  0004 01            	dc.b	1
  25  0005 02            	dc.b	2
  26  0006 04            	dc.b	4
  27  0007 08            	dc.b	8
  28  0008 0a            	dc.b	10
  29  0009 10            	dc.b	16
  30  000a 14            	dc.b	20
  31  000b 28            	dc.b	40
  60                     ; 66 void CLK_DeInit(void)
  60                     ; 67 {
  62                     .text:	section	.text,new
  63  0000               _CLK_DeInit:
  67                     ; 69     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  69  0000 350150c0      	mov	20672,#1
  70                     ; 70     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  72  0004 725f50c1      	clr	20673
  73                     ; 71     CLK->SWR  = CLK_SWR_RESET_VALUE;
  75  0008 35e150c4      	mov	20676,#225
  76                     ; 72     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  78  000c 725f50c5      	clr	20677
  79                     ; 73     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  81  0010 351850c6      	mov	20678,#24
  82                     ; 74     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  84  0014 35ff50c7      	mov	20679,#255
  85                     ; 75     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  87  0018 35ff50ca      	mov	20682,#255
  88                     ; 76     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  90  001c 725f50c8      	clr	20680
  91                     ; 77     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  93  0020 725f50c9      	clr	20681
  95  0024               L52:
  96                     ; 78     while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  98  0024 c650c9        	ld	a,20681
  99  0027 a501          	bcp	a,#1
 100  0029 26f9          	jrne	L52
 101                     ; 80     CLK->CCOR = CLK_CCOR_RESET_VALUE;
 103  002b 725f50c9      	clr	20681
 104                     ; 81     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 106  002f 725f50cc      	clr	20684
 107                     ; 82     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 109  0033 725f50cd      	clr	20685
 110                     ; 84 }
 113  0037 81            	ret
 169                     ; 95 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 169                     ; 96 {
 170                     .text:	section	.text,new
 171  0000               _CLK_FastHaltWakeUpCmd:
 175                     ; 99     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 177                     ; 101     if (NewState != DISABLE)
 179  0000 a30000        	cpw	x,#0
 180  0003 2706          	jreq	L75
 181                     ; 104         CLK->ICKR |= CLK_ICKR_FHWU;
 183  0005 721450c0      	bset	20672,#2
 185  0009 2004          	jra	L16
 186  000b               L75:
 187                     ; 109         CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 189  000b 721550c0      	bres	20672,#2
 190  000f               L16:
 191                     ; 112 }
 194  000f 81            	ret
 229                     ; 119 void CLK_HSECmd(FunctionalState NewState)
 229                     ; 120 {
 230                     .text:	section	.text,new
 231  0000               _CLK_HSECmd:
 235                     ; 123     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 237                     ; 125     if (NewState != DISABLE)
 239  0000 a30000        	cpw	x,#0
 240  0003 2706          	jreq	L101
 241                     ; 128         CLK->ECKR |= CLK_ECKR_HSEEN;
 243  0005 721050c1      	bset	20673,#0
 245  0009 2004          	jra	L301
 246  000b               L101:
 247                     ; 133         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 249  000b 721150c1      	bres	20673,#0
 250  000f               L301:
 251                     ; 136 }
 254  000f 81            	ret
 289                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 289                     ; 144 {
 290                     .text:	section	.text,new
 291  0000               _CLK_HSICmd:
 295                     ; 147     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 297                     ; 149     if (NewState != DISABLE)
 299  0000 a30000        	cpw	x,#0
 300  0003 2706          	jreq	L321
 301                     ; 152         CLK->ICKR |= CLK_ICKR_HSIEN;
 303  0005 721050c0      	bset	20672,#0
 305  0009 2004          	jra	L521
 306  000b               L321:
 307                     ; 157         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 309  000b 721150c0      	bres	20672,#0
 310  000f               L521:
 311                     ; 160 }
 314  000f 81            	ret
 349                     ; 167 void CLK_LSICmd(FunctionalState NewState)
 349                     ; 168 {
 350                     .text:	section	.text,new
 351  0000               _CLK_LSICmd:
 355                     ; 171     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 357                     ; 173     if (NewState != DISABLE)
 359  0000 a30000        	cpw	x,#0
 360  0003 2706          	jreq	L541
 361                     ; 176         CLK->ICKR |= CLK_ICKR_LSIEN;
 363  0005 721650c0      	bset	20672,#3
 365  0009 2004          	jra	L741
 366  000b               L541:
 367                     ; 181         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 369  000b 721750c0      	bres	20672,#3
 370  000f               L741:
 371                     ; 184 }
 374  000f 81            	ret
 409                     ; 192 void CLK_CCOCmd(FunctionalState NewState)
 409                     ; 193 {
 410                     .text:	section	.text,new
 411  0000               _CLK_CCOCmd:
 415                     ; 196     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 417                     ; 198     if (NewState != DISABLE)
 419  0000 a30000        	cpw	x,#0
 420  0003 2706          	jreq	L761
 421                     ; 201         CLK->CCOR |= CLK_CCOR_CCOEN;
 423  0005 721050c9      	bset	20681,#0
 425  0009 2004          	jra	L171
 426  000b               L761:
 427                     ; 206         CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 429  000b 721150c9      	bres	20681,#0
 430  000f               L171:
 431                     ; 209 }
 434  000f 81            	ret
 469                     ; 218 void CLK_ClockSwitchCmd(FunctionalState NewState)
 469                     ; 219 {
 470                     .text:	section	.text,new
 471  0000               _CLK_ClockSwitchCmd:
 475                     ; 222     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 477                     ; 224     if (NewState != DISABLE )
 479  0000 a30000        	cpw	x,#0
 480  0003 2706          	jreq	L112
 481                     ; 227         CLK->SWCR |= CLK_SWCR_SWEN;
 483  0005 721250c5      	bset	20677,#1
 485  0009 2004          	jra	L312
 486  000b               L112:
 487                     ; 232         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 489  000b 721350c5      	bres	20677,#1
 490  000f               L312:
 491                     ; 235 }
 494  000f 81            	ret
 530                     ; 245 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 530                     ; 246 {
 531                     .text:	section	.text,new
 532  0000               _CLK_SlowActiveHaltWakeUpCmd:
 536                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 538                     ; 251     if (NewState != DISABLE)
 540  0000 a30000        	cpw	x,#0
 541  0003 2706          	jreq	L332
 542                     ; 254         CLK->ICKR |= CLK_ICKR_SWUAH;
 544  0005 721a50c0      	bset	20672,#5
 546  0009 2004          	jra	L532
 547  000b               L332:
 548                     ; 259         CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 550  000b 721b50c0      	bres	20672,#5
 551  000f               L532:
 552                     ; 262 }
 555  000f 81            	ret
 714                     ; 272 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 714                     ; 273 {
 715                     .text:	section	.text,new
 716  0000               _CLK_PeripheralClockConfig:
 718  0000 89            	pushw	x
 719       00000000      OFST:	set	0
 722                     ; 276     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 724                     ; 277     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 726                     ; 279     if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 728  0001 9f            	ld	a,xl
 729  0002 a510          	bcp	a,#16
 730  0004 2633          	jrne	L123
 731                     ; 281         if (NewState != DISABLE)
 733  0006 1e05          	ldw	x,(OFST+5,sp)
 734  0008 2717          	jreq	L323
 735                     ; 284             CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 737  000a 7b02          	ld	a,(OFST+2,sp)
 738  000c a40f          	and	a,#15
 739  000e 5f            	clrw	x
 740  000f 97            	ld	xl,a
 741  0010 a601          	ld	a,#1
 742  0012 5d            	tnzw	x
 743  0013 2704          	jreq	L62
 744  0015               L03:
 745  0015 48            	sll	a
 746  0016 5a            	decw	x
 747  0017 26fc          	jrne	L03
 748  0019               L62:
 749  0019 ca50c7        	or	a,20679
 750  001c c750c7        	ld	20679,a
 752  001f 2049          	jra	L723
 753  0021               L323:
 754                     ; 289             CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 756  0021 7b02          	ld	a,(OFST+2,sp)
 757  0023 a40f          	and	a,#15
 758  0025 5f            	clrw	x
 759  0026 97            	ld	xl,a
 760  0027 a601          	ld	a,#1
 761  0029 5d            	tnzw	x
 762  002a 2704          	jreq	L23
 763  002c               L43:
 764  002c 48            	sll	a
 765  002d 5a            	decw	x
 766  002e 26fc          	jrne	L43
 767  0030               L23:
 768  0030 43            	cpl	a
 769  0031 c450c7        	and	a,20679
 770  0034 c750c7        	ld	20679,a
 771  0037 2031          	jra	L723
 772  0039               L123:
 773                     ; 294         if (NewState != DISABLE)
 775  0039 1e05          	ldw	x,(OFST+5,sp)
 776  003b 2717          	jreq	L133
 777                     ; 297             CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 779  003d 7b02          	ld	a,(OFST+2,sp)
 780  003f a40f          	and	a,#15
 781  0041 5f            	clrw	x
 782  0042 97            	ld	xl,a
 783  0043 a601          	ld	a,#1
 784  0045 5d            	tnzw	x
 785  0046 2704          	jreq	L63
 786  0048               L04:
 787  0048 48            	sll	a
 788  0049 5a            	decw	x
 789  004a 26fc          	jrne	L04
 790  004c               L63:
 791  004c ca50ca        	or	a,20682
 792  004f c750ca        	ld	20682,a
 794  0052 2016          	jra	L723
 795  0054               L133:
 796                     ; 302             CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 798  0054 7b02          	ld	a,(OFST+2,sp)
 799  0056 a40f          	and	a,#15
 800  0058 5f            	clrw	x
 801  0059 97            	ld	xl,a
 802  005a a601          	ld	a,#1
 803  005c 5d            	tnzw	x
 804  005d 2704          	jreq	L24
 805  005f               L44:
 806  005f 48            	sll	a
 807  0060 5a            	decw	x
 808  0061 26fc          	jrne	L44
 809  0063               L24:
 810  0063 43            	cpl	a
 811  0064 c450ca        	and	a,20682
 812  0067 c750ca        	ld	20682,a
 813  006a               L723:
 814                     ; 306 }
 817  006a 85            	popw	x
 818  006b 81            	ret
1006                     ; 319 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1006                     ; 320 {
1007                     .text:	section	.text,new
1008  0000               _CLK_ClockSwitchConfig:
1010  0000 89            	pushw	x
1011  0001 5204          	subw	sp,#4
1012       00000004      OFST:	set	4
1015                     ; 323     uint16_t DownCounter = CLK_TIMEOUT;
1017  0003 ae0491        	ldw	x,#1169
1018  0006 1f03          	ldw	(OFST-1,sp),x
1020                     ; 324     ErrorStatus Swif = ERROR;
1022                     ; 327     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1024                     ; 328     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1026                     ; 329     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1028                     ; 330     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1030                     ; 333     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1032  0008 c650c3        	ld	a,20675
1033  000b 5f            	clrw	x
1034  000c 97            	ld	xl,a
1035  000d 1f01          	ldw	(OFST-3,sp),x
1037                     ; 336     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1039  000f 1e05          	ldw	x,(OFST+1,sp)
1040  0011 a30001        	cpw	x,#1
1041  0014 263b          	jrne	L544
1042                     ; 340         CLK->SWCR |= CLK_SWCR_SWEN;
1044  0016 721250c5      	bset	20677,#1
1045                     ; 343         if (ITState != DISABLE)
1047  001a 1e0b          	ldw	x,(OFST+7,sp)
1048  001c 2706          	jreq	L744
1049                     ; 345             CLK->SWCR |= CLK_SWCR_SWIEN;
1051  001e 721450c5      	bset	20677,#2
1053  0022 2004          	jra	L154
1054  0024               L744:
1055                     ; 349             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1057  0024 721550c5      	bres	20677,#2
1058  0028               L154:
1059                     ; 353         CLK->SWR = (uint8_t)CLK_NewClock;
1061  0028 7b0a          	ld	a,(OFST+6,sp)
1062  002a c750c4        	ld	20676,a
1064  002d 2007          	jra	L754
1065  002f               L354:
1066                     ; 357             DownCounter--;
1068  002f 1e03          	ldw	x,(OFST-1,sp)
1069  0031 1d0001        	subw	x,#1
1070  0034 1f03          	ldw	(OFST-1,sp),x
1072  0036               L754:
1073                     ; 355         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1075  0036 c650c5        	ld	a,20677
1076  0039 a501          	bcp	a,#1
1077  003b 2704          	jreq	L364
1079  003d 1e03          	ldw	x,(OFST-1,sp)
1080  003f 26ee          	jrne	L354
1081  0041               L364:
1082                     ; 360         if (DownCounter != 0)
1084  0041 1e03          	ldw	x,(OFST-1,sp)
1085  0043 2707          	jreq	L564
1086                     ; 362             Swif = SUCCESS;
1088  0045 ae0001        	ldw	x,#1
1089  0048 1f03          	ldw	(OFST-1,sp),x
1092  004a 201d          	jra	L174
1093  004c               L564:
1094                     ; 366             Swif = ERROR;
1096  004c 5f            	clrw	x
1097  004d 1f03          	ldw	(OFST-1,sp),x
1099  004f 2018          	jra	L174
1100  0051               L544:
1101                     ; 374         if (ITState != DISABLE)
1103  0051 1e0b          	ldw	x,(OFST+7,sp)
1104  0053 2706          	jreq	L374
1105                     ; 376             CLK->SWCR |= CLK_SWCR_SWIEN;
1107  0055 721450c5      	bset	20677,#2
1109  0059 2004          	jra	L574
1110  005b               L374:
1111                     ; 380             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1113  005b 721550c5      	bres	20677,#2
1114  005f               L574:
1115                     ; 384         CLK->SWR = (uint8_t)CLK_NewClock;
1117  005f 7b0a          	ld	a,(OFST+6,sp)
1118  0061 c750c4        	ld	20676,a
1119                     ; 388         Swif = SUCCESS;
1121  0064 ae0001        	ldw	x,#1
1122  0067 1f03          	ldw	(OFST-1,sp),x
1124  0069               L174:
1125                     ; 393     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1127  0069 1e0d          	ldw	x,(OFST+9,sp)
1128  006b 260d          	jrne	L774
1130  006d 1e01          	ldw	x,(OFST-3,sp)
1131  006f a300e1        	cpw	x,#225
1132  0072 2606          	jrne	L774
1133                     ; 395         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1135  0074 721150c0      	bres	20672,#0
1137  0078 2020          	jra	L105
1138  007a               L774:
1139                     ; 397     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1141  007a 1e0d          	ldw	x,(OFST+9,sp)
1142  007c 260d          	jrne	L305
1144  007e 1e01          	ldw	x,(OFST-3,sp)
1145  0080 a300d2        	cpw	x,#210
1146  0083 2606          	jrne	L305
1147                     ; 399         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1149  0085 721750c0      	bres	20672,#3
1151  0089 200f          	jra	L105
1152  008b               L305:
1153                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1155  008b 1e0d          	ldw	x,(OFST+9,sp)
1156  008d 260b          	jrne	L105
1158  008f 1e01          	ldw	x,(OFST-3,sp)
1159  0091 a300b4        	cpw	x,#180
1160  0094 2604          	jrne	L105
1161                     ; 403         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1163  0096 721150c1      	bres	20673,#0
1164  009a               L105:
1165                     ; 406     return(Swif);
1167  009a 1e03          	ldw	x,(OFST-1,sp)
1170  009c 5b06          	addw	sp,#6
1171  009e 81            	ret
1309                     ; 416 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1309                     ; 417 {
1310                     .text:	section	.text,new
1311  0000               _CLK_HSIPrescalerConfig:
1315                     ; 420     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1317                     ; 423     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1319  0000 c650c6        	ld	a,20678
1320  0003 a4e7          	and	a,#231
1321  0005 c750c6        	ld	20678,a
1322                     ; 426     CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1324  0008 9f            	ld	a,xl
1325  0009 ca50c6        	or	a,20678
1326  000c c750c6        	ld	20678,a
1327                     ; 428 }
1330  000f 81            	ret
1465                     ; 439 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1465                     ; 440 {
1466                     .text:	section	.text,new
1467  0000               _CLK_CCOConfig:
1471                     ; 443     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1473                     ; 446     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1475  0000 c650c9        	ld	a,20681
1476  0003 a4e1          	and	a,#225
1477  0005 c750c9        	ld	20681,a
1478                     ; 449     CLK->CCOR |= (uint8_t)CLK_CCO;
1480  0008 9f            	ld	a,xl
1481  0009 ca50c9        	or	a,20681
1482  000c c750c9        	ld	20681,a
1483                     ; 452     CLK->CCOR |= CLK_CCOR_CCOEN;
1485  000f 721050c9      	bset	20681,#0
1486                     ; 454 }
1489  0013 81            	ret
1554                     ; 464 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1554                     ; 465 {
1555                     .text:	section	.text,new
1556  0000               _CLK_ITConfig:
1558  0000 89            	pushw	x
1559       00000000      OFST:	set	0
1562                     ; 468     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1564                     ; 469     assert_param(IS_CLK_IT_OK(CLK_IT));
1566                     ; 471     if (NewState != DISABLE)
1568  0001 1e05          	ldw	x,(OFST+5,sp)
1569  0003 271c          	jreq	L507
1570                     ; 473         switch (CLK_IT)
1572  0005 1e01          	ldw	x,(OFST+1,sp)
1574                     ; 481         default:
1574                     ; 482             break;
1575  0007 1d000c        	subw	x,#12
1576  000a 270b          	jreq	L146
1577  000c 1d0010        	subw	x,#16
1578  000f 2626          	jrne	L317
1579                     ; 475         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1579                     ; 476             CLK->SWCR |= CLK_SWCR_SWIEN;
1581  0011 721450c5      	bset	20677,#2
1582                     ; 477             break;
1584  0015 2020          	jra	L317
1585  0017               L146:
1586                     ; 478         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1586                     ; 479             CLK->CSSR |= CLK_CSSR_CSSDIE;
1588  0017 721450c8      	bset	20680,#2
1589                     ; 480             break;
1591  001b 201a          	jra	L317
1592  001d               L346:
1593                     ; 481         default:
1593                     ; 482             break;
1595  001d 2018          	jra	L317
1596  001f               L117:
1598  001f 2016          	jra	L317
1599  0021               L507:
1600                     ; 487         switch (CLK_IT)
1602  0021 1e01          	ldw	x,(OFST+1,sp)
1604                     ; 495         default:
1604                     ; 496             break;
1605  0023 1d000c        	subw	x,#12
1606  0026 270b          	jreq	L746
1607  0028 1d0010        	subw	x,#16
1608  002b 260a          	jrne	L317
1609                     ; 489         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1609                     ; 490             CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1611  002d 721550c5      	bres	20677,#2
1612                     ; 491             break;
1614  0031 2004          	jra	L317
1615  0033               L746:
1616                     ; 492         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1616                     ; 493             CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1618  0033 721550c8      	bres	20680,#2
1619                     ; 494             break;
1620  0037               L317:
1621                     ; 500 }
1624  0037 85            	popw	x
1625  0038 81            	ret
1626  0039               L156:
1627                     ; 495         default:
1627                     ; 496             break;
1629  0039 20fc          	jra	L317
1630  003b               L717:
1631  003b 20fa          	jra	L317
1666                     ; 507 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1666                     ; 508 {
1667                     .text:	section	.text,new
1668  0000               _CLK_SYSCLKConfig:
1670  0000 89            	pushw	x
1671       00000000      OFST:	set	0
1674                     ; 511     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1676                     ; 513     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1678  0001 9f            	ld	a,xl
1679  0002 a580          	bcp	a,#128
1680  0004 2614          	jrne	L737
1681                     ; 515         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1683  0006 c650c6        	ld	a,20678
1684  0009 a4e7          	and	a,#231
1685  000b c750c6        	ld	20678,a
1686                     ; 516         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
1688  000e 7b02          	ld	a,(OFST+2,sp)
1689  0010 a418          	and	a,#24
1690  0012 ca50c6        	or	a,20678
1691  0015 c750c6        	ld	20678,a
1693  0018 2012          	jra	L147
1694  001a               L737:
1695                     ; 520         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
1697  001a c650c6        	ld	a,20678
1698  001d a4f8          	and	a,#248
1699  001f c750c6        	ld	20678,a
1700                     ; 521         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
1702  0022 7b02          	ld	a,(OFST+2,sp)
1703  0024 a407          	and	a,#7
1704  0026 ca50c6        	or	a,20678
1705  0029 c750c6        	ld	20678,a
1706  002c               L147:
1707                     ; 524 }
1710  002c 85            	popw	x
1711  002d 81            	ret
1767                     ; 531 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
1767                     ; 532 {
1768                     .text:	section	.text,new
1769  0000               _CLK_SWIMConfig:
1773                     ; 535     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
1775                     ; 537     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
1777  0000 a30000        	cpw	x,#0
1778  0003 2706          	jreq	L177
1779                     ; 540         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
1781  0005 721050cd      	bset	20685,#0
1783  0009 2004          	jra	L377
1784  000b               L177:
1785                     ; 545         CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
1787  000b 721150cd      	bres	20685,#0
1788  000f               L377:
1789                     ; 548 }
1792  000f 81            	ret
1816                     ; 557 void CLK_ClockSecuritySystemEnable(void)
1816                     ; 558 {
1817                     .text:	section	.text,new
1818  0000               _CLK_ClockSecuritySystemEnable:
1822                     ; 560     CLK->CSSR |= CLK_CSSR_CSSEN;
1824  0000 721050c8      	bset	20680,#0
1825                     ; 561 }
1828  0004 81            	ret
1853                     ; 569 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
1853                     ; 570 {
1854                     .text:	section	.text,new
1855  0000               _CLK_GetSYSCLKSource:
1859                     ; 571     return((CLK_Source_TypeDef)CLK->CMSR);
1861  0000 c650c3        	ld	a,20675
1862  0003 5f            	clrw	x
1863  0004 97            	ld	xl,a
1866  0005 81            	ret
1929                     ; 579 uint32_t CLK_GetClockFreq(void)
1929                     ; 580 {
1930                     .text:	section	.text,new
1931  0000               _CLK_GetClockFreq:
1933  0000 520b          	subw	sp,#11
1934       0000000b      OFST:	set	11
1937                     ; 582     uint32_t clockfrequency = 0;
1939                     ; 583     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
1941                     ; 584     uint8_t tmp = 0, presc = 0;
1945                     ; 587     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
1947  0002 c650c3        	ld	a,20675
1948  0005 5f            	clrw	x
1949  0006 97            	ld	xl,a
1950  0007 1f05          	ldw	(OFST-6,sp),x
1952                     ; 589     if (clocksource == CLK_SOURCE_HSI)
1954  0009 1e05          	ldw	x,(OFST-6,sp)
1955  000b a300e1        	cpw	x,#225
1956  000e 2641          	jrne	L7401
1957                     ; 591         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
1959  0010 c650c6        	ld	a,20678
1960  0013 a418          	and	a,#24
1961  0015 6b0b          	ld	(OFST+0,sp),a
1963                     ; 592         tmp = (uint8_t)(tmp >> 3);
1965  0017 040b          	srl	(OFST+0,sp)
1966  0019 040b          	srl	(OFST+0,sp)
1967  001b 040b          	srl	(OFST+0,sp)
1969                     ; 593         presc = HSIDivFactor[tmp];
1971  001d 7b0b          	ld	a,(OFST+0,sp)
1972  001f 5f            	clrw	x
1973  0020 97            	ld	xl,a
1974  0021 d60000        	ld	a,(_HSIDivFactor,x)
1975  0024 6b0b          	ld	(OFST+0,sp),a
1977                     ; 594         clockfrequency = HSI_VALUE / presc;
1979  0026 7b0b          	ld	a,(OFST+0,sp)
1980  0028 b703          	ld	c_lreg+3,a
1981  002a 3f02          	clr	c_lreg+2
1982  002c 3f01          	clr	c_lreg+1
1983  002e 3f00          	clr	c_lreg
1984  0030 96            	ldw	x,sp
1985  0031 1c0001        	addw	x,#OFST-10
1986  0034 cd0000        	call	c_rtol
1989  0037 ae2400        	ldw	x,#9216
1990  003a bf02          	ldw	c_lreg+2,x
1991  003c ae00f4        	ldw	x,#244
1992  003f bf00          	ldw	c_lreg,x
1993  0041 96            	ldw	x,sp
1994  0042 1c0001        	addw	x,#OFST-10
1995  0045 cd0000        	call	c_ludv
1997  0048 96            	ldw	x,sp
1998  0049 1c0007        	addw	x,#OFST-4
1999  004c cd0000        	call	c_rtol
2003  004f 201d          	jra	L1501
2004  0051               L7401:
2005                     ; 596     else if ( clocksource == CLK_SOURCE_LSI)
2007  0051 1e05          	ldw	x,(OFST-6,sp)
2008  0053 a300d2        	cpw	x,#210
2009  0056 260c          	jrne	L3501
2010                     ; 598         clockfrequency = LSI_VALUE;
2012  0058 aef400        	ldw	x,#62464
2013  005b 1f09          	ldw	(OFST-2,sp),x
2014  005d ae0001        	ldw	x,#1
2015  0060 1f07          	ldw	(OFST-4,sp),x
2018  0062 200a          	jra	L1501
2019  0064               L3501:
2020                     ; 602         clockfrequency = HSE_VALUE;
2022  0064 ae2400        	ldw	x,#9216
2023  0067 1f09          	ldw	(OFST-2,sp),x
2024  0069 ae00f4        	ldw	x,#244
2025  006c 1f07          	ldw	(OFST-4,sp),x
2027  006e               L1501:
2028                     ; 605     return((uint32_t)clockfrequency);
2030  006e 96            	ldw	x,sp
2031  006f 1c0007        	addw	x,#OFST-4
2032  0072 cd0000        	call	c_ltor
2036  0075 5b0b          	addw	sp,#11
2037  0077 81            	ret
2136                     ; 616 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2136                     ; 617 {
2137                     .text:	section	.text,new
2138  0000               _CLK_AdjustHSICalibrationValue:
2140  0000 89            	pushw	x
2141       00000000      OFST:	set	0
2144                     ; 620     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2146                     ; 623     CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2148  0001 c650cc        	ld	a,20684
2149  0004 a4f8          	and	a,#248
2150  0006 1a02          	or	a,(OFST+2,sp)
2151  0008 c750cc        	ld	20684,a
2152                     ; 625 }
2155  000b 85            	popw	x
2156  000c 81            	ret
2180                     ; 636 void CLK_SYSCLKEmergencyClear(void)
2180                     ; 637 {
2181                     .text:	section	.text,new
2182  0000               _CLK_SYSCLKEmergencyClear:
2186                     ; 638     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2188  0000 721150c5      	bres	20677,#0
2189                     ; 639 }
2192  0004 81            	ret
2345                     ; 648 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2345                     ; 649 {
2346                     .text:	section	.text,new
2347  0000               _CLK_GetFlagStatus:
2349  0000 89            	pushw	x
2350  0001 5203          	subw	sp,#3
2351       00000003      OFST:	set	3
2354                     ; 651     uint16_t statusreg = 0;
2356                     ; 652     uint8_t tmpreg = 0;
2358                     ; 653     FlagStatus bitstatus = RESET;
2360                     ; 656     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2362                     ; 659     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2364  0003 01            	rrwa	x,a
2365  0004 9f            	ld	a,xl
2366  0005 a4ff          	and	a,#255
2367  0007 97            	ld	xl,a
2368  0008 4f            	clr	a
2369  0009 02            	rlwa	x,a
2370  000a 1f02          	ldw	(OFST-1,sp),x
2371  000c 01            	rrwa	x,a
2373                     ; 662     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2375  000d 1e02          	ldw	x,(OFST-1,sp)
2376  000f a30100        	cpw	x,#256
2377  0012 2607          	jrne	L1221
2378                     ; 664         tmpreg = CLK->ICKR;
2380  0014 c650c0        	ld	a,20672
2381  0017 6b01          	ld	(OFST-2,sp),a
2384  0019 202f          	jra	L3221
2385  001b               L1221:
2386                     ; 666     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2388  001b 1e02          	ldw	x,(OFST-1,sp)
2389  001d a30200        	cpw	x,#512
2390  0020 2607          	jrne	L5221
2391                     ; 668         tmpreg = CLK->ECKR;
2393  0022 c650c1        	ld	a,20673
2394  0025 6b01          	ld	(OFST-2,sp),a
2397  0027 2021          	jra	L3221
2398  0029               L5221:
2399                     ; 670     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2401  0029 1e02          	ldw	x,(OFST-1,sp)
2402  002b a30300        	cpw	x,#768
2403  002e 2607          	jrne	L1321
2404                     ; 672         tmpreg = CLK->SWCR;
2406  0030 c650c5        	ld	a,20677
2407  0033 6b01          	ld	(OFST-2,sp),a
2410  0035 2013          	jra	L3221
2411  0037               L1321:
2412                     ; 674     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2414  0037 1e02          	ldw	x,(OFST-1,sp)
2415  0039 a30400        	cpw	x,#1024
2416  003c 2607          	jrne	L5321
2417                     ; 676         tmpreg = CLK->CSSR;
2419  003e c650c8        	ld	a,20680
2420  0041 6b01          	ld	(OFST-2,sp),a
2423  0043 2005          	jra	L3221
2424  0045               L5321:
2425                     ; 680         tmpreg = CLK->CCOR;
2427  0045 c650c9        	ld	a,20681
2428  0048 6b01          	ld	(OFST-2,sp),a
2430  004a               L3221:
2431                     ; 683     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2433  004a 7b05          	ld	a,(OFST+2,sp)
2434  004c 1501          	bcp	a,(OFST-2,sp)
2435  004e 2707          	jreq	L1421
2436                     ; 685         bitstatus = SET;
2438  0050 ae0001        	ldw	x,#1
2439  0053 1f02          	ldw	(OFST-1,sp),x
2442  0055 2003          	jra	L3421
2443  0057               L1421:
2444                     ; 689         bitstatus = RESET;
2446  0057 5f            	clrw	x
2447  0058 1f02          	ldw	(OFST-1,sp),x
2449  005a               L3421:
2450                     ; 693     return((FlagStatus)bitstatus);
2452  005a 1e02          	ldw	x,(OFST-1,sp)
2455  005c 5b05          	addw	sp,#5
2456  005e 81            	ret
2502                     ; 703 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2502                     ; 704 {
2503                     .text:	section	.text,new
2504  0000               _CLK_GetITStatus:
2506  0000 89            	pushw	x
2507  0001 89            	pushw	x
2508       00000002      OFST:	set	2
2511                     ; 706     ITStatus bitstatus = RESET;
2513                     ; 709     assert_param(IS_CLK_IT_OK(CLK_IT));
2515                     ; 711     if (CLK_IT == CLK_IT_SWIF)
2517  0002 a3001c        	cpw	x,#28
2518  0005 2614          	jrne	L7621
2519                     ; 714         if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2521  0007 9f            	ld	a,xl
2522  0008 c450c5        	and	a,20677
2523  000b a10c          	cp	a,#12
2524  000d 2607          	jrne	L1721
2525                     ; 716             bitstatus = SET;
2527  000f ae0001        	ldw	x,#1
2528  0012 1f01          	ldw	(OFST-1,sp),x
2531  0014 2018          	jra	L5721
2532  0016               L1721:
2533                     ; 720             bitstatus = RESET;
2535  0016 5f            	clrw	x
2536  0017 1f01          	ldw	(OFST-1,sp),x
2538  0019 2013          	jra	L5721
2539  001b               L7621:
2540                     ; 726         if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2542  001b c650c8        	ld	a,20680
2543  001e 1404          	and	a,(OFST+2,sp)
2544  0020 a10c          	cp	a,#12
2545  0022 2607          	jrne	L7721
2546                     ; 728             bitstatus = SET;
2548  0024 ae0001        	ldw	x,#1
2549  0027 1f01          	ldw	(OFST-1,sp),x
2552  0029 2003          	jra	L5721
2553  002b               L7721:
2554                     ; 732             bitstatus = RESET;
2556  002b 5f            	clrw	x
2557  002c 1f01          	ldw	(OFST-1,sp),x
2559  002e               L5721:
2560                     ; 737     return bitstatus;
2562  002e 1e01          	ldw	x,(OFST-1,sp)
2565  0030 5b04          	addw	sp,#4
2566  0032 81            	ret
2602                     ; 747 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2602                     ; 748 {
2603                     .text:	section	.text,new
2604  0000               _CLK_ClearITPendingBit:
2608                     ; 751     assert_param(IS_CLK_IT_OK(CLK_IT));
2610                     ; 753     if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2612  0000 a3000c        	cpw	x,#12
2613  0003 2606          	jrne	L1231
2614                     ; 756         CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2616  0005 721750c8      	bres	20680,#3
2618  0009 2004          	jra	L3231
2619  000b               L1231:
2620                     ; 761         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2622  000b 721750c5      	bres	20677,#3
2623  000f               L3231:
2624                     ; 764 }
2627  000f 81            	ret
2662                     	xdef	_CLKPrescTable
2663                     	xdef	_HSIDivFactor
2664                     	xdef	_CLK_ClearITPendingBit
2665                     	xdef	_CLK_GetITStatus
2666                     	xdef	_CLK_GetFlagStatus
2667                     	xdef	_CLK_GetSYSCLKSource
2668                     	xdef	_CLK_GetClockFreq
2669                     	xdef	_CLK_AdjustHSICalibrationValue
2670                     	xdef	_CLK_SYSCLKEmergencyClear
2671                     	xdef	_CLK_ClockSecuritySystemEnable
2672                     	xdef	_CLK_SWIMConfig
2673                     	xdef	_CLK_SYSCLKConfig
2674                     	xdef	_CLK_ITConfig
2675                     	xdef	_CLK_CCOConfig
2676                     	xdef	_CLK_HSIPrescalerConfig
2677                     	xdef	_CLK_ClockSwitchConfig
2678                     	xdef	_CLK_PeripheralClockConfig
2679                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
2680                     	xdef	_CLK_FastHaltWakeUpCmd
2681                     	xdef	_CLK_ClockSwitchCmd
2682                     	xdef	_CLK_CCOCmd
2683                     	xdef	_CLK_LSICmd
2684                     	xdef	_CLK_HSICmd
2685                     	xdef	_CLK_HSECmd
2686                     	xdef	_CLK_DeInit
2687                     	xref.b	c_lreg
2688                     	xref.b	c_x
2707                     	xref	c_ltor
2708                     	xref	c_ludv
2709                     	xref	c_rtol
2710                     	end
