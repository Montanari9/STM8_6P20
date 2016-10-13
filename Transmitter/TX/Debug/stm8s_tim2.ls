   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
  45                     ; 46 void TIM2_DeInit(void)
  45                     ; 47 {
  47                     .text:	section	.text,new
  48  0000               _TIM2_DeInit:
  52                     ; 49     TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  54  0000 725f5300      	clr	21248
  55                     ; 50     TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  57  0004 725f5303      	clr	21251
  58                     ; 51     TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  60  0008 725f5305      	clr	21253
  61                     ; 54     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  63  000c 725f530a      	clr	21258
  64                     ; 55     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  66  0010 725f530b      	clr	21259
  67                     ; 59     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  69  0014 725f530a      	clr	21258
  70                     ; 60     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  72  0018 725f530b      	clr	21259
  73                     ; 61     TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  75  001c 725f5307      	clr	21255
  76                     ; 62     TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  78  0020 725f5308      	clr	21256
  79                     ; 63     TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  81  0024 725f5309      	clr	21257
  82                     ; 64     TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  84  0028 725f530c      	clr	21260
  85                     ; 65     TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  87  002c 725f530d      	clr	21261
  88                     ; 66     TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  90  0030 725f530e      	clr	21262
  91                     ; 67     TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  93  0034 35ff530f      	mov	21263,#255
  94                     ; 68     TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  96  0038 35ff5310      	mov	21264,#255
  97                     ; 69     TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  99  003c 725f5311      	clr	21265
 100                     ; 70     TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 102  0040 725f5312      	clr	21266
 103                     ; 71     TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 105  0044 725f5313      	clr	21267
 106                     ; 72     TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 108  0048 725f5314      	clr	21268
 109                     ; 73     TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 111  004c 725f5315      	clr	21269
 112                     ; 74     TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 114  0050 725f5316      	clr	21270
 115                     ; 75     TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 117  0054 725f5304      	clr	21252
 118                     ; 76 }
 121  0058 81            	ret
 289                     ; 85 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 289                     ; 86                         uint16_t TIM2_Period)
 289                     ; 87 {
 290                     .text:	section	.text,new
 291  0000               _TIM2_TimeBaseInit:
 293  0000 89            	pushw	x
 294       00000000      OFST:	set	0
 297                     ; 89     TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 299  0001 9f            	ld	a,xl
 300  0002 c7530e        	ld	21262,a
 301                     ; 91     TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 303  0005 7b05          	ld	a,(OFST+5,sp)
 304  0007 c7530f        	ld	21263,a
 305                     ; 92     TIM2->ARRL = (uint8_t)(TIM2_Period);
 307  000a 7b06          	ld	a,(OFST+6,sp)
 308  000c c75310        	ld	21264,a
 309                     ; 93 }
 312  000f 85            	popw	x
 313  0010 81            	ret
 470                     ; 104 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 470                     ; 105                   TIM2_OutputState_TypeDef TIM2_OutputState,
 470                     ; 106                   uint16_t TIM2_Pulse,
 470                     ; 107                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 470                     ; 108 {
 471                     .text:	section	.text,new
 472  0000               _TIM2_OC1Init:
 474  0000 89            	pushw	x
 475  0001 88            	push	a
 476       00000001      OFST:	set	1
 479                     ; 110     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 481                     ; 111     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 483                     ; 112     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 485                     ; 115     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 487  0002 c6530a        	ld	a,21258
 488  0005 a4fc          	and	a,#252
 489  0007 c7530a        	ld	21258,a
 490                     ; 117     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 490                     ; 118                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 492  000a 7b0b          	ld	a,(OFST+10,sp)
 493  000c a402          	and	a,#2
 494  000e 6b01          	ld	(OFST+0,sp),a
 496  0010 7b07          	ld	a,(OFST+6,sp)
 497  0012 a401          	and	a,#1
 498  0014 1a01          	or	a,(OFST+0,sp)
 499  0016 ca530a        	or	a,21258
 500  0019 c7530a        	ld	21258,a
 501                     ; 121     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 501                     ; 122                             (uint8_t)TIM2_OCMode);
 503  001c c65307        	ld	a,21255
 504  001f a48f          	and	a,#143
 505  0021 1a03          	or	a,(OFST+2,sp)
 506  0023 c75307        	ld	21255,a
 507                     ; 125     TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 509  0026 7b08          	ld	a,(OFST+7,sp)
 510  0028 c75311        	ld	21265,a
 511                     ; 126     TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 513  002b 7b09          	ld	a,(OFST+8,sp)
 514  002d c75312        	ld	21266,a
 515                     ; 127 }
 518  0030 5b03          	addw	sp,#3
 519  0032 81            	ret
 583                     ; 138 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 583                     ; 139                   TIM2_OutputState_TypeDef TIM2_OutputState,
 583                     ; 140                   uint16_t TIM2_Pulse,
 583                     ; 141                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 583                     ; 142 {
 584                     .text:	section	.text,new
 585  0000               _TIM2_OC2Init:
 587  0000 89            	pushw	x
 588  0001 88            	push	a
 589       00000001      OFST:	set	1
 592                     ; 144     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 594                     ; 145     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 596                     ; 146     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 598                     ; 150     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 600  0002 c6530a        	ld	a,21258
 601  0005 a4cf          	and	a,#207
 602  0007 c7530a        	ld	21258,a
 603                     ; 152     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 603                     ; 153                         (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 605  000a 7b0b          	ld	a,(OFST+10,sp)
 606  000c a420          	and	a,#32
 607  000e 6b01          	ld	(OFST+0,sp),a
 609  0010 7b07          	ld	a,(OFST+6,sp)
 610  0012 a410          	and	a,#16
 611  0014 1a01          	or	a,(OFST+0,sp)
 612  0016 ca530a        	or	a,21258
 613  0019 c7530a        	ld	21258,a
 614                     ; 157     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 614                     ; 158                             (uint8_t)TIM2_OCMode);
 616  001c c65308        	ld	a,21256
 617  001f a48f          	and	a,#143
 618  0021 1a03          	or	a,(OFST+2,sp)
 619  0023 c75308        	ld	21256,a
 620                     ; 162     TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 622  0026 7b08          	ld	a,(OFST+7,sp)
 623  0028 c75313        	ld	21267,a
 624                     ; 163     TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 626  002b 7b09          	ld	a,(OFST+8,sp)
 627  002d c75314        	ld	21268,a
 628                     ; 164 }
 631  0030 5b03          	addw	sp,#3
 632  0032 81            	ret
 696                     ; 175 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 696                     ; 176                   TIM2_OutputState_TypeDef TIM2_OutputState,
 696                     ; 177                   uint16_t TIM2_Pulse,
 696                     ; 178                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 696                     ; 179 {
 697                     .text:	section	.text,new
 698  0000               _TIM2_OC3Init:
 700  0000 89            	pushw	x
 701  0001 88            	push	a
 702       00000001      OFST:	set	1
 705                     ; 181     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 707                     ; 182     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 709                     ; 183     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 711                     ; 185     TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 713  0002 c6530b        	ld	a,21259
 714  0005 a4fc          	and	a,#252
 715  0007 c7530b        	ld	21259,a
 716                     ; 187     TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 716                     ; 188                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 718  000a 7b0b          	ld	a,(OFST+10,sp)
 719  000c a402          	and	a,#2
 720  000e 6b01          	ld	(OFST+0,sp),a
 722  0010 7b07          	ld	a,(OFST+6,sp)
 723  0012 a401          	and	a,#1
 724  0014 1a01          	or	a,(OFST+0,sp)
 725  0016 ca530b        	or	a,21259
 726  0019 c7530b        	ld	21259,a
 727                     ; 191     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 727                     ; 192                             (uint8_t)TIM2_OCMode);
 729  001c c65309        	ld	a,21257
 730  001f a48f          	and	a,#143
 731  0021 1a03          	or	a,(OFST+2,sp)
 732  0023 c75309        	ld	21257,a
 733                     ; 195     TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 735  0026 7b08          	ld	a,(OFST+7,sp)
 736  0028 c75315        	ld	21269,a
 737                     ; 196     TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 739  002b 7b09          	ld	a,(OFST+8,sp)
 740  002d c75316        	ld	21270,a
 741                     ; 198 }
 744  0030 5b03          	addw	sp,#3
 745  0032 81            	ret
 938                     ; 210 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
 938                     ; 211                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
 938                     ; 212                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
 938                     ; 213                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
 938                     ; 214                  uint8_t TIM2_ICFilter)
 938                     ; 215 {
 939                     .text:	section	.text,new
 940  0000               _TIM2_ICInit:
 942  0000 89            	pushw	x
 943       00000000      OFST:	set	0
 946                     ; 217     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
 948                     ; 218     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
 950                     ; 219     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
 952                     ; 220     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
 954                     ; 221     assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
 956                     ; 223     if (TIM2_Channel == TIM2_CHANNEL_1)
 958  0001 a30000        	cpw	x,#0
 959  0004 2614          	jrne	L104
 960                     ; 226         TI1_Config((uint8_t)TIM2_ICPolarity,
 960                     ; 227                    (uint8_t)TIM2_ICSelection,
 960                     ; 228                    (uint8_t)TIM2_ICFilter);
 962  0006 7b0b          	ld	a,(OFST+11,sp)
 963  0008 88            	push	a
 964  0009 7b09          	ld	a,(OFST+9,sp)
 965  000b 97            	ld	xl,a
 966  000c 7b07          	ld	a,(OFST+7,sp)
 967  000e 95            	ld	xh,a
 968  000f cd0000        	call	L3_TI1_Config
 970  0012 84            	pop	a
 971                     ; 231         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
 973  0013 1e09          	ldw	x,(OFST+9,sp)
 974  0015 cd0000        	call	_TIM2_SetIC1Prescaler
 977  0018 202d          	jra	L304
 978  001a               L104:
 979                     ; 233     else if (TIM2_Channel == TIM2_CHANNEL_2)
 981  001a 1e01          	ldw	x,(OFST+1,sp)
 982  001c a30001        	cpw	x,#1
 983  001f 2614          	jrne	L504
 984                     ; 236         TI2_Config((uint8_t)TIM2_ICPolarity,
 984                     ; 237                    (uint8_t)TIM2_ICSelection,
 984                     ; 238                    (uint8_t)TIM2_ICFilter);
 986  0021 7b0b          	ld	a,(OFST+11,sp)
 987  0023 88            	push	a
 988  0024 7b09          	ld	a,(OFST+9,sp)
 989  0026 97            	ld	xl,a
 990  0027 7b07          	ld	a,(OFST+7,sp)
 991  0029 95            	ld	xh,a
 992  002a cd0000        	call	L5_TI2_Config
 994  002d 84            	pop	a
 995                     ; 241         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
 997  002e 1e09          	ldw	x,(OFST+9,sp)
 998  0030 cd0000        	call	_TIM2_SetIC2Prescaler
1001  0033 2012          	jra	L304
1002  0035               L504:
1003                     ; 246         TI3_Config((uint8_t)TIM2_ICPolarity,
1003                     ; 247                    (uint8_t)TIM2_ICSelection,
1003                     ; 248                    (uint8_t)TIM2_ICFilter);
1005  0035 7b0b          	ld	a,(OFST+11,sp)
1006  0037 88            	push	a
1007  0038 7b09          	ld	a,(OFST+9,sp)
1008  003a 97            	ld	xl,a
1009  003b 7b07          	ld	a,(OFST+7,sp)
1010  003d 95            	ld	xh,a
1011  003e cd0000        	call	L7_TI3_Config
1013  0041 84            	pop	a
1014                     ; 251         TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1016  0042 1e09          	ldw	x,(OFST+9,sp)
1017  0044 cd0000        	call	_TIM2_SetIC3Prescaler
1019  0047               L304:
1020                     ; 253 }
1023  0047 85            	popw	x
1024  0048 81            	ret
1120                     ; 265 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1120                     ; 266                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1120                     ; 267                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1120                     ; 268                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1120                     ; 269                      uint8_t TIM2_ICFilter)
1120                     ; 270 {
1121                     .text:	section	.text,new
1122  0000               _TIM2_PWMIConfig:
1124  0000 89            	pushw	x
1125  0001 89            	pushw	x
1126       00000002      OFST:	set	2
1129                     ; 271     uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1131                     ; 272     uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1133                     ; 275     assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1135                     ; 276     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1137                     ; 277     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1139                     ; 278     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1141                     ; 281     if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1143  0002 1e07          	ldw	x,(OFST+5,sp)
1144  0004 a30044        	cpw	x,#68
1145  0007 2706          	jreq	L754
1146                     ; 283         icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1148  0009 a644          	ld	a,#68
1149  000b 6b01          	ld	(OFST-1,sp),a
1152  000d 2002          	jra	L164
1153  000f               L754:
1154                     ; 287         icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1156  000f 0f01          	clr	(OFST-1,sp)
1158  0011               L164:
1159                     ; 291     if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1161  0011 1e09          	ldw	x,(OFST+7,sp)
1162  0013 a30001        	cpw	x,#1
1163  0016 2606          	jrne	L364
1164                     ; 293         icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1166  0018 a602          	ld	a,#2
1167  001a 6b02          	ld	(OFST+0,sp),a
1170  001c 2004          	jra	L564
1171  001e               L364:
1172                     ; 297         icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1174  001e a601          	ld	a,#1
1175  0020 6b02          	ld	(OFST+0,sp),a
1177  0022               L564:
1178                     ; 300     if (TIM2_Channel == TIM2_CHANNEL_1)
1180  0022 1e03          	ldw	x,(OFST+1,sp)
1181  0024 2626          	jrne	L764
1182                     ; 303         TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1182                     ; 304                    (uint8_t)TIM2_ICFilter);
1184  0026 7b0d          	ld	a,(OFST+11,sp)
1185  0028 88            	push	a
1186  0029 7b0b          	ld	a,(OFST+9,sp)
1187  002b 97            	ld	xl,a
1188  002c 7b09          	ld	a,(OFST+7,sp)
1189  002e 95            	ld	xh,a
1190  002f cd0000        	call	L3_TI1_Config
1192  0032 84            	pop	a
1193                     ; 307         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1195  0033 1e0b          	ldw	x,(OFST+9,sp)
1196  0035 cd0000        	call	_TIM2_SetIC1Prescaler
1198                     ; 310         TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1200  0038 7b0d          	ld	a,(OFST+11,sp)
1201  003a 88            	push	a
1202  003b 7b03          	ld	a,(OFST+1,sp)
1203  003d 97            	ld	xl,a
1204  003e 7b02          	ld	a,(OFST+0,sp)
1205  0040 95            	ld	xh,a
1206  0041 cd0000        	call	L5_TI2_Config
1208  0044 84            	pop	a
1209                     ; 313         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1211  0045 1e0b          	ldw	x,(OFST+9,sp)
1212  0047 cd0000        	call	_TIM2_SetIC2Prescaler
1215  004a 2024          	jra	L174
1216  004c               L764:
1217                     ; 318         TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1217                     ; 319                    (uint8_t)TIM2_ICFilter);
1219  004c 7b0d          	ld	a,(OFST+11,sp)
1220  004e 88            	push	a
1221  004f 7b0b          	ld	a,(OFST+9,sp)
1222  0051 97            	ld	xl,a
1223  0052 7b09          	ld	a,(OFST+7,sp)
1224  0054 95            	ld	xh,a
1225  0055 cd0000        	call	L5_TI2_Config
1227  0058 84            	pop	a
1228                     ; 322         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1230  0059 1e0b          	ldw	x,(OFST+9,sp)
1231  005b cd0000        	call	_TIM2_SetIC2Prescaler
1233                     ; 325         TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1235  005e 7b0d          	ld	a,(OFST+11,sp)
1236  0060 88            	push	a
1237  0061 7b03          	ld	a,(OFST+1,sp)
1238  0063 97            	ld	xl,a
1239  0064 7b02          	ld	a,(OFST+0,sp)
1240  0066 95            	ld	xh,a
1241  0067 cd0000        	call	L3_TI1_Config
1243  006a 84            	pop	a
1244                     ; 328         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1246  006b 1e0b          	ldw	x,(OFST+9,sp)
1247  006d cd0000        	call	_TIM2_SetIC1Prescaler
1249  0070               L174:
1250                     ; 330 }
1253  0070 5b04          	addw	sp,#4
1254  0072 81            	ret
1309                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1309                     ; 340 {
1310                     .text:	section	.text,new
1311  0000               _TIM2_Cmd:
1315                     ; 342     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1317                     ; 345     if (NewState != DISABLE)
1319  0000 a30000        	cpw	x,#0
1320  0003 2706          	jreq	L125
1321                     ; 347         TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1323  0005 72105300      	bset	21248,#0
1325  0009 2004          	jra	L325
1326  000b               L125:
1327                     ; 351         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1329  000b 72115300      	bres	21248,#0
1330  000f               L325:
1331                     ; 353 }
1334  000f 81            	ret
1413                     ; 369 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1413                     ; 370 {
1414                     .text:	section	.text,new
1415  0000               _TIM2_ITConfig:
1417  0000 89            	pushw	x
1418       00000000      OFST:	set	0
1421                     ; 372     assert_param(IS_TIM2_IT_OK(TIM2_IT));
1423                     ; 373     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1425                     ; 375     if (NewState != DISABLE)
1427  0001 1e05          	ldw	x,(OFST+5,sp)
1428  0003 270a          	jreq	L365
1429                     ; 378         TIM2->IER |= (uint8_t)TIM2_IT;
1431  0005 c65303        	ld	a,21251
1432  0008 1a02          	or	a,(OFST+2,sp)
1433  000a c75303        	ld	21251,a
1435  000d 2009          	jra	L565
1436  000f               L365:
1437                     ; 383         TIM2->IER &= (uint8_t)(~TIM2_IT);
1439  000f 7b02          	ld	a,(OFST+2,sp)
1440  0011 43            	cpl	a
1441  0012 c45303        	and	a,21251
1442  0015 c75303        	ld	21251,a
1443  0018               L565:
1444                     ; 385 }
1447  0018 85            	popw	x
1448  0019 81            	ret
1484                     ; 394 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1484                     ; 395 {
1485                     .text:	section	.text,new
1486  0000               _TIM2_UpdateDisableConfig:
1490                     ; 397     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1492                     ; 400     if (NewState != DISABLE)
1494  0000 a30000        	cpw	x,#0
1495  0003 2706          	jreq	L506
1496                     ; 402         TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1498  0005 72125300      	bset	21248,#1
1500  0009 2004          	jra	L706
1501  000b               L506:
1502                     ; 406         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1504  000b 72135300      	bres	21248,#1
1505  000f               L706:
1506                     ; 408 }
1509  000f 81            	ret
1567                     ; 418 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1567                     ; 419 {
1568                     .text:	section	.text,new
1569  0000               _TIM2_UpdateRequestConfig:
1573                     ; 421     assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1575                     ; 424     if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1577  0000 a30000        	cpw	x,#0
1578  0003 2706          	jreq	L736
1579                     ; 426         TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1581  0005 72145300      	bset	21248,#2
1583  0009 2004          	jra	L146
1584  000b               L736:
1585                     ; 430         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1587  000b 72155300      	bres	21248,#2
1588  000f               L146:
1589                     ; 432 }
1592  000f 81            	ret
1649                     ; 443 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1649                     ; 444 {
1650                     .text:	section	.text,new
1651  0000               _TIM2_SelectOnePulseMode:
1655                     ; 446     assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1657                     ; 449     if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1659  0000 a30000        	cpw	x,#0
1660  0003 2706          	jreq	L176
1661                     ; 451         TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1663  0005 72165300      	bset	21248,#3
1665  0009 2004          	jra	L376
1666  000b               L176:
1667                     ; 455         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1669  000b 72175300      	bres	21248,#3
1670  000f               L376:
1671                     ; 458 }
1674  000f 81            	ret
1742                     ; 489 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
1742                     ; 490                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
1742                     ; 491 {
1743                     .text:	section	.text,new
1744  0000               _TIM2_PrescalerConfig:
1746  0000 89            	pushw	x
1747       00000000      OFST:	set	0
1750                     ; 493     assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
1752                     ; 494     assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
1754                     ; 497     TIM2->PSCR = (uint8_t)Prescaler;
1756  0001 9f            	ld	a,xl
1757  0002 c7530e        	ld	21262,a
1758                     ; 500     TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
1760  0005 7b06          	ld	a,(OFST+6,sp)
1761  0007 c75306        	ld	21254,a
1762                     ; 501 }
1765  000a 85            	popw	x
1766  000b 81            	ret
1824                     ; 512 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1824                     ; 513 {
1825                     .text:	section	.text,new
1826  0000               _TIM2_ForcedOC1Config:
1828  0000 89            	pushw	x
1829       00000000      OFST:	set	0
1832                     ; 515     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1834                     ; 518     TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
1834                     ; 519                               | (uint8_t)TIM2_ForcedAction);
1836  0001 c65307        	ld	a,21255
1837  0004 a48f          	and	a,#143
1838  0006 1a02          	or	a,(OFST+2,sp)
1839  0008 c75307        	ld	21255,a
1840                     ; 520 }
1843  000b 85            	popw	x
1844  000c 81            	ret
1880                     ; 531 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1880                     ; 532 {
1881                     .text:	section	.text,new
1882  0000               _TIM2_ForcedOC2Config:
1884  0000 89            	pushw	x
1885       00000000      OFST:	set	0
1888                     ; 534     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1890                     ; 537     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
1890                     ; 538                             | (uint8_t)TIM2_ForcedAction);
1892  0001 c65308        	ld	a,21256
1893  0004 a48f          	and	a,#143
1894  0006 1a02          	or	a,(OFST+2,sp)
1895  0008 c75308        	ld	21256,a
1896                     ; 539 }
1899  000b 85            	popw	x
1900  000c 81            	ret
1936                     ; 550 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1936                     ; 551 {
1937                     .text:	section	.text,new
1938  0000               _TIM2_ForcedOC3Config:
1940  0000 89            	pushw	x
1941       00000000      OFST:	set	0
1944                     ; 553     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1946                     ; 556     TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
1946                     ; 557                               | (uint8_t)TIM2_ForcedAction);
1948  0001 c65309        	ld	a,21257
1949  0004 a48f          	and	a,#143
1950  0006 1a02          	or	a,(OFST+2,sp)
1951  0008 c75309        	ld	21257,a
1952                     ; 558 }
1955  000b 85            	popw	x
1956  000c 81            	ret
1992                     ; 567 void TIM2_ARRPreloadConfig(FunctionalState NewState)
1992                     ; 568 {
1993                     .text:	section	.text,new
1994  0000               _TIM2_ARRPreloadConfig:
1998                     ; 570     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2000                     ; 573     if (NewState != DISABLE)
2002  0000 a30000        	cpw	x,#0
2003  0003 2706          	jreq	L7201
2004                     ; 575         TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2006  0005 721e5300      	bset	21248,#7
2008  0009 2004          	jra	L1301
2009  000b               L7201:
2010                     ; 579         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2012  000b 721f5300      	bres	21248,#7
2013  000f               L1301:
2014                     ; 581 }
2017  000f 81            	ret
2053                     ; 590 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2053                     ; 591 {
2054                     .text:	section	.text,new
2055  0000               _TIM2_OC1PreloadConfig:
2059                     ; 593     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2061                     ; 596     if (NewState != DISABLE)
2063  0000 a30000        	cpw	x,#0
2064  0003 2706          	jreq	L1501
2065                     ; 598         TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2067  0005 72165307      	bset	21255,#3
2069  0009 2004          	jra	L3501
2070  000b               L1501:
2071                     ; 602         TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2073  000b 72175307      	bres	21255,#3
2074  000f               L3501:
2075                     ; 604 }
2078  000f 81            	ret
2114                     ; 613 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2114                     ; 614 {
2115                     .text:	section	.text,new
2116  0000               _TIM2_OC2PreloadConfig:
2120                     ; 616     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2122                     ; 619     if (NewState != DISABLE)
2124  0000 a30000        	cpw	x,#0
2125  0003 2706          	jreq	L3701
2126                     ; 621         TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2128  0005 72165308      	bset	21256,#3
2130  0009 2004          	jra	L5701
2131  000b               L3701:
2132                     ; 625         TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2134  000b 72175308      	bres	21256,#3
2135  000f               L5701:
2136                     ; 627 }
2139  000f 81            	ret
2175                     ; 636 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2175                     ; 637 {
2176                     .text:	section	.text,new
2177  0000               _TIM2_OC3PreloadConfig:
2181                     ; 639     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2183                     ; 642     if (NewState != DISABLE)
2185  0000 a30000        	cpw	x,#0
2186  0003 2706          	jreq	L5111
2187                     ; 644         TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2189  0005 72165309      	bset	21257,#3
2191  0009 2004          	jra	L7111
2192  000b               L5111:
2193                     ; 648         TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2195  000b 72175309      	bres	21257,#3
2196  000f               L7111:
2197                     ; 650 }
2200  000f 81            	ret
2273                     ; 663 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2273                     ; 664 {
2274                     .text:	section	.text,new
2275  0000               _TIM2_GenerateEvent:
2279                     ; 666     assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2281                     ; 669     TIM2->EGR = (uint8_t)TIM2_EventSource;
2283  0000 9f            	ld	a,xl
2284  0001 c75306        	ld	21254,a
2285                     ; 670 }
2288  0004 81            	ret
2324                     ; 681 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2324                     ; 682 {
2325                     .text:	section	.text,new
2326  0000               _TIM2_OC1PolarityConfig:
2330                     ; 684     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2332                     ; 687     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2334  0000 a30000        	cpw	x,#0
2335  0003 2706          	jreq	L1711
2336                     ; 689         TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2338  0005 7212530a      	bset	21258,#1
2340  0009 2004          	jra	L3711
2341  000b               L1711:
2342                     ; 693         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2344  000b 7213530a      	bres	21258,#1
2345  000f               L3711:
2346                     ; 695 }
2349  000f 81            	ret
2385                     ; 706 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2385                     ; 707 {
2386                     .text:	section	.text,new
2387  0000               _TIM2_OC2PolarityConfig:
2391                     ; 709     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2393                     ; 712     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2395  0000 a30000        	cpw	x,#0
2396  0003 2706          	jreq	L3121
2397                     ; 714         TIM2->CCER1 |= TIM2_CCER1_CC2P;
2399  0005 721a530a      	bset	21258,#5
2401  0009 2004          	jra	L5121
2402  000b               L3121:
2403                     ; 718         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2405  000b 721b530a      	bres	21258,#5
2406  000f               L5121:
2407                     ; 720 }
2410  000f 81            	ret
2446                     ; 731 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2446                     ; 732 {
2447                     .text:	section	.text,new
2448  0000               _TIM2_OC3PolarityConfig:
2452                     ; 734     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2454                     ; 737     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2456  0000 a30000        	cpw	x,#0
2457  0003 2706          	jreq	L5321
2458                     ; 739         TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
2460  0005 7212530b      	bset	21259,#1
2462  0009 2004          	jra	L7321
2463  000b               L5321:
2464                     ; 743         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
2466  000b 7213530b      	bres	21259,#1
2467  000f               L7321:
2468                     ; 745 }
2471  000f 81            	ret
2516                     ; 759 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
2516                     ; 760 {
2517                     .text:	section	.text,new
2518  0000               _TIM2_CCxCmd:
2520  0000 89            	pushw	x
2521       00000000      OFST:	set	0
2524                     ; 762     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2526                     ; 763     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2528                     ; 765     if (TIM2_Channel == TIM2_CHANNEL_1)
2530  0001 a30000        	cpw	x,#0
2531  0004 2610          	jrne	L3621
2532                     ; 768         if (NewState != DISABLE)
2534  0006 1e05          	ldw	x,(OFST+5,sp)
2535  0008 2706          	jreq	L5621
2536                     ; 770             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
2538  000a 7210530a      	bset	21258,#0
2540  000e 202b          	jra	L1721
2541  0010               L5621:
2542                     ; 774             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2544  0010 7211530a      	bres	21258,#0
2545  0014 2025          	jra	L1721
2546  0016               L3621:
2547                     ; 778     else if (TIM2_Channel == TIM2_CHANNEL_2)
2549  0016 1e01          	ldw	x,(OFST+1,sp)
2550  0018 a30001        	cpw	x,#1
2551  001b 2610          	jrne	L3721
2552                     ; 781         if (NewState != DISABLE)
2554  001d 1e05          	ldw	x,(OFST+5,sp)
2555  001f 2706          	jreq	L5721
2556                     ; 783             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
2558  0021 7218530a      	bset	21258,#4
2560  0025 2014          	jra	L1721
2561  0027               L5721:
2562                     ; 787             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2564  0027 7219530a      	bres	21258,#4
2565  002b 200e          	jra	L1721
2566  002d               L3721:
2567                     ; 793         if (NewState != DISABLE)
2569  002d 1e05          	ldw	x,(OFST+5,sp)
2570  002f 2706          	jreq	L3031
2571                     ; 795             TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
2573  0031 7210530b      	bset	21259,#0
2575  0035 2004          	jra	L1721
2576  0037               L3031:
2577                     ; 799             TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2579  0037 7211530b      	bres	21259,#0
2580  003b               L1721:
2581                     ; 802 }
2584  003b 85            	popw	x
2585  003c 81            	ret
2630                     ; 824 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
2630                     ; 825 {
2631                     .text:	section	.text,new
2632  0000               _TIM2_SelectOCxM:
2634  0000 89            	pushw	x
2635       00000000      OFST:	set	0
2638                     ; 827     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2640                     ; 828     assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
2642                     ; 830     if (TIM2_Channel == TIM2_CHANNEL_1)
2644  0001 a30000        	cpw	x,#0
2645  0004 2610          	jrne	L1331
2646                     ; 833         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2648  0006 7211530a      	bres	21258,#0
2649                     ; 836         TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
2649                     ; 837                                | (uint8_t)TIM2_OCMode);
2651  000a c65307        	ld	a,21255
2652  000d a48f          	and	a,#143
2653  000f 1a06          	or	a,(OFST+6,sp)
2654  0011 c75307        	ld	21255,a
2656  0014 2025          	jra	L3331
2657  0016               L1331:
2658                     ; 839     else if (TIM2_Channel == TIM2_CHANNEL_2)
2660  0016 1e01          	ldw	x,(OFST+1,sp)
2661  0018 a30001        	cpw	x,#1
2662  001b 2610          	jrne	L5331
2663                     ; 842         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2665  001d 7219530a      	bres	21258,#4
2666                     ; 845         TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
2666                     ; 846                                 | (uint8_t)TIM2_OCMode);
2668  0021 c65308        	ld	a,21256
2669  0024 a48f          	and	a,#143
2670  0026 1a06          	or	a,(OFST+6,sp)
2671  0028 c75308        	ld	21256,a
2673  002b 200e          	jra	L3331
2674  002d               L5331:
2675                     ; 851         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2677  002d 7211530b      	bres	21259,#0
2678                     ; 854         TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2678                     ; 855                                 | (uint8_t)TIM2_OCMode);
2680  0031 c65309        	ld	a,21257
2681  0034 a48f          	and	a,#143
2682  0036 1a06          	or	a,(OFST+6,sp)
2683  0038 c75309        	ld	21257,a
2684  003b               L3331:
2685                     ; 857 }
2688  003b 85            	popw	x
2689  003c 81            	ret
2723                     ; 866 void TIM2_SetCounter(uint16_t Counter)
2723                     ; 867 {
2724                     .text:	section	.text,new
2725  0000               _TIM2_SetCounter:
2729                     ; 869     TIM2->CNTRH = (uint8_t)(Counter >> 8);
2731  0000 9e            	ld	a,xh
2732  0001 c7530c        	ld	21260,a
2733                     ; 870     TIM2->CNTRL = (uint8_t)(Counter);
2735  0004 9f            	ld	a,xl
2736  0005 c7530d        	ld	21261,a
2737                     ; 872 }
2740  0008 81            	ret
2774                     ; 881 void TIM2_SetAutoreload(uint16_t Autoreload)
2774                     ; 882 {
2775                     .text:	section	.text,new
2776  0000               _TIM2_SetAutoreload:
2780                     ; 885     TIM2->ARRH = (uint8_t)(Autoreload >> 8);
2782  0000 9e            	ld	a,xh
2783  0001 c7530f        	ld	21263,a
2784                     ; 886     TIM2->ARRL = (uint8_t)(Autoreload);
2786  0004 9f            	ld	a,xl
2787  0005 c75310        	ld	21264,a
2788                     ; 888 }
2791  0008 81            	ret
2825                     ; 897 void TIM2_SetCompare1(uint16_t Compare1)
2825                     ; 898 {
2826                     .text:	section	.text,new
2827  0000               _TIM2_SetCompare1:
2831                     ; 900     TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
2833  0000 9e            	ld	a,xh
2834  0001 c75311        	ld	21265,a
2835                     ; 901     TIM2->CCR1L = (uint8_t)(Compare1);
2837  0004 9f            	ld	a,xl
2838  0005 c75312        	ld	21266,a
2839                     ; 903 }
2842  0008 81            	ret
2876                     ; 912 void TIM2_SetCompare2(uint16_t Compare2)
2876                     ; 913 {
2877                     .text:	section	.text,new
2878  0000               _TIM2_SetCompare2:
2882                     ; 915     TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
2884  0000 9e            	ld	a,xh
2885  0001 c75313        	ld	21267,a
2886                     ; 916     TIM2->CCR2L = (uint8_t)(Compare2);
2888  0004 9f            	ld	a,xl
2889  0005 c75314        	ld	21268,a
2890                     ; 918 }
2893  0008 81            	ret
2927                     ; 927 void TIM2_SetCompare3(uint16_t Compare3)
2927                     ; 928 {
2928                     .text:	section	.text,new
2929  0000               _TIM2_SetCompare3:
2933                     ; 930     TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
2935  0000 9e            	ld	a,xh
2936  0001 c75315        	ld	21269,a
2937                     ; 931     TIM2->CCR3L = (uint8_t)(Compare3);
2939  0004 9f            	ld	a,xl
2940  0005 c75316        	ld	21270,a
2941                     ; 933 }
2944  0008 81            	ret
2980                     ; 946 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
2980                     ; 947 {
2981                     .text:	section	.text,new
2982  0000               _TIM2_SetIC1Prescaler:
2984  0000 89            	pushw	x
2985       00000000      OFST:	set	0
2988                     ; 949     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
2990                     ; 952     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
2990                     ; 953                             | (uint8_t)TIM2_IC1Prescaler);
2992  0001 c65307        	ld	a,21255
2993  0004 a4f3          	and	a,#243
2994  0006 1a02          	or	a,(OFST+2,sp)
2995  0008 c75307        	ld	21255,a
2996                     ; 954 }
2999  000b 85            	popw	x
3000  000c 81            	ret
3036                     ; 966 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3036                     ; 967 {
3037                     .text:	section	.text,new
3038  0000               _TIM2_SetIC2Prescaler:
3040  0000 89            	pushw	x
3041       00000000      OFST:	set	0
3044                     ; 969     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3046                     ; 972     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3046                     ; 973                             | (uint8_t)TIM2_IC2Prescaler);
3048  0001 c65308        	ld	a,21256
3049  0004 a4f3          	and	a,#243
3050  0006 1a02          	or	a,(OFST+2,sp)
3051  0008 c75308        	ld	21256,a
3052                     ; 974 }
3055  000b 85            	popw	x
3056  000c 81            	ret
3092                     ; 986 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3092                     ; 987 {
3093                     .text:	section	.text,new
3094  0000               _TIM2_SetIC3Prescaler:
3096  0000 89            	pushw	x
3097       00000000      OFST:	set	0
3100                     ; 990     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3102                     ; 992     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3102                     ; 993                             | (uint8_t)TIM2_IC3Prescaler);
3104  0001 c65309        	ld	a,21257
3105  0004 a4f3          	and	a,#243
3106  0006 1a02          	or	a,(OFST+2,sp)
3107  0008 c75309        	ld	21257,a
3108                     ; 994 }
3111  000b 85            	popw	x
3112  000c 81            	ret
3164                     ; 1001 uint16_t TIM2_GetCapture1(void)
3164                     ; 1002 {
3165                     .text:	section	.text,new
3166  0000               _TIM2_GetCapture1:
3168  0000 5204          	subw	sp,#4
3169       00000004      OFST:	set	4
3172                     ; 1004     uint16_t tmpccr1 = 0;
3174                     ; 1005     uint8_t tmpccr1l=0, tmpccr1h=0;
3178                     ; 1007     tmpccr1h = TIM2->CCR1H;
3180  0002 c65311        	ld	a,21265
3181  0005 6b02          	ld	(OFST-2,sp),a
3183                     ; 1008     tmpccr1l = TIM2->CCR1L;
3185  0007 c65312        	ld	a,21266
3186  000a 6b01          	ld	(OFST-3,sp),a
3188                     ; 1010     tmpccr1 = (uint16_t)(tmpccr1l);
3190  000c 7b01          	ld	a,(OFST-3,sp)
3191  000e 5f            	clrw	x
3192  000f 97            	ld	xl,a
3193  0010 1f03          	ldw	(OFST-1,sp),x
3195                     ; 1011     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3197  0012 7b02          	ld	a,(OFST-2,sp)
3198  0014 5f            	clrw	x
3199  0015 97            	ld	xl,a
3200  0016 4f            	clr	a
3201  0017 02            	rlwa	x,a
3202  0018 01            	rrwa	x,a
3203  0019 1a04          	or	a,(OFST+0,sp)
3204  001b 01            	rrwa	x,a
3205  001c 1a03          	or	a,(OFST-1,sp)
3206  001e 01            	rrwa	x,a
3207  001f 1f03          	ldw	(OFST-1,sp),x
3209                     ; 1013     return (uint16_t)tmpccr1;
3211  0021 1e03          	ldw	x,(OFST-1,sp)
3214  0023 5b04          	addw	sp,#4
3215  0025 81            	ret
3267                     ; 1021 uint16_t TIM2_GetCapture2(void)
3267                     ; 1022 {
3268                     .text:	section	.text,new
3269  0000               _TIM2_GetCapture2:
3271  0000 5204          	subw	sp,#4
3272       00000004      OFST:	set	4
3275                     ; 1024     uint16_t tmpccr2 = 0;
3277                     ; 1025     uint8_t tmpccr2l=0, tmpccr2h=0;
3281                     ; 1027     tmpccr2h = TIM2->CCR2H;
3283  0002 c65313        	ld	a,21267
3284  0005 6b02          	ld	(OFST-2,sp),a
3286                     ; 1028     tmpccr2l = TIM2->CCR2L;
3288  0007 c65314        	ld	a,21268
3289  000a 6b01          	ld	(OFST-3,sp),a
3291                     ; 1030     tmpccr2 = (uint16_t)(tmpccr2l);
3293  000c 7b01          	ld	a,(OFST-3,sp)
3294  000e 5f            	clrw	x
3295  000f 97            	ld	xl,a
3296  0010 1f03          	ldw	(OFST-1,sp),x
3298                     ; 1031     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3300  0012 7b02          	ld	a,(OFST-2,sp)
3301  0014 5f            	clrw	x
3302  0015 97            	ld	xl,a
3303  0016 4f            	clr	a
3304  0017 02            	rlwa	x,a
3305  0018 01            	rrwa	x,a
3306  0019 1a04          	or	a,(OFST+0,sp)
3307  001b 01            	rrwa	x,a
3308  001c 1a03          	or	a,(OFST-1,sp)
3309  001e 01            	rrwa	x,a
3310  001f 1f03          	ldw	(OFST-1,sp),x
3312                     ; 1033     return (uint16_t)tmpccr2;
3314  0021 1e03          	ldw	x,(OFST-1,sp)
3317  0023 5b04          	addw	sp,#4
3318  0025 81            	ret
3370                     ; 1041 uint16_t TIM2_GetCapture3(void)
3370                     ; 1042 {
3371                     .text:	section	.text,new
3372  0000               _TIM2_GetCapture3:
3374  0000 5204          	subw	sp,#4
3375       00000004      OFST:	set	4
3378                     ; 1044     uint16_t tmpccr3 = 0;
3380                     ; 1045     uint8_t tmpccr3l=0, tmpccr3h=0;
3384                     ; 1047     tmpccr3h = TIM2->CCR3H;
3386  0002 c65315        	ld	a,21269
3387  0005 6b02          	ld	(OFST-2,sp),a
3389                     ; 1048     tmpccr3l = TIM2->CCR3L;
3391  0007 c65316        	ld	a,21270
3392  000a 6b01          	ld	(OFST-3,sp),a
3394                     ; 1050     tmpccr3 = (uint16_t)(tmpccr3l);
3396  000c 7b01          	ld	a,(OFST-3,sp)
3397  000e 5f            	clrw	x
3398  000f 97            	ld	xl,a
3399  0010 1f03          	ldw	(OFST-1,sp),x
3401                     ; 1051     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
3403  0012 7b02          	ld	a,(OFST-2,sp)
3404  0014 5f            	clrw	x
3405  0015 97            	ld	xl,a
3406  0016 4f            	clr	a
3407  0017 02            	rlwa	x,a
3408  0018 01            	rrwa	x,a
3409  0019 1a04          	or	a,(OFST+0,sp)
3410  001b 01            	rrwa	x,a
3411  001c 1a03          	or	a,(OFST-1,sp)
3412  001e 01            	rrwa	x,a
3413  001f 1f03          	ldw	(OFST-1,sp),x
3415                     ; 1053     return (uint16_t)tmpccr3;
3417  0021 1e03          	ldw	x,(OFST-1,sp)
3420  0023 5b04          	addw	sp,#4
3421  0025 81            	ret
3455                     ; 1061 uint16_t TIM2_GetCounter(void)
3455                     ; 1062 {
3456                     .text:	section	.text,new
3457  0000               _TIM2_GetCounter:
3459  0000 89            	pushw	x
3460       00000002      OFST:	set	2
3463                     ; 1063      uint16_t tmpcntr = 0;
3465                     ; 1065     tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
3467  0001 c6530c        	ld	a,21260
3468  0004 5f            	clrw	x
3469  0005 97            	ld	xl,a
3470  0006 4f            	clr	a
3471  0007 02            	rlwa	x,a
3472  0008 1f01          	ldw	(OFST-1,sp),x
3474                     ; 1067     return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
3476  000a c6530d        	ld	a,21261
3477  000d 5f            	clrw	x
3478  000e 97            	ld	xl,a
3479  000f 01            	rrwa	x,a
3480  0010 1a02          	or	a,(OFST+0,sp)
3481  0012 01            	rrwa	x,a
3482  0013 1a01          	or	a,(OFST-1,sp)
3483  0015 01            	rrwa	x,a
3486  0016 5b02          	addw	sp,#2
3487  0018 81            	ret
3511                     ; 1076 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
3511                     ; 1077 {
3512                     .text:	section	.text,new
3513  0000               _TIM2_GetPrescaler:
3517                     ; 1079     return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
3519  0000 c6530e        	ld	a,21262
3520  0003 5f            	clrw	x
3521  0004 97            	ld	xl,a
3524  0005 81            	ret
3663                     ; 1096 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
3663                     ; 1097 {
3664                     .text:	section	.text,new
3665  0000               _TIM2_GetFlagStatus:
3667  0000 89            	pushw	x
3668  0001 5204          	subw	sp,#4
3669       00000004      OFST:	set	4
3672                     ; 1098     FlagStatus bitstatus = RESET;
3674                     ; 1099     uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
3678                     ; 1102     assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
3680                     ; 1104     tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
3682  0003 9f            	ld	a,xl
3683  0004 c45304        	and	a,21252
3684  0007 6b01          	ld	(OFST-3,sp),a
3686                     ; 1105     tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
3688  0009 1e05          	ldw	x,(OFST+1,sp)
3689  000b 4f            	clr	a
3690  000c 01            	rrwa	x,a
3691  000d 9f            	ld	a,xl
3692  000e 6b02          	ld	(OFST-2,sp),a
3694                     ; 1107     if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
3696  0010 c65305        	ld	a,21253
3697  0013 1402          	and	a,(OFST-2,sp)
3698  0015 1a01          	or	a,(OFST-3,sp)
3699  0017 2707          	jreq	L5371
3700                     ; 1109         bitstatus = SET;
3702  0019 ae0001        	ldw	x,#1
3703  001c 1f03          	ldw	(OFST-1,sp),x
3706  001e 2003          	jra	L7371
3707  0020               L5371:
3708                     ; 1113         bitstatus = RESET;
3710  0020 5f            	clrw	x
3711  0021 1f03          	ldw	(OFST-1,sp),x
3713  0023               L7371:
3714                     ; 1115     return (FlagStatus)bitstatus;
3716  0023 1e03          	ldw	x,(OFST-1,sp)
3719  0025 5b06          	addw	sp,#6
3720  0027 81            	ret
3755                     ; 1132 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
3755                     ; 1133 {
3756                     .text:	section	.text,new
3757  0000               _TIM2_ClearFlag:
3761                     ; 1135     assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
3763                     ; 1138     TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
3765  0000 9f            	ld	a,xl
3766  0001 43            	cpl	a
3767  0002 c75304        	ld	21252,a
3768                     ; 1139     TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
3770  0005 35ff5305      	mov	21253,#255
3771                     ; 1140 }
3774  0009 81            	ret
3838                     ; 1154 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
3838                     ; 1155 {
3839                     .text:	section	.text,new
3840  0000               _TIM2_GetITStatus:
3842  0000 89            	pushw	x
3843  0001 5204          	subw	sp,#4
3844       00000004      OFST:	set	4
3847                     ; 1156     ITStatus bitstatus = RESET;
3849                     ; 1157     uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
3853                     ; 1160     assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
3855                     ; 1162     TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
3857  0003 9f            	ld	a,xl
3858  0004 c45304        	and	a,21252
3859  0007 6b01          	ld	(OFST-3,sp),a
3861                     ; 1164     TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
3863  0009 c65303        	ld	a,21251
3864  000c 1406          	and	a,(OFST+2,sp)
3865  000e 6b02          	ld	(OFST-2,sp),a
3867                     ; 1166     if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
3869  0010 0d01          	tnz	(OFST-3,sp)
3870  0012 270b          	jreq	L1102
3872  0014 0d02          	tnz	(OFST-2,sp)
3873  0016 2707          	jreq	L1102
3874                     ; 1168         bitstatus = SET;
3876  0018 ae0001        	ldw	x,#1
3877  001b 1f03          	ldw	(OFST-1,sp),x
3880  001d 2003          	jra	L3102
3881  001f               L1102:
3882                     ; 1172         bitstatus = RESET;
3884  001f 5f            	clrw	x
3885  0020 1f03          	ldw	(OFST-1,sp),x
3887  0022               L3102:
3888                     ; 1174     return (ITStatus)(bitstatus);
3890  0022 1e03          	ldw	x,(OFST-1,sp)
3893  0024 5b06          	addw	sp,#6
3894  0026 81            	ret
3930                     ; 1188 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
3930                     ; 1189 {
3931                     .text:	section	.text,new
3932  0000               _TIM2_ClearITPendingBit:
3936                     ; 1191     assert_param(IS_TIM2_IT_OK(TIM2_IT));
3938                     ; 1194     TIM2->SR1 = (uint8_t)(~TIM2_IT);
3940  0000 9f            	ld	a,xl
3941  0001 43            	cpl	a
3942  0002 c75304        	ld	21252,a
3943                     ; 1195 }
3946  0005 81            	ret
3998                     ; 1214 static void TI1_Config(uint8_t TIM2_ICPolarity,
3998                     ; 1215                        uint8_t TIM2_ICSelection,
3998                     ; 1216                        uint8_t TIM2_ICFilter)
3998                     ; 1217 {
3999                     .text:	section	.text,new
4000  0000               L3_TI1_Config:
4002  0000 89            	pushw	x
4003  0001 88            	push	a
4004       00000001      OFST:	set	1
4007                     ; 1219     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4009  0002 7211530a      	bres	21258,#0
4010                     ; 1222     TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4010                     ; 1223                              | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4012  0006 7b06          	ld	a,(OFST+5,sp)
4013  0008 97            	ld	xl,a
4014  0009 a610          	ld	a,#16
4015  000b 42            	mul	x,a
4016  000c 9f            	ld	a,xl
4017  000d 1a03          	or	a,(OFST+2,sp)
4018  000f 6b01          	ld	(OFST+0,sp),a
4020  0011 c65307        	ld	a,21255
4021  0014 a40c          	and	a,#12
4022  0016 1a01          	or	a,(OFST+0,sp)
4023  0018 c75307        	ld	21255,a
4024                     ; 1226     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4026  001b 0d02          	tnz	(OFST+1,sp)
4027  001d 2706          	jreq	L1602
4028                     ; 1228         TIM2->CCER1 |= TIM2_CCER1_CC1P;
4030  001f 7212530a      	bset	21258,#1
4032  0023 2004          	jra	L3602
4033  0025               L1602:
4034                     ; 1232         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4036  0025 7213530a      	bres	21258,#1
4037  0029               L3602:
4038                     ; 1235     TIM2->CCER1 |= TIM2_CCER1_CC1E;
4040  0029 7210530a      	bset	21258,#0
4041                     ; 1236 }
4044  002d 5b03          	addw	sp,#3
4045  002f 81            	ret
4097                     ; 1255 static void TI2_Config(uint8_t TIM2_ICPolarity,
4097                     ; 1256                        uint8_t TIM2_ICSelection,
4097                     ; 1257                        uint8_t TIM2_ICFilter)
4097                     ; 1258 {
4098                     .text:	section	.text,new
4099  0000               L5_TI2_Config:
4101  0000 89            	pushw	x
4102  0001 88            	push	a
4103       00000001      OFST:	set	1
4106                     ; 1260     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4108  0002 7219530a      	bres	21258,#4
4109                     ; 1263     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4109                     ; 1264                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4111  0006 7b06          	ld	a,(OFST+5,sp)
4112  0008 97            	ld	xl,a
4113  0009 a610          	ld	a,#16
4114  000b 42            	mul	x,a
4115  000c 9f            	ld	a,xl
4116  000d 1a03          	or	a,(OFST+2,sp)
4117  000f 6b01          	ld	(OFST+0,sp),a
4119  0011 c65308        	ld	a,21256
4120  0014 a40c          	and	a,#12
4121  0016 1a01          	or	a,(OFST+0,sp)
4122  0018 c75308        	ld	21256,a
4123                     ; 1268     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4125  001b 0d02          	tnz	(OFST+1,sp)
4126  001d 2706          	jreq	L3112
4127                     ; 1270         TIM2->CCER1 |= TIM2_CCER1_CC2P;
4129  001f 721a530a      	bset	21258,#5
4131  0023 2004          	jra	L5112
4132  0025               L3112:
4133                     ; 1274         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4135  0025 721b530a      	bres	21258,#5
4136  0029               L5112:
4137                     ; 1278     TIM2->CCER1 |= TIM2_CCER1_CC2E;
4139  0029 7218530a      	bset	21258,#4
4140                     ; 1280 }
4143  002d 5b03          	addw	sp,#3
4144  002f 81            	ret
4196                     ; 1296 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4196                     ; 1297                        uint8_t TIM2_ICFilter)
4196                     ; 1298 {
4197                     .text:	section	.text,new
4198  0000               L7_TI3_Config:
4200  0000 89            	pushw	x
4201  0001 88            	push	a
4202       00000001      OFST:	set	1
4205                     ; 1300     TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4207  0002 7211530b      	bres	21259,#0
4208                     ; 1303     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4208                     ; 1304                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4210  0006 7b06          	ld	a,(OFST+5,sp)
4211  0008 97            	ld	xl,a
4212  0009 a610          	ld	a,#16
4213  000b 42            	mul	x,a
4214  000c 9f            	ld	a,xl
4215  000d 1a03          	or	a,(OFST+2,sp)
4216  000f 6b01          	ld	(OFST+0,sp),a
4218  0011 c65309        	ld	a,21257
4219  0014 a40c          	and	a,#12
4220  0016 1a01          	or	a,(OFST+0,sp)
4221  0018 c75309        	ld	21257,a
4222                     ; 1308     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4224  001b 0d02          	tnz	(OFST+1,sp)
4225  001d 2706          	jreq	L5412
4226                     ; 1310         TIM2->CCER2 |= TIM2_CCER2_CC3P;
4228  001f 7212530b      	bset	21259,#1
4230  0023 2004          	jra	L7412
4231  0025               L5412:
4232                     ; 1314         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4234  0025 7213530b      	bres	21259,#1
4235  0029               L7412:
4236                     ; 1317     TIM2->CCER2 |= TIM2_CCER2_CC3E;
4238  0029 7210530b      	bset	21259,#0
4239                     ; 1318 }
4242  002d 5b03          	addw	sp,#3
4243  002f 81            	ret
4256                     	xdef	_TIM2_ClearITPendingBit
4257                     	xdef	_TIM2_GetITStatus
4258                     	xdef	_TIM2_ClearFlag
4259                     	xdef	_TIM2_GetFlagStatus
4260                     	xdef	_TIM2_GetPrescaler
4261                     	xdef	_TIM2_GetCounter
4262                     	xdef	_TIM2_GetCapture3
4263                     	xdef	_TIM2_GetCapture2
4264                     	xdef	_TIM2_GetCapture1
4265                     	xdef	_TIM2_SetIC3Prescaler
4266                     	xdef	_TIM2_SetIC2Prescaler
4267                     	xdef	_TIM2_SetIC1Prescaler
4268                     	xdef	_TIM2_SetCompare3
4269                     	xdef	_TIM2_SetCompare2
4270                     	xdef	_TIM2_SetCompare1
4271                     	xdef	_TIM2_SetAutoreload
4272                     	xdef	_TIM2_SetCounter
4273                     	xdef	_TIM2_SelectOCxM
4274                     	xdef	_TIM2_CCxCmd
4275                     	xdef	_TIM2_OC3PolarityConfig
4276                     	xdef	_TIM2_OC2PolarityConfig
4277                     	xdef	_TIM2_OC1PolarityConfig
4278                     	xdef	_TIM2_GenerateEvent
4279                     	xdef	_TIM2_OC3PreloadConfig
4280                     	xdef	_TIM2_OC2PreloadConfig
4281                     	xdef	_TIM2_OC1PreloadConfig
4282                     	xdef	_TIM2_ARRPreloadConfig
4283                     	xdef	_TIM2_ForcedOC3Config
4284                     	xdef	_TIM2_ForcedOC2Config
4285                     	xdef	_TIM2_ForcedOC1Config
4286                     	xdef	_TIM2_PrescalerConfig
4287                     	xdef	_TIM2_SelectOnePulseMode
4288                     	xdef	_TIM2_UpdateRequestConfig
4289                     	xdef	_TIM2_UpdateDisableConfig
4290                     	xdef	_TIM2_ITConfig
4291                     	xdef	_TIM2_Cmd
4292                     	xdef	_TIM2_PWMIConfig
4293                     	xdef	_TIM2_ICInit
4294                     	xdef	_TIM2_OC3Init
4295                     	xdef	_TIM2_OC2Init
4296                     	xdef	_TIM2_OC1Init
4297                     	xdef	_TIM2_TimeBaseInit
4298                     	xdef	_TIM2_DeInit
4317                     	end
