   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
  45                     ; 52 void TIM1_DeInit(void)
  45                     ; 53 {
  47                     .text:	section	.text,new
  48  0000               _TIM1_DeInit:
  52                     ; 54     TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  54  0000 725f5250      	clr	21072
  55                     ; 55     TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  57  0004 725f5251      	clr	21073
  58                     ; 56     TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  60  0008 725f5252      	clr	21074
  61                     ; 57     TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  63  000c 725f5253      	clr	21075
  64                     ; 58     TIM1->IER  = TIM1_IER_RESET_VALUE;
  66  0010 725f5254      	clr	21076
  67                     ; 59     TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  69  0014 725f5256      	clr	21078
  70                     ; 61     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  72  0018 725f525c      	clr	21084
  73                     ; 62     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  75  001c 725f525d      	clr	21085
  76                     ; 64     TIM1->CCMR1 = 0x01;
  78  0020 35015258      	mov	21080,#1
  79                     ; 65     TIM1->CCMR2 = 0x01;
  81  0024 35015259      	mov	21081,#1
  82                     ; 66     TIM1->CCMR3 = 0x01;
  84  0028 3501525a      	mov	21082,#1
  85                     ; 67     TIM1->CCMR4 = 0x01;
  87  002c 3501525b      	mov	21083,#1
  88                     ; 69     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  90  0030 725f525c      	clr	21084
  91                     ; 70     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  93  0034 725f525d      	clr	21085
  94                     ; 71     TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  96  0038 725f5258      	clr	21080
  97                     ; 72     TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  99  003c 725f5259      	clr	21081
 100                     ; 73     TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 102  0040 725f525a      	clr	21082
 103                     ; 74     TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 105  0044 725f525b      	clr	21083
 106                     ; 75     TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 108  0048 725f525e      	clr	21086
 109                     ; 76     TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 111  004c 725f525f      	clr	21087
 112                     ; 77     TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 114  0050 725f5260      	clr	21088
 115                     ; 78     TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 117  0054 725f5261      	clr	21089
 118                     ; 79     TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 120  0058 35ff5262      	mov	21090,#255
 121                     ; 80     TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 123  005c 35ff5263      	mov	21091,#255
 124                     ; 81     TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 126  0060 725f5265      	clr	21093
 127                     ; 82     TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 129  0064 725f5266      	clr	21094
 130                     ; 83     TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 132  0068 725f5267      	clr	21095
 133                     ; 84     TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 135  006c 725f5268      	clr	21096
 136                     ; 85     TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 138  0070 725f5269      	clr	21097
 139                     ; 86     TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 141  0074 725f526a      	clr	21098
 142                     ; 87     TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 144  0078 725f526b      	clr	21099
 145                     ; 88     TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 147  007c 725f526c      	clr	21100
 148                     ; 89     TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 150  0080 725f526f      	clr	21103
 151                     ; 90     TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 153  0084 35015257      	mov	21079,#1
 154                     ; 91     TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 156  0088 725f526e      	clr	21102
 157                     ; 92     TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 159  008c 725f526d      	clr	21101
 160                     ; 93     TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 162  0090 725f5264      	clr	21092
 163                     ; 94     TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 165  0094 725f5255      	clr	21077
 166                     ; 95 }
 169  0098 81            	ret
 278                     ; 105 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 278                     ; 106                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 278                     ; 107                        uint16_t TIM1_Period,
 278                     ; 108                        uint8_t TIM1_RepetitionCounter)
 278                     ; 109 {
 279                     .text:	section	.text,new
 280  0000               _TIM1_TimeBaseInit:
 282  0000 89            	pushw	x
 283       00000000      OFST:	set	0
 286                     ; 112     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 288                     ; 115     TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 290  0001 7b07          	ld	a,(OFST+7,sp)
 291  0003 c75262        	ld	21090,a
 292                     ; 116     TIM1->ARRL = (uint8_t)(TIM1_Period);
 294  0006 7b08          	ld	a,(OFST+8,sp)
 295  0008 c75263        	ld	21091,a
 296                     ; 119     TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 298  000b 9e            	ld	a,xh
 299  000c c75260        	ld	21088,a
 300                     ; 120     TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 302  000f 9f            	ld	a,xl
 303  0010 c75261        	ld	21089,a
 304                     ; 123     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 304                     ; 124                            | (uint8_t)(TIM1_CounterMode));
 306  0013 c65250        	ld	a,21072
 307  0016 a48f          	and	a,#143
 308  0018 1a06          	or	a,(OFST+6,sp)
 309  001a c75250        	ld	21072,a
 310                     ; 127     TIM1->RCR = TIM1_RepetitionCounter;
 312  001d 7b09          	ld	a,(OFST+9,sp)
 313  001f c75264        	ld	21092,a
 314                     ; 129 }
 317  0022 85            	popw	x
 318  0023 81            	ret
 603                     ; 150 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 603                     ; 151                   TIM1_OutputState_TypeDef TIM1_OutputState,
 603                     ; 152                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 603                     ; 153                   uint16_t TIM1_Pulse,
 603                     ; 154                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 603                     ; 155                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 603                     ; 156                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 603                     ; 157                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 603                     ; 158 {
 604                     .text:	section	.text,new
 605  0000               _TIM1_OC1Init:
 607  0000 89            	pushw	x
 608  0001 5203          	subw	sp,#3
 609       00000003      OFST:	set	3
 612                     ; 160     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 614                     ; 161     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 616                     ; 162     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 618                     ; 163     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 620                     ; 164     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 622                     ; 165     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 624                     ; 166     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 626                     ; 170     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 626                     ; 171                                | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 628  0003 c6525c        	ld	a,21084
 629  0006 a4f0          	and	a,#240
 630  0008 c7525c        	ld	21084,a
 631                     ; 174   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 631                     ; 175                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 631                     ; 176                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 631                     ; 177                                         | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 633  000b 7b11          	ld	a,(OFST+14,sp)
 634  000d a408          	and	a,#8
 635  000f 6b03          	ld	(OFST+0,sp),a
 637  0011 7b0f          	ld	a,(OFST+12,sp)
 638  0013 a402          	and	a,#2
 639  0015 1a03          	or	a,(OFST+0,sp)
 640  0017 6b02          	ld	(OFST-1,sp),a
 642  0019 7b0b          	ld	a,(OFST+8,sp)
 643  001b a404          	and	a,#4
 644  001d 6b01          	ld	(OFST-2,sp),a
 646  001f 7b09          	ld	a,(OFST+6,sp)
 647  0021 a401          	and	a,#1
 648  0023 1a01          	or	a,(OFST-2,sp)
 649  0025 1a02          	or	a,(OFST-1,sp)
 650  0027 ca525c        	or	a,21084
 651  002a c7525c        	ld	21084,a
 652                     ; 180     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 652                     ; 181                             (uint8_t)TIM1_OCMode);
 654  002d c65258        	ld	a,21080
 655  0030 a48f          	and	a,#143
 656  0032 1a05          	or	a,(OFST+2,sp)
 657  0034 c75258        	ld	21080,a
 658                     ; 184     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 660  0037 c6526f        	ld	a,21103
 661  003a a4fc          	and	a,#252
 662  003c c7526f        	ld	21103,a
 663                     ; 186     TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 663                     ; 187                             (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 665  003f 7b15          	ld	a,(OFST+18,sp)
 666  0041 a402          	and	a,#2
 667  0043 6b03          	ld	(OFST+0,sp),a
 669  0045 7b13          	ld	a,(OFST+16,sp)
 670  0047 a401          	and	a,#1
 671  0049 1a03          	or	a,(OFST+0,sp)
 672  004b ca526f        	or	a,21103
 673  004e c7526f        	ld	21103,a
 674                     ; 190     TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 676  0051 7b0c          	ld	a,(OFST+9,sp)
 677  0053 c75265        	ld	21093,a
 678                     ; 191     TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 680  0056 7b0d          	ld	a,(OFST+10,sp)
 681  0058 c75266        	ld	21094,a
 682                     ; 192 }
 685  005b 5b05          	addw	sp,#5
 686  005d 81            	ret
 790                     ; 213 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 790                     ; 214                   TIM1_OutputState_TypeDef TIM1_OutputState,
 790                     ; 215                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 790                     ; 216                   uint16_t TIM1_Pulse,
 790                     ; 217                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 790                     ; 218                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 790                     ; 219                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 790                     ; 220                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 790                     ; 221 {
 791                     .text:	section	.text,new
 792  0000               _TIM1_OC2Init:
 794  0000 89            	pushw	x
 795  0001 5203          	subw	sp,#3
 796       00000003      OFST:	set	3
 799                     ; 223     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 801                     ; 224     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 803                     ; 225     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 805                     ; 226     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 807                     ; 227     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 809                     ; 228     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 811                     ; 229     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 813                     ; 233     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 813                     ; 234                                 TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 815  0003 c6525c        	ld	a,21084
 816  0006 a40f          	and	a,#15
 817  0008 c7525c        	ld	21084,a
 818                     ; 238     TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 818                     ; 239                              (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 818                     ; 240                              (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 818                     ; 241                              (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 820  000b 7b11          	ld	a,(OFST+14,sp)
 821  000d a480          	and	a,#128
 822  000f 6b03          	ld	(OFST+0,sp),a
 824  0011 7b0f          	ld	a,(OFST+12,sp)
 825  0013 a420          	and	a,#32
 826  0015 1a03          	or	a,(OFST+0,sp)
 827  0017 6b02          	ld	(OFST-1,sp),a
 829  0019 7b0b          	ld	a,(OFST+8,sp)
 830  001b a440          	and	a,#64
 831  001d 6b01          	ld	(OFST-2,sp),a
 833  001f 7b09          	ld	a,(OFST+6,sp)
 834  0021 a410          	and	a,#16
 835  0023 1a01          	or	a,(OFST-2,sp)
 836  0025 1a02          	or	a,(OFST-1,sp)
 837  0027 ca525c        	or	a,21084
 838  002a c7525c        	ld	21084,a
 839                     ; 244     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 839                     ; 245                              (uint8_t)TIM1_OCMode);
 841  002d c65259        	ld	a,21081
 842  0030 a48f          	and	a,#143
 843  0032 1a05          	or	a,(OFST+2,sp)
 844  0034 c75259        	ld	21081,a
 845                     ; 248     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 847  0037 c6526f        	ld	a,21103
 848  003a a4f3          	and	a,#243
 849  003c c7526f        	ld	21103,a
 850                     ; 250     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
 850                     ; 251                             (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 852  003f 7b15          	ld	a,(OFST+18,sp)
 853  0041 a408          	and	a,#8
 854  0043 6b03          	ld	(OFST+0,sp),a
 856  0045 7b13          	ld	a,(OFST+16,sp)
 857  0047 a404          	and	a,#4
 858  0049 1a03          	or	a,(OFST+0,sp)
 859  004b ca526f        	or	a,21103
 860  004e c7526f        	ld	21103,a
 861                     ; 254     TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
 863  0051 7b0c          	ld	a,(OFST+9,sp)
 864  0053 c75267        	ld	21095,a
 865                     ; 255     TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
 867  0056 7b0d          	ld	a,(OFST+10,sp)
 868  0058 c75268        	ld	21096,a
 869                     ; 257 }
 872  005b 5b05          	addw	sp,#5
 873  005d 81            	ret
 977                     ; 278 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 977                     ; 279                   TIM1_OutputState_TypeDef TIM1_OutputState,
 977                     ; 280                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 977                     ; 281                   uint16_t TIM1_Pulse,
 977                     ; 282                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 977                     ; 283                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 977                     ; 284                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 977                     ; 285                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 977                     ; 286 {
 978                     .text:	section	.text,new
 979  0000               _TIM1_OC3Init:
 981  0000 89            	pushw	x
 982  0001 5203          	subw	sp,#3
 983       00000003      OFST:	set	3
 986                     ; 288     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 988                     ; 289     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 990                     ; 290     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 992                     ; 291     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 994                     ; 292     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 996                     ; 293     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 998                     ; 294     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1000                     ; 298     TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1000                     ; 299                                 TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1002  0003 c6525d        	ld	a,21085
1003  0006 a4f0          	and	a,#240
1004  0008 c7525d        	ld	21085,a
1005                     ; 302     TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1005                     ; 303                              (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1005                     ; 304                              (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1005                     ; 305                              (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1007  000b 7b11          	ld	a,(OFST+14,sp)
1008  000d a408          	and	a,#8
1009  000f 6b03          	ld	(OFST+0,sp),a
1011  0011 7b0f          	ld	a,(OFST+12,sp)
1012  0013 a402          	and	a,#2
1013  0015 1a03          	or	a,(OFST+0,sp)
1014  0017 6b02          	ld	(OFST-1,sp),a
1016  0019 7b0b          	ld	a,(OFST+8,sp)
1017  001b a404          	and	a,#4
1018  001d 6b01          	ld	(OFST-2,sp),a
1020  001f 7b09          	ld	a,(OFST+6,sp)
1021  0021 a401          	and	a,#1
1022  0023 1a01          	or	a,(OFST-2,sp)
1023  0025 1a02          	or	a,(OFST-1,sp)
1024  0027 ca525d        	or	a,21085
1025  002a c7525d        	ld	21085,a
1026                     ; 308     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1026                     ; 309                              (uint8_t)TIM1_OCMode);
1028  002d c6525a        	ld	a,21082
1029  0030 a48f          	and	a,#143
1030  0032 1a05          	or	a,(OFST+2,sp)
1031  0034 c7525a        	ld	21082,a
1032                     ; 312     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1034  0037 c6526f        	ld	a,21103
1035  003a a4cf          	and	a,#207
1036  003c c7526f        	ld	21103,a
1037                     ; 314     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1037                     ; 315                             (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1039  003f 7b15          	ld	a,(OFST+18,sp)
1040  0041 a420          	and	a,#32
1041  0043 6b03          	ld	(OFST+0,sp),a
1043  0045 7b13          	ld	a,(OFST+16,sp)
1044  0047 a410          	and	a,#16
1045  0049 1a03          	or	a,(OFST+0,sp)
1046  004b ca526f        	or	a,21103
1047  004e c7526f        	ld	21103,a
1048                     ; 318     TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1050  0051 7b0c          	ld	a,(OFST+9,sp)
1051  0053 c75269        	ld	21097,a
1052                     ; 319     TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1054  0056 7b0d          	ld	a,(OFST+10,sp)
1055  0058 c7526a        	ld	21098,a
1056                     ; 321 }
1059  005b 5b05          	addw	sp,#5
1060  005d 81            	ret
1134                     ; 336 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1134                     ; 337                   TIM1_OutputState_TypeDef TIM1_OutputState,
1134                     ; 338                   uint16_t TIM1_Pulse,
1134                     ; 339                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1134                     ; 340                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1134                     ; 341 {
1135                     .text:	section	.text,new
1136  0000               _TIM1_OC4Init:
1138  0000 89            	pushw	x
1139  0001 88            	push	a
1140       00000001      OFST:	set	1
1143                     ; 343     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1145                     ; 344     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1147                     ; 345     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1149                     ; 346     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1151                     ; 349     TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1153  0002 c6525d        	ld	a,21085
1154  0005 a4cf          	and	a,#207
1155  0007 c7525d        	ld	21085,a
1156                     ; 351     TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1156                     ; 352                              (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1158  000a 7b0b          	ld	a,(OFST+10,sp)
1159  000c a420          	and	a,#32
1160  000e 6b01          	ld	(OFST+0,sp),a
1162  0010 7b07          	ld	a,(OFST+6,sp)
1163  0012 a410          	and	a,#16
1164  0014 1a01          	or	a,(OFST+0,sp)
1165  0016 ca525d        	or	a,21085
1166  0019 c7525d        	ld	21085,a
1167                     ; 355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1167                     ; 356                             TIM1_OCMode);
1169  001c c6525b        	ld	a,21083
1170  001f a48f          	and	a,#143
1171  0021 1a03          	or	a,(OFST+2,sp)
1172  0023 c7525b        	ld	21083,a
1173                     ; 359     if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1175  0026 1e0c          	ldw	x,(OFST+11,sp)
1176  0028 270a          	jreq	L534
1177                     ; 361         TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1179  002a c6526f        	ld	a,21103
1180  002d aadf          	or	a,#223
1181  002f c7526f        	ld	21103,a
1183  0032 2004          	jra	L734
1184  0034               L534:
1185                     ; 365         TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1187  0034 721d526f      	bres	21103,#6
1188  0038               L734:
1189                     ; 369     TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1191  0038 7b08          	ld	a,(OFST+7,sp)
1192  003a c7526b        	ld	21099,a
1193                     ; 370     TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1195  003d 7b09          	ld	a,(OFST+8,sp)
1196  003f c7526c        	ld	21100,a
1197                     ; 372 }
1200  0042 5b03          	addw	sp,#3
1201  0044 81            	ret
1406                     ; 387 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1406                     ; 388                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1406                     ; 389                      uint8_t TIM1_DeadTime,
1406                     ; 390                      TIM1_BreakState_TypeDef TIM1_Break,
1406                     ; 391                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1406                     ; 392                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1406                     ; 393 {
1407                     .text:	section	.text,new
1408  0000               _TIM1_BDTRConfig:
1410  0000 89            	pushw	x
1411  0001 88            	push	a
1412       00000001      OFST:	set	1
1415                     ; 395     assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1417                     ; 396     assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1419                     ; 397     assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1421                     ; 398     assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1423                     ; 399     assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1425                     ; 401     TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1427  0002 7b08          	ld	a,(OFST+7,sp)
1428  0004 c7526e        	ld	21102,a
1429                     ; 405     TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1429                     ; 406                             (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1429                     ; 407                             (uint8_t)TIM1_AutomaticOutput));
1431  0007 7b0c          	ld	a,(OFST+11,sp)
1432  0009 1a0a          	or	a,(OFST+9,sp)
1433  000b 1a0e          	or	a,(OFST+13,sp)
1434  000d 6b01          	ld	(OFST+0,sp),a
1436  000f 9f            	ld	a,xl
1437  0010 1a07          	or	a,(OFST+6,sp)
1438  0012 1a01          	or	a,(OFST+0,sp)
1439  0014 c7526d        	ld	21101,a
1440                     ; 409 }
1443  0017 5b03          	addw	sp,#3
1444  0019 81            	ret
1646                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1646                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1646                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1646                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1646                     ; 427                  uint8_t TIM1_ICFilter)
1646                     ; 428 {
1647                     .text:	section	.text,new
1648  0000               _TIM1_ICInit:
1650  0000 89            	pushw	x
1651       00000000      OFST:	set	0
1654                     ; 431     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1656                     ; 432     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1658                     ; 433     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1660                     ; 434     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1662                     ; 435     assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
1664                     ; 437     if (TIM1_Channel == TIM1_CHANNEL_1)
1666  0001 a30000        	cpw	x,#0
1667  0004 2614          	jrne	L766
1668                     ; 440         TI1_Config((uint8_t)TIM1_ICPolarity,
1668                     ; 441                    (uint8_t)TIM1_ICSelection,
1668                     ; 442                    (uint8_t)TIM1_ICFilter);
1670  0006 7b0b          	ld	a,(OFST+11,sp)
1671  0008 88            	push	a
1672  0009 7b09          	ld	a,(OFST+9,sp)
1673  000b 97            	ld	xl,a
1674  000c 7b07          	ld	a,(OFST+7,sp)
1675  000e 95            	ld	xh,a
1676  000f cd0000        	call	L3_TI1_Config
1678  0012 84            	pop	a
1679                     ; 444         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1681  0013 1e09          	ldw	x,(OFST+9,sp)
1682  0015 cd0000        	call	_TIM1_SetIC1Prescaler
1685  0018 2048          	jra	L176
1686  001a               L766:
1687                     ; 446     else if (TIM1_Channel == TIM1_CHANNEL_2)
1689  001a 1e01          	ldw	x,(OFST+1,sp)
1690  001c a30001        	cpw	x,#1
1691  001f 2614          	jrne	L376
1692                     ; 449         TI2_Config((uint8_t)TIM1_ICPolarity,
1692                     ; 450                    (uint8_t)TIM1_ICSelection,
1692                     ; 451                    (uint8_t)TIM1_ICFilter);
1694  0021 7b0b          	ld	a,(OFST+11,sp)
1695  0023 88            	push	a
1696  0024 7b09          	ld	a,(OFST+9,sp)
1697  0026 97            	ld	xl,a
1698  0027 7b07          	ld	a,(OFST+7,sp)
1699  0029 95            	ld	xh,a
1700  002a cd0000        	call	L5_TI2_Config
1702  002d 84            	pop	a
1703                     ; 453         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1705  002e 1e09          	ldw	x,(OFST+9,sp)
1706  0030 cd0000        	call	_TIM1_SetIC2Prescaler
1709  0033 202d          	jra	L176
1710  0035               L376:
1711                     ; 455     else if (TIM1_Channel == TIM1_CHANNEL_3)
1713  0035 1e01          	ldw	x,(OFST+1,sp)
1714  0037 a30002        	cpw	x,#2
1715  003a 2614          	jrne	L776
1716                     ; 458         TI3_Config((uint8_t)TIM1_ICPolarity,
1716                     ; 459                    (uint8_t)TIM1_ICSelection,
1716                     ; 460                    (uint8_t)TIM1_ICFilter);
1718  003c 7b0b          	ld	a,(OFST+11,sp)
1719  003e 88            	push	a
1720  003f 7b09          	ld	a,(OFST+9,sp)
1721  0041 97            	ld	xl,a
1722  0042 7b07          	ld	a,(OFST+7,sp)
1723  0044 95            	ld	xh,a
1724  0045 cd0000        	call	L7_TI3_Config
1726  0048 84            	pop	a
1727                     ; 462         TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
1729  0049 1e09          	ldw	x,(OFST+9,sp)
1730  004b cd0000        	call	_TIM1_SetIC3Prescaler
1733  004e 2012          	jra	L176
1734  0050               L776:
1735                     ; 467         TI4_Config((uint8_t)TIM1_ICPolarity,
1735                     ; 468                    (uint8_t)TIM1_ICSelection,
1735                     ; 469                    (uint8_t)TIM1_ICFilter);
1737  0050 7b0b          	ld	a,(OFST+11,sp)
1738  0052 88            	push	a
1739  0053 7b09          	ld	a,(OFST+9,sp)
1740  0055 97            	ld	xl,a
1741  0056 7b07          	ld	a,(OFST+7,sp)
1742  0058 95            	ld	xh,a
1743  0059 cd0000        	call	L11_TI4_Config
1745  005c 84            	pop	a
1746                     ; 471         TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
1748  005d 1e09          	ldw	x,(OFST+9,sp)
1749  005f cd0000        	call	_TIM1_SetIC4Prescaler
1751  0062               L176:
1752                     ; 474 }
1755  0062 85            	popw	x
1756  0063 81            	ret
1852                     ; 490 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
1852                     ; 491                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1852                     ; 492                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
1852                     ; 493                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1852                     ; 494                      uint8_t TIM1_ICFilter)
1852                     ; 495 {
1853                     .text:	section	.text,new
1854  0000               _TIM1_PWMIConfig:
1856  0000 89            	pushw	x
1857  0001 89            	pushw	x
1858       00000002      OFST:	set	2
1861                     ; 496     uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
1863                     ; 497     uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
1865                     ; 500     assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
1867                     ; 501     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1869                     ; 502     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1871                     ; 503     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1873                     ; 506     if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
1875  0002 1e07          	ldw	x,(OFST+5,sp)
1876  0004 a30001        	cpw	x,#1
1877  0007 2706          	jreq	L157
1878                     ; 508         icpolarity = TIM1_ICPOLARITY_FALLING;
1880  0009 a601          	ld	a,#1
1881  000b 6b01          	ld	(OFST-1,sp),a
1884  000d 2002          	jra	L357
1885  000f               L157:
1886                     ; 512         icpolarity = TIM1_ICPOLARITY_RISING;
1888  000f 0f01          	clr	(OFST-1,sp)
1890  0011               L357:
1891                     ; 516     if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
1893  0011 1e09          	ldw	x,(OFST+7,sp)
1894  0013 a30001        	cpw	x,#1
1895  0016 2606          	jrne	L557
1896                     ; 518         icselection = TIM1_ICSELECTION_INDIRECTTI;
1898  0018 a602          	ld	a,#2
1899  001a 6b02          	ld	(OFST+0,sp),a
1902  001c 2004          	jra	L757
1903  001e               L557:
1904                     ; 522         icselection = TIM1_ICSELECTION_DIRECTTI;
1906  001e a601          	ld	a,#1
1907  0020 6b02          	ld	(OFST+0,sp),a
1909  0022               L757:
1910                     ; 525     if (TIM1_Channel == TIM1_CHANNEL_1)
1912  0022 1e03          	ldw	x,(OFST+1,sp)
1913  0024 2626          	jrne	L167
1914                     ; 528         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1914                     ; 529                    (uint8_t)TIM1_ICFilter);
1916  0026 7b0d          	ld	a,(OFST+11,sp)
1917  0028 88            	push	a
1918  0029 7b0b          	ld	a,(OFST+9,sp)
1919  002b 97            	ld	xl,a
1920  002c 7b09          	ld	a,(OFST+7,sp)
1921  002e 95            	ld	xh,a
1922  002f cd0000        	call	L3_TI1_Config
1924  0032 84            	pop	a
1925                     ; 532         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1927  0033 1e0b          	ldw	x,(OFST+9,sp)
1928  0035 cd0000        	call	_TIM1_SetIC1Prescaler
1930                     ; 535         TI2_Config(icpolarity, icselection, TIM1_ICFilter);
1932  0038 7b0d          	ld	a,(OFST+11,sp)
1933  003a 88            	push	a
1934  003b 7b03          	ld	a,(OFST+1,sp)
1935  003d 97            	ld	xl,a
1936  003e 7b02          	ld	a,(OFST+0,sp)
1937  0040 95            	ld	xh,a
1938  0041 cd0000        	call	L5_TI2_Config
1940  0044 84            	pop	a
1941                     ; 538         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1943  0045 1e0b          	ldw	x,(OFST+9,sp)
1944  0047 cd0000        	call	_TIM1_SetIC2Prescaler
1947  004a 2024          	jra	L367
1948  004c               L167:
1949                     ; 543         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1949                     ; 544                    (uint8_t)TIM1_ICFilter);
1951  004c 7b0d          	ld	a,(OFST+11,sp)
1952  004e 88            	push	a
1953  004f 7b0b          	ld	a,(OFST+9,sp)
1954  0051 97            	ld	xl,a
1955  0052 7b09          	ld	a,(OFST+7,sp)
1956  0054 95            	ld	xh,a
1957  0055 cd0000        	call	L5_TI2_Config
1959  0058 84            	pop	a
1960                     ; 547         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1962  0059 1e0b          	ldw	x,(OFST+9,sp)
1963  005b cd0000        	call	_TIM1_SetIC2Prescaler
1965                     ; 550         TI1_Config(icpolarity, icselection, TIM1_ICFilter);
1967  005e 7b0d          	ld	a,(OFST+11,sp)
1968  0060 88            	push	a
1969  0061 7b03          	ld	a,(OFST+1,sp)
1970  0063 97            	ld	xl,a
1971  0064 7b02          	ld	a,(OFST+0,sp)
1972  0066 95            	ld	xh,a
1973  0067 cd0000        	call	L3_TI1_Config
1975  006a 84            	pop	a
1976                     ; 553         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1978  006b 1e0b          	ldw	x,(OFST+9,sp)
1979  006d cd0000        	call	_TIM1_SetIC1Prescaler
1981  0070               L367:
1982                     ; 555 }
1985  0070 5b04          	addw	sp,#4
1986  0072 81            	ret
2041                     ; 563 void TIM1_Cmd(FunctionalState NewState)
2041                     ; 564 {
2042                     .text:	section	.text,new
2043  0000               _TIM1_Cmd:
2047                     ; 566     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2049                     ; 569     if (NewState != DISABLE)
2051  0000 a30000        	cpw	x,#0
2052  0003 2706          	jreq	L3101
2053                     ; 571         TIM1->CR1 |= TIM1_CR1_CEN;
2055  0005 72105250      	bset	21072,#0
2057  0009 2004          	jra	L5101
2058  000b               L3101:
2059                     ; 575         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2061  000b 72115250      	bres	21072,#0
2062  000f               L5101:
2063                     ; 577 }
2066  000f 81            	ret
2102                     ; 585 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2102                     ; 586 {
2103                     .text:	section	.text,new
2104  0000               _TIM1_CtrlPWMOutputs:
2108                     ; 588     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2110                     ; 592     if (NewState != DISABLE)
2112  0000 a30000        	cpw	x,#0
2113  0003 2706          	jreq	L5301
2114                     ; 594         TIM1->BKR |= TIM1_BKR_MOE;
2116  0005 721e526d      	bset	21101,#7
2118  0009 2004          	jra	L7301
2119  000b               L5301:
2120                     ; 598         TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2122  000b 721f526d      	bres	21101,#7
2123  000f               L7301:
2124                     ; 600 }
2127  000f 81            	ret
2234                     ; 619 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2234                     ; 620 {
2235                     .text:	section	.text,new
2236  0000               _TIM1_ITConfig:
2238  0000 89            	pushw	x
2239       00000000      OFST:	set	0
2242                     ; 622     assert_param(IS_TIM1_IT_OK(TIM1_IT));
2244                     ; 623     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2246                     ; 625     if (NewState != DISABLE)
2248  0001 1e05          	ldw	x,(OFST+5,sp)
2249  0003 270a          	jreq	L7011
2250                     ; 628         TIM1->IER |= (uint8_t)TIM1_IT;
2252  0005 c65254        	ld	a,21076
2253  0008 1a02          	or	a,(OFST+2,sp)
2254  000a c75254        	ld	21076,a
2256  000d 2009          	jra	L1111
2257  000f               L7011:
2258                     ; 633         TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2260  000f 7b02          	ld	a,(OFST+2,sp)
2261  0011 43            	cpl	a
2262  0012 c45254        	and	a,21076
2263  0015 c75254        	ld	21076,a
2264  0018               L1111:
2265                     ; 635 }
2268  0018 85            	popw	x
2269  0019 81            	ret
2293                     ; 642 void TIM1_InternalClockConfig(void)
2293                     ; 643 {
2294                     .text:	section	.text,new
2295  0000               _TIM1_InternalClockConfig:
2299                     ; 645     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2301  0000 c65252        	ld	a,21074
2302  0003 a4f8          	and	a,#248
2303  0005 c75252        	ld	21074,a
2304                     ; 646 }
2307  0008 81            	ret
2424                     ; 664 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2424                     ; 665                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2424                     ; 666                               uint8_t ExtTRGFilter)
2424                     ; 667 {
2425                     .text:	section	.text,new
2426  0000               _TIM1_ETRClockMode1Config:
2428  0000 89            	pushw	x
2429       00000000      OFST:	set	0
2432                     ; 669     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2434                     ; 670     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2436                     ; 673     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2438  0001 7b07          	ld	a,(OFST+7,sp)
2439  0003 88            	push	a
2440  0004 1e06          	ldw	x,(OFST+6,sp)
2441  0006 89            	pushw	x
2442  0007 1e04          	ldw	x,(OFST+4,sp)
2443  0009 cd0000        	call	_TIM1_ETRConfig
2445  000c 5b03          	addw	sp,#3
2446                     ; 676     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2446                     ; 677                            | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2448  000e c65252        	ld	a,21074
2449  0011 a488          	and	a,#136
2450  0013 aa77          	or	a,#119
2451  0015 c75252        	ld	21074,a
2452                     ; 678 }
2455  0018 85            	popw	x
2456  0019 81            	ret
2514                     ; 696 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2514                     ; 697                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2514                     ; 698                               uint8_t ExtTRGFilter)
2514                     ; 699 {
2515                     .text:	section	.text,new
2516  0000               _TIM1_ETRClockMode2Config:
2518  0000 89            	pushw	x
2519       00000000      OFST:	set	0
2522                     ; 701     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2524                     ; 702     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2526                     ; 705     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2528  0001 7b07          	ld	a,(OFST+7,sp)
2529  0003 88            	push	a
2530  0004 1e06          	ldw	x,(OFST+6,sp)
2531  0006 89            	pushw	x
2532  0007 1e04          	ldw	x,(OFST+4,sp)
2533  0009 cd0000        	call	_TIM1_ETRConfig
2535  000c 5b03          	addw	sp,#3
2536                     ; 708     TIM1->ETR |= TIM1_ETR_ECE;
2538  000e 721c5253      	bset	21075,#6
2539                     ; 709 }
2542  0012 85            	popw	x
2543  0013 81            	ret
2599                     ; 727 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2599                     ; 728                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2599                     ; 729                     uint8_t ExtTRGFilter)
2599                     ; 730 {
2600                     .text:	section	.text,new
2601  0000               _TIM1_ETRConfig:
2603  0000 89            	pushw	x
2604       00000000      OFST:	set	0
2607                     ; 732     assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
2609                     ; 734     TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
2609                     ; 735                       (uint8_t)ExtTRGFilter );
2611  0001 9f            	ld	a,xl
2612  0002 1a06          	or	a,(OFST+6,sp)
2613  0004 1a07          	or	a,(OFST+7,sp)
2614  0006 ca5253        	or	a,21075
2615  0009 c75253        	ld	21075,a
2616                     ; 736 }
2619  000c 85            	popw	x
2620  000d 81            	ret
2709                     ; 753 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
2709                     ; 754                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2709                     ; 755                                  uint8_t ICFilter)
2709                     ; 756 {
2710                     .text:	section	.text,new
2711  0000               _TIM1_TIxExternalClockConfig:
2713  0000 89            	pushw	x
2714       00000000      OFST:	set	0
2717                     ; 758     assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
2719                     ; 759     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2721                     ; 760     assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
2723                     ; 763     if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
2725  0001 a30060        	cpw	x,#96
2726  0004 260f          	jrne	L1131
2727                     ; 765         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2729  0006 7b07          	ld	a,(OFST+7,sp)
2730  0008 88            	push	a
2731  0009 7b07          	ld	a,(OFST+7,sp)
2732  000b ae0001        	ldw	x,#1
2733  000e 95            	ld	xh,a
2734  000f cd0000        	call	L5_TI2_Config
2736  0012 84            	pop	a
2738  0013 200d          	jra	L3131
2739  0015               L1131:
2740                     ; 769         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2742  0015 7b07          	ld	a,(OFST+7,sp)
2743  0017 88            	push	a
2744  0018 7b07          	ld	a,(OFST+7,sp)
2745  001a ae0001        	ldw	x,#1
2746  001d 95            	ld	xh,a
2747  001e cd0000        	call	L3_TI1_Config
2749  0021 84            	pop	a
2750  0022               L3131:
2751                     ; 773     TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
2753  0022 1e01          	ldw	x,(OFST+1,sp)
2754  0024 cd0000        	call	_TIM1_SelectInputTrigger
2756                     ; 776     TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
2758  0027 c65252        	ld	a,21074
2759  002a aa07          	or	a,#7
2760  002c c75252        	ld	21074,a
2761                     ; 777 }
2764  002f 85            	popw	x
2765  0030 81            	ret
2850                     ; 789 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
2850                     ; 790 {
2851                     .text:	section	.text,new
2852  0000               _TIM1_SelectInputTrigger:
2854  0000 89            	pushw	x
2855       00000000      OFST:	set	0
2858                     ; 792     assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
2860                     ; 795     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
2862  0001 c65252        	ld	a,21074
2863  0004 a48f          	and	a,#143
2864  0006 1a02          	or	a,(OFST+2,sp)
2865  0008 c75252        	ld	21074,a
2866                     ; 796 }
2869  000b 85            	popw	x
2870  000c 81            	ret
2906                     ; 806 void TIM1_UpdateDisableConfig(FunctionalState NewState)
2906                     ; 807 {
2907                     .text:	section	.text,new
2908  0000               _TIM1_UpdateDisableConfig:
2912                     ; 809     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2914                     ; 812     if (NewState != DISABLE)
2916  0000 a30000        	cpw	x,#0
2917  0003 2706          	jreq	L1731
2918                     ; 814         TIM1->CR1 |= TIM1_CR1_UDIS;
2920  0005 72125250      	bset	21072,#1
2922  0009 2004          	jra	L3731
2923  000b               L1731:
2924                     ; 818         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
2926  000b 72135250      	bres	21072,#1
2927  000f               L3731:
2928                     ; 820 }
2931  000f 81            	ret
2989                     ; 830 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
2989                     ; 831 {
2990                     .text:	section	.text,new
2991  0000               _TIM1_UpdateRequestConfig:
2995                     ; 833     assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
2997                     ; 836     if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
2999  0000 a30000        	cpw	x,#0
3000  0003 2706          	jreq	L3241
3001                     ; 838         TIM1->CR1 |= TIM1_CR1_URS;
3003  0005 72145250      	bset	21072,#2
3005  0009 2004          	jra	L5241
3006  000b               L3241:
3007                     ; 842         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3009  000b 72155250      	bres	21072,#2
3010  000f               L5241:
3011                     ; 844 }
3014  000f 81            	ret
3050                     ; 853 void TIM1_SelectHallSensor(FunctionalState NewState)
3050                     ; 854 {
3051                     .text:	section	.text,new
3052  0000               _TIM1_SelectHallSensor:
3056                     ; 856     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3058                     ; 859     if (NewState != DISABLE)
3060  0000 a30000        	cpw	x,#0
3061  0003 2706          	jreq	L5441
3062                     ; 861         TIM1->CR2 |= TIM1_CR2_TI1S;
3064  0005 721e5251      	bset	21073,#7
3066  0009 2004          	jra	L7441
3067  000b               L5441:
3068                     ; 865         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3070  000b 721f5251      	bres	21073,#7
3071  000f               L7441:
3072                     ; 867 }
3075  000f 81            	ret
3132                     ; 878 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3132                     ; 879 {
3133                     .text:	section	.text,new
3134  0000               _TIM1_SelectOnePulseMode:
3138                     ; 881     assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3140                     ; 884     if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3142  0000 a30000        	cpw	x,#0
3143  0003 2706          	jreq	L7741
3144                     ; 886         TIM1->CR1 |= TIM1_CR1_OPM;
3146  0005 72165250      	bset	21072,#3
3148  0009 2004          	jra	L1051
3149  000b               L7741:
3150                     ; 890         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3152  000b 72175250      	bres	21072,#3
3153  000f               L1051:
3154                     ; 893 }
3157  000f 81            	ret
3255                     ; 909 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3255                     ; 910 {
3256                     .text:	section	.text,new
3257  0000               _TIM1_SelectOutputTrigger:
3259  0000 89            	pushw	x
3260       00000000      OFST:	set	0
3263                     ; 912     assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3265                     ; 915     TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3265                     ; 916                           (uint8_t) TIM1_TRGOSource);
3267  0001 c65251        	ld	a,21073
3268  0004 a48f          	and	a,#143
3269  0006 1a02          	or	a,(OFST+2,sp)
3270  0008 c75251        	ld	21073,a
3271                     ; 917 }
3274  000b 85            	popw	x
3275  000c 81            	ret
3349                     ; 929 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
3349                     ; 930 {
3350                     .text:	section	.text,new
3351  0000               _TIM1_SelectSlaveMode:
3353  0000 89            	pushw	x
3354       00000000      OFST:	set	0
3357                     ; 933     assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
3359                     ; 936     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
3359                     ; 937                            (uint8_t)TIM1_SlaveMode);
3361  0001 c65252        	ld	a,21074
3362  0004 a4f8          	and	a,#248
3363  0006 1a02          	or	a,(OFST+2,sp)
3364  0008 c75252        	ld	21074,a
3365                     ; 939 }
3368  000b 85            	popw	x
3369  000c 81            	ret
3405                     ; 947 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
3405                     ; 948 {
3406                     .text:	section	.text,new
3407  0000               _TIM1_SelectMasterSlaveMode:
3411                     ; 950     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3413                     ; 953     if (NewState != DISABLE)
3415  0000 a30000        	cpw	x,#0
3416  0003 2706          	jreq	L3161
3417                     ; 955         TIM1->SMCR |= TIM1_SMCR_MSM;
3419  0005 721e5252      	bset	21074,#7
3421  0009 2004          	jra	L5161
3422  000b               L3161:
3423                     ; 959         TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
3425  000b 721f5252      	bres	21074,#7
3426  000f               L5161:
3427                     ; 961 }
3430  000f 81            	ret
3516                     ; 983 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
3516                     ; 984                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
3516                     ; 985                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
3516                     ; 986 {
3517                     .text:	section	.text,new
3518  0000               _TIM1_EncoderInterfaceConfig:
3520  0000 89            	pushw	x
3521       00000000      OFST:	set	0
3524                     ; 990     assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
3526                     ; 991     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
3528                     ; 992     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
3530                     ; 995     if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
3532  0001 1e05          	ldw	x,(OFST+5,sp)
3533  0003 2706          	jreq	L7561
3534                     ; 997         TIM1->CCER1 |= TIM1_CCER1_CC1P;
3536  0005 7212525c      	bset	21084,#1
3538  0009 2004          	jra	L1661
3539  000b               L7561:
3540                     ; 1001         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
3542  000b 7213525c      	bres	21084,#1
3543  000f               L1661:
3544                     ; 1004     if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
3546  000f 1e07          	ldw	x,(OFST+7,sp)
3547  0011 2706          	jreq	L3661
3548                     ; 1006         TIM1->CCER1 |= TIM1_CCER1_CC2P;
3550  0013 721a525c      	bset	21084,#5
3552  0017 2004          	jra	L5661
3553  0019               L3661:
3554                     ; 1010         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
3556  0019 721b525c      	bres	21084,#5
3557  001d               L5661:
3558                     ; 1013     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
3558                     ; 1014                            | (uint8_t) TIM1_EncoderMode);
3560  001d c65252        	ld	a,21074
3561  0020 a4f0          	and	a,#240
3562  0022 1a02          	or	a,(OFST+2,sp)
3563  0024 c75252        	ld	21074,a
3564                     ; 1017     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
3564                     ; 1018                             | (uint8_t) CCMR_TIxDirect_Set);
3566  0027 c65258        	ld	a,21080
3567  002a a4fc          	and	a,#252
3568  002c aa01          	or	a,#1
3569  002e c75258        	ld	21080,a
3570                     ; 1019     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
3570                     ; 1020                             | (uint8_t) CCMR_TIxDirect_Set);
3572  0031 c65259        	ld	a,21081
3573  0034 a4fc          	and	a,#252
3574  0036 aa01          	or	a,#1
3575  0038 c75259        	ld	21081,a
3576                     ; 1022 }
3579  003b 85            	popw	x
3580  003c 81            	ret
3647                     ; 1035 void TIM1_PrescalerConfig(uint16_t Prescaler,
3647                     ; 1036                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
3647                     ; 1037 {
3648                     .text:	section	.text,new
3649  0000               _TIM1_PrescalerConfig:
3651  0000 89            	pushw	x
3652       00000000      OFST:	set	0
3655                     ; 1039     assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
3657                     ; 1042     TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
3659  0001 9e            	ld	a,xh
3660  0002 c75260        	ld	21088,a
3661                     ; 1043     TIM1->PSCRL = (uint8_t)(Prescaler);
3663  0005 9f            	ld	a,xl
3664  0006 c75261        	ld	21089,a
3665                     ; 1046     TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
3667  0009 7b06          	ld	a,(OFST+6,sp)
3668  000b c75257        	ld	21079,a
3669                     ; 1048 }
3672  000e 85            	popw	x
3673  000f 81            	ret
3709                     ; 1061 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
3709                     ; 1062 {
3710                     .text:	section	.text,new
3711  0000               _TIM1_CounterModeConfig:
3713  0000 89            	pushw	x
3714       00000000      OFST:	set	0
3717                     ; 1064     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
3719                     ; 1068     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
3719                     ; 1069                           | (uint8_t)TIM1_CounterMode);
3721  0001 c65250        	ld	a,21072
3722  0004 a48f          	and	a,#143
3723  0006 1a02          	or	a,(OFST+2,sp)
3724  0008 c75250        	ld	21072,a
3725                     ; 1070 }
3728  000b 85            	popw	x
3729  000c 81            	ret
3787                     ; 1081 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3787                     ; 1082 {
3788                     .text:	section	.text,new
3789  0000               _TIM1_ForcedOC1Config:
3791  0000 89            	pushw	x
3792       00000000      OFST:	set	0
3795                     ; 1084     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3797                     ; 1087     TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
3797                     ; 1088                              (uint8_t)TIM1_ForcedAction);
3799  0001 c65258        	ld	a,21080
3800  0004 a48f          	and	a,#143
3801  0006 1a02          	or	a,(OFST+2,sp)
3802  0008 c75258        	ld	21080,a
3803                     ; 1089 }
3806  000b 85            	popw	x
3807  000c 81            	ret
3843                     ; 1100 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3843                     ; 1101 {
3844                     .text:	section	.text,new
3845  0000               _TIM1_ForcedOC2Config:
3847  0000 89            	pushw	x
3848       00000000      OFST:	set	0
3851                     ; 1103     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3853                     ; 1106     TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
3853                     ; 1107                               | (uint8_t)TIM1_ForcedAction);
3855  0001 c65259        	ld	a,21081
3856  0004 a48f          	and	a,#143
3857  0006 1a02          	or	a,(OFST+2,sp)
3858  0008 c75259        	ld	21081,a
3859                     ; 1108 }
3862  000b 85            	popw	x
3863  000c 81            	ret
3899                     ; 1120 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3899                     ; 1121 {
3900                     .text:	section	.text,new
3901  0000               _TIM1_ForcedOC3Config:
3903  0000 89            	pushw	x
3904       00000000      OFST:	set	0
3907                     ; 1123     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3909                     ; 1126     TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
3909                     ; 1127                               | (uint8_t)TIM1_ForcedAction);
3911  0001 c6525a        	ld	a,21082
3912  0004 a48f          	and	a,#143
3913  0006 1a02          	or	a,(OFST+2,sp)
3914  0008 c7525a        	ld	21082,a
3915                     ; 1128 }
3918  000b 85            	popw	x
3919  000c 81            	ret
3955                     ; 1140 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3955                     ; 1141 {
3956                     .text:	section	.text,new
3957  0000               _TIM1_ForcedOC4Config:
3959  0000 89            	pushw	x
3960       00000000      OFST:	set	0
3963                     ; 1143     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3965                     ; 1146     TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
3965                     ; 1147                               | (uint8_t)TIM1_ForcedAction);
3967  0001 c6525b        	ld	a,21083
3968  0004 a48f          	and	a,#143
3969  0006 1a02          	or	a,(OFST+2,sp)
3970  0008 c7525b        	ld	21083,a
3971                     ; 1148 }
3974  000b 85            	popw	x
3975  000c 81            	ret
4011                     ; 1157 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4011                     ; 1158 {
4012                     .text:	section	.text,new
4013  0000               _TIM1_ARRPreloadConfig:
4017                     ; 1160     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4019                     ; 1163     if (NewState != DISABLE)
4021  0000 a30000        	cpw	x,#0
4022  0003 2706          	jreq	L5502
4023                     ; 1165         TIM1->CR1 |= TIM1_CR1_ARPE;
4025  0005 721e5250      	bset	21072,#7
4027  0009 2004          	jra	L7502
4028  000b               L5502:
4029                     ; 1169         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4031  000b 721f5250      	bres	21072,#7
4032  000f               L7502:
4033                     ; 1171 }
4036  000f 81            	ret
4071                     ; 1180 void TIM1_SelectCOM(FunctionalState NewState)
4071                     ; 1181 {
4072                     .text:	section	.text,new
4073  0000               _TIM1_SelectCOM:
4077                     ; 1183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4079                     ; 1186     if (NewState != DISABLE)
4081  0000 a30000        	cpw	x,#0
4082  0003 2706          	jreq	L7702
4083                     ; 1188         TIM1->CR2 |= TIM1_CR2_COMS;
4085  0005 72145251      	bset	21073,#2
4087  0009 2004          	jra	L1012
4088  000b               L7702:
4089                     ; 1192         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4091  000b 72155251      	bres	21073,#2
4092  000f               L1012:
4093                     ; 1194 }
4096  000f 81            	ret
4132                     ; 1202 void TIM1_CCPreloadControl(FunctionalState NewState)
4132                     ; 1203 {
4133                     .text:	section	.text,new
4134  0000               _TIM1_CCPreloadControl:
4138                     ; 1205     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4140                     ; 1208     if (NewState != DISABLE)
4142  0000 a30000        	cpw	x,#0
4143  0003 2706          	jreq	L1212
4144                     ; 1210         TIM1->CR2 |= TIM1_CR2_CCPC;
4146  0005 72105251      	bset	21073,#0
4148  0009 2004          	jra	L3212
4149  000b               L1212:
4150                     ; 1214         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
4152  000b 72115251      	bres	21073,#0
4153  000f               L3212:
4154                     ; 1216 }
4157  000f 81            	ret
4193                     ; 1225 void TIM1_OC1PreloadConfig(FunctionalState NewState)
4193                     ; 1226 {
4194                     .text:	section	.text,new
4195  0000               _TIM1_OC1PreloadConfig:
4199                     ; 1228     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4201                     ; 1231     if (NewState != DISABLE)
4203  0000 a30000        	cpw	x,#0
4204  0003 2706          	jreq	L3412
4205                     ; 1233         TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
4207  0005 72165258      	bset	21080,#3
4209  0009 2004          	jra	L5412
4210  000b               L3412:
4211                     ; 1237         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4213  000b 72175258      	bres	21080,#3
4214  000f               L5412:
4215                     ; 1239 }
4218  000f 81            	ret
4254                     ; 1248 void TIM1_OC2PreloadConfig(FunctionalState NewState)
4254                     ; 1249 {
4255                     .text:	section	.text,new
4256  0000               _TIM1_OC2PreloadConfig:
4260                     ; 1251     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4262                     ; 1254     if (NewState != DISABLE)
4264  0000 a30000        	cpw	x,#0
4265  0003 2706          	jreq	L5612
4266                     ; 1256         TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
4268  0005 72165259      	bset	21081,#3
4270  0009 2004          	jra	L7612
4271  000b               L5612:
4272                     ; 1260         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4274  000b 72175259      	bres	21081,#3
4275  000f               L7612:
4276                     ; 1262 }
4279  000f 81            	ret
4315                     ; 1271 void TIM1_OC3PreloadConfig(FunctionalState NewState)
4315                     ; 1272 {
4316                     .text:	section	.text,new
4317  0000               _TIM1_OC3PreloadConfig:
4321                     ; 1274     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4323                     ; 1277     if (NewState != DISABLE)
4325  0000 a30000        	cpw	x,#0
4326  0003 2706          	jreq	L7022
4327                     ; 1279         TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
4329  0005 7216525a      	bset	21082,#3
4331  0009 2004          	jra	L1122
4332  000b               L7022:
4333                     ; 1283         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4335  000b 7217525a      	bres	21082,#3
4336  000f               L1122:
4337                     ; 1285 }
4340  000f 81            	ret
4376                     ; 1295 void TIM1_OC4PreloadConfig(FunctionalState NewState)
4376                     ; 1296 {
4377                     .text:	section	.text,new
4378  0000               _TIM1_OC4PreloadConfig:
4382                     ; 1298     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4384                     ; 1301     if (NewState != DISABLE)
4386  0000 a30000        	cpw	x,#0
4387  0003 2706          	jreq	L1322
4388                     ; 1303         TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
4390  0005 7216525b      	bset	21083,#3
4392  0009 2004          	jra	L3322
4393  000b               L1322:
4394                     ; 1307         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4396  000b 7217525b      	bres	21083,#3
4397  000f               L3322:
4398                     ; 1309 }
4401  000f 81            	ret
4436                     ; 1317 void TIM1_OC1FastConfig(FunctionalState NewState)
4436                     ; 1318 {
4437                     .text:	section	.text,new
4438  0000               _TIM1_OC1FastConfig:
4442                     ; 1320     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4444                     ; 1323     if (NewState != DISABLE)
4446  0000 a30000        	cpw	x,#0
4447  0003 2706          	jreq	L3522
4448                     ; 1325         TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
4450  0005 72145258      	bset	21080,#2
4452  0009 2004          	jra	L5522
4453  000b               L3522:
4454                     ; 1329         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4456  000b 72155258      	bres	21080,#2
4457  000f               L5522:
4458                     ; 1331 }
4461  000f 81            	ret
4496                     ; 1341 void TIM1_OC2FastConfig(FunctionalState NewState)
4496                     ; 1342 {
4497                     .text:	section	.text,new
4498  0000               _TIM1_OC2FastConfig:
4502                     ; 1344     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4504                     ; 1347     if (NewState != DISABLE)
4506  0000 a30000        	cpw	x,#0
4507  0003 2706          	jreq	L5722
4508                     ; 1349         TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
4510  0005 72145259      	bset	21081,#2
4512  0009 2004          	jra	L7722
4513  000b               L5722:
4514                     ; 1353         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4516  000b 72155259      	bres	21081,#2
4517  000f               L7722:
4518                     ; 1355 }
4521  000f 81            	ret
4556                     ; 1364 void TIM1_OC3FastConfig(FunctionalState NewState)
4556                     ; 1365 {
4557                     .text:	section	.text,new
4558  0000               _TIM1_OC3FastConfig:
4562                     ; 1367     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4564                     ; 1370     if (NewState != DISABLE)
4566  0000 a30000        	cpw	x,#0
4567  0003 2706          	jreq	L7132
4568                     ; 1372         TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
4570  0005 7214525a      	bset	21082,#2
4572  0009 2004          	jra	L1232
4573  000b               L7132:
4574                     ; 1376         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4576  000b 7215525a      	bres	21082,#2
4577  000f               L1232:
4578                     ; 1378 }
4581  000f 81            	ret
4616                     ; 1387 void TIM1_OC4FastConfig(FunctionalState NewState)
4616                     ; 1388 {
4617                     .text:	section	.text,new
4618  0000               _TIM1_OC4FastConfig:
4622                     ; 1390     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4624                     ; 1393     if (NewState != DISABLE)
4626  0000 a30000        	cpw	x,#0
4627  0003 2706          	jreq	L1432
4628                     ; 1395         TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
4630  0005 7214525b      	bset	21083,#2
4632  0009 2004          	jra	L3432
4633  000b               L1432:
4634                     ; 1399         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4636  000b 7215525b      	bres	21083,#2
4637  000f               L3432:
4638                     ; 1401 }
4641  000f 81            	ret
4746                     ; 1418 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
4746                     ; 1419 {
4747                     .text:	section	.text,new
4748  0000               _TIM1_GenerateEvent:
4752                     ; 1421     assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
4754                     ; 1424     TIM1->EGR = (uint8_t)TIM1_EventSource;
4756  0000 9f            	ld	a,xl
4757  0001 c75257        	ld	21079,a
4758                     ; 1425 }
4761  0004 81            	ret
4797                     ; 1436 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4797                     ; 1437 {
4798                     .text:	section	.text,new
4799  0000               _TIM1_OC1PolarityConfig:
4803                     ; 1439     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4805                     ; 1442     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4807  0000 a30000        	cpw	x,#0
4808  0003 2706          	jreq	L5242
4809                     ; 1444         TIM1->CCER1 |= TIM1_CCER1_CC1P;
4811  0005 7212525c      	bset	21084,#1
4813  0009 2004          	jra	L7242
4814  000b               L5242:
4815                     ; 1448         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4817  000b 7213525c      	bres	21084,#1
4818  000f               L7242:
4819                     ; 1450 }
4822  000f 81            	ret
4858                     ; 1461 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4858                     ; 1462 {
4859                     .text:	section	.text,new
4860  0000               _TIM1_OC1NPolarityConfig:
4864                     ; 1464     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4866                     ; 1467     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4868  0000 a30000        	cpw	x,#0
4869  0003 2706          	jreq	L7442
4870                     ; 1469         TIM1->CCER1 |= TIM1_CCER1_CC1NP;
4872  0005 7216525c      	bset	21084,#3
4874  0009 2004          	jra	L1542
4875  000b               L7442:
4876                     ; 1473         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
4878  000b 7217525c      	bres	21084,#3
4879  000f               L1542:
4880                     ; 1475 }
4883  000f 81            	ret
4919                     ; 1486 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4919                     ; 1487 {
4920                     .text:	section	.text,new
4921  0000               _TIM1_OC2PolarityConfig:
4925                     ; 1489     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4927                     ; 1492     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4929  0000 a30000        	cpw	x,#0
4930  0003 2706          	jreq	L1742
4931                     ; 1494         TIM1->CCER1 |= TIM1_CCER1_CC2P;
4933  0005 721a525c      	bset	21084,#5
4935  0009 2004          	jra	L3742
4936  000b               L1742:
4937                     ; 1498         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4939  000b 721b525c      	bres	21084,#5
4940  000f               L3742:
4941                     ; 1500 }
4944  000f 81            	ret
4980                     ; 1510 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4980                     ; 1511 {
4981                     .text:	section	.text,new
4982  0000               _TIM1_OC2NPolarityConfig:
4986                     ; 1513     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4988                     ; 1516     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4990  0000 a30000        	cpw	x,#0
4991  0003 2706          	jreq	L3152
4992                     ; 1518         TIM1->CCER1 |= TIM1_CCER1_CC2NP;
4994  0005 721e525c      	bset	21084,#7
4996  0009 2004          	jra	L5152
4997  000b               L3152:
4998                     ; 1522         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
5000  000b 721f525c      	bres	21084,#7
5001  000f               L5152:
5002                     ; 1524 }
5005  000f 81            	ret
5041                     ; 1535 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5041                     ; 1536 {
5042                     .text:	section	.text,new
5043  0000               _TIM1_OC3PolarityConfig:
5047                     ; 1538     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5049                     ; 1541     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5051  0000 a30000        	cpw	x,#0
5052  0003 2706          	jreq	L5352
5053                     ; 1543         TIM1->CCER2 |= TIM1_CCER2_CC3P;
5055  0005 7212525d      	bset	21085,#1
5057  0009 2004          	jra	L7352
5058  000b               L5352:
5059                     ; 1547         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
5061  000b 7213525d      	bres	21085,#1
5062  000f               L7352:
5063                     ; 1549 }
5066  000f 81            	ret
5102                     ; 1560 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5102                     ; 1561 {
5103                     .text:	section	.text,new
5104  0000               _TIM1_OC3NPolarityConfig:
5108                     ; 1563     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5110                     ; 1566     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5112  0000 a30000        	cpw	x,#0
5113  0003 2706          	jreq	L7552
5114                     ; 1568         TIM1->CCER2 |= TIM1_CCER2_CC3NP;
5116  0005 7216525d      	bset	21085,#3
5118  0009 2004          	jra	L1652
5119  000b               L7552:
5120                     ; 1572         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
5122  000b 7217525d      	bres	21085,#3
5123  000f               L1652:
5124                     ; 1574 }
5127  000f 81            	ret
5163                     ; 1584 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5163                     ; 1585 {
5164                     .text:	section	.text,new
5165  0000               _TIM1_OC4PolarityConfig:
5169                     ; 1587     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5171                     ; 1590     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5173  0000 a30000        	cpw	x,#0
5174  0003 2706          	jreq	L1062
5175                     ; 1592         TIM1->CCER2 |= TIM1_CCER2_CC4P;
5177  0005 721a525d      	bset	21085,#5
5179  0009 2004          	jra	L3062
5180  000b               L1062:
5181                     ; 1596         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
5183  000b 721b525d      	bres	21085,#5
5184  000f               L3062:
5185                     ; 1598 }
5188  000f 81            	ret
5233                     ; 1613 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5233                     ; 1614 {
5234                     .text:	section	.text,new
5235  0000               _TIM1_CCxCmd:
5237  0000 89            	pushw	x
5238       00000000      OFST:	set	0
5241                     ; 1616     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5243                     ; 1617     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5245                     ; 1619     if (TIM1_Channel == TIM1_CHANNEL_1)
5247  0001 a30000        	cpw	x,#0
5248  0004 2610          	jrne	L7262
5249                     ; 1622         if (NewState != DISABLE)
5251  0006 1e05          	ldw	x,(OFST+5,sp)
5252  0008 2706          	jreq	L1362
5253                     ; 1624             TIM1->CCER1 |= TIM1_CCER1_CC1E;
5255  000a 7210525c      	bset	21084,#0
5257  000e 2042          	jra	L5362
5258  0010               L1362:
5259                     ; 1628             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5261  0010 7211525c      	bres	21084,#0
5262  0014 203c          	jra	L5362
5263  0016               L7262:
5264                     ; 1632     else if (TIM1_Channel == TIM1_CHANNEL_2)
5266  0016 1e01          	ldw	x,(OFST+1,sp)
5267  0018 a30001        	cpw	x,#1
5268  001b 2610          	jrne	L7362
5269                     ; 1635         if (NewState != DISABLE)
5271  001d 1e05          	ldw	x,(OFST+5,sp)
5272  001f 2706          	jreq	L1462
5273                     ; 1637             TIM1->CCER1 |= TIM1_CCER1_CC2E;
5275  0021 7218525c      	bset	21084,#4
5277  0025 202b          	jra	L5362
5278  0027               L1462:
5279                     ; 1641             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5281  0027 7219525c      	bres	21084,#4
5282  002b 2025          	jra	L5362
5283  002d               L7362:
5284                     ; 1644     else if (TIM1_Channel == TIM1_CHANNEL_3)
5286  002d 1e01          	ldw	x,(OFST+1,sp)
5287  002f a30002        	cpw	x,#2
5288  0032 2610          	jrne	L7462
5289                     ; 1647         if (NewState != DISABLE)
5291  0034 1e05          	ldw	x,(OFST+5,sp)
5292  0036 2706          	jreq	L1562
5293                     ; 1649             TIM1->CCER2 |= TIM1_CCER2_CC3E;
5295  0038 7210525d      	bset	21085,#0
5297  003c 2014          	jra	L5362
5298  003e               L1562:
5299                     ; 1653             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5301  003e 7211525d      	bres	21085,#0
5302  0042 200e          	jra	L5362
5303  0044               L7462:
5304                     ; 1659         if (NewState != DISABLE)
5306  0044 1e05          	ldw	x,(OFST+5,sp)
5307  0046 2706          	jreq	L7562
5308                     ; 1661             TIM1->CCER2 |= TIM1_CCER2_CC4E;
5310  0048 7218525d      	bset	21085,#4
5312  004c 2004          	jra	L5362
5313  004e               L7562:
5314                     ; 1665             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5316  004e 7219525d      	bres	21085,#4
5317  0052               L5362:
5318                     ; 1668 }
5321  0052 85            	popw	x
5322  0053 81            	ret
5367                     ; 1681 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5367                     ; 1682 {
5368                     .text:	section	.text,new
5369  0000               _TIM1_CCxNCmd:
5371  0000 89            	pushw	x
5372       00000000      OFST:	set	0
5375                     ; 1684     assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
5377                     ; 1685     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5379                     ; 1687     if (TIM1_Channel == TIM1_CHANNEL_1)
5381  0001 a30000        	cpw	x,#0
5382  0004 2610          	jrne	L5072
5383                     ; 1690         if (NewState != DISABLE)
5385  0006 1e05          	ldw	x,(OFST+5,sp)
5386  0008 2706          	jreq	L7072
5387                     ; 1692             TIM1->CCER1 |= TIM1_CCER1_CC1NE;
5389  000a 7214525c      	bset	21084,#2
5391  000e 202b          	jra	L3172
5392  0010               L7072:
5393                     ; 1696             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
5395  0010 7215525c      	bres	21084,#2
5396  0014 2025          	jra	L3172
5397  0016               L5072:
5398                     ; 1699     else if (TIM1_Channel == TIM1_CHANNEL_2)
5400  0016 1e01          	ldw	x,(OFST+1,sp)
5401  0018 a30001        	cpw	x,#1
5402  001b 2610          	jrne	L5172
5403                     ; 1702         if (NewState != DISABLE)
5405  001d 1e05          	ldw	x,(OFST+5,sp)
5406  001f 2706          	jreq	L7172
5407                     ; 1704             TIM1->CCER1 |= TIM1_CCER1_CC2NE;
5409  0021 721c525c      	bset	21084,#6
5411  0025 2014          	jra	L3172
5412  0027               L7172:
5413                     ; 1708             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
5415  0027 721d525c      	bres	21084,#6
5416  002b 200e          	jra	L3172
5417  002d               L5172:
5418                     ; 1714         if (NewState != DISABLE)
5420  002d 1e05          	ldw	x,(OFST+5,sp)
5421  002f 2706          	jreq	L5272
5422                     ; 1716             TIM1->CCER2 |= TIM1_CCER2_CC3NE;
5424  0031 7214525d      	bset	21085,#2
5426  0035 2004          	jra	L3172
5427  0037               L5272:
5428                     ; 1720             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
5430  0037 7215525d      	bres	21085,#2
5431  003b               L3172:
5432                     ; 1723 }
5435  003b 85            	popw	x
5436  003c 81            	ret
5481                     ; 1747 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
5481                     ; 1748 {
5482                     .text:	section	.text,new
5483  0000               _TIM1_SelectOCxM:
5485  0000 89            	pushw	x
5486       00000000      OFST:	set	0
5489                     ; 1750     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5491                     ; 1751     assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
5493                     ; 1753     if (TIM1_Channel == TIM1_CHANNEL_1)
5495  0001 a30000        	cpw	x,#0
5496  0004 2610          	jrne	L3572
5497                     ; 1756         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5499  0006 7211525c      	bres	21084,#0
5500                     ; 1759         TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
5500                     ; 1760                                 | (uint8_t)TIM1_OCMode);
5502  000a c65258        	ld	a,21080
5503  000d a48f          	and	a,#143
5504  000f 1a06          	or	a,(OFST+6,sp)
5505  0011 c75258        	ld	21080,a
5507  0014 203c          	jra	L5572
5508  0016               L3572:
5509                     ; 1762     else if (TIM1_Channel == TIM1_CHANNEL_2)
5511  0016 1e01          	ldw	x,(OFST+1,sp)
5512  0018 a30001        	cpw	x,#1
5513  001b 2610          	jrne	L7572
5514                     ; 1765         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5516  001d 7219525c      	bres	21084,#4
5517                     ; 1768         TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5517                     ; 1769                                 | (uint8_t)TIM1_OCMode);
5519  0021 c65259        	ld	a,21081
5520  0024 a48f          	and	a,#143
5521  0026 1a06          	or	a,(OFST+6,sp)
5522  0028 c75259        	ld	21081,a
5524  002b 2025          	jra	L5572
5525  002d               L7572:
5526                     ; 1771     else if (TIM1_Channel == TIM1_CHANNEL_3)
5528  002d 1e01          	ldw	x,(OFST+1,sp)
5529  002f a30002        	cpw	x,#2
5530  0032 2610          	jrne	L3672
5531                     ; 1774         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5533  0034 7211525d      	bres	21085,#0
5534                     ; 1777         TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
5534                     ; 1778                                 | (uint8_t)TIM1_OCMode);
5536  0038 c6525a        	ld	a,21082
5537  003b a48f          	and	a,#143
5538  003d 1a06          	or	a,(OFST+6,sp)
5539  003f c7525a        	ld	21082,a
5541  0042 200e          	jra	L5572
5542  0044               L3672:
5543                     ; 1783         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5545  0044 7219525d      	bres	21085,#4
5546                     ; 1786         TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5546                     ; 1787                                 | (uint8_t)TIM1_OCMode);
5548  0048 c6525b        	ld	a,21083
5549  004b a48f          	and	a,#143
5550  004d 1a06          	or	a,(OFST+6,sp)
5551  004f c7525b        	ld	21083,a
5552  0052               L5572:
5553                     ; 1789 }
5556  0052 85            	popw	x
5557  0053 81            	ret
5591                     ; 1798 void TIM1_SetCounter(uint16_t Counter)
5591                     ; 1799 {
5592                     .text:	section	.text,new
5593  0000               _TIM1_SetCounter:
5597                     ; 1801     TIM1->CNTRH = (uint8_t)(Counter >> 8);
5599  0000 9e            	ld	a,xh
5600  0001 c7525e        	ld	21086,a
5601                     ; 1802     TIM1->CNTRL = (uint8_t)(Counter);
5603  0004 9f            	ld	a,xl
5604  0005 c7525f        	ld	21087,a
5605                     ; 1804 }
5608  0008 81            	ret
5642                     ; 1813 void TIM1_SetAutoreload(uint16_t Autoreload)
5642                     ; 1814 {
5643                     .text:	section	.text,new
5644  0000               _TIM1_SetAutoreload:
5648                     ; 1817     TIM1->ARRH = (uint8_t)(Autoreload >> 8);
5650  0000 9e            	ld	a,xh
5651  0001 c75262        	ld	21090,a
5652                     ; 1818     TIM1->ARRL = (uint8_t)(Autoreload);
5654  0004 9f            	ld	a,xl
5655  0005 c75263        	ld	21091,a
5656                     ; 1820 }
5659  0008 81            	ret
5693                     ; 1829 void TIM1_SetCompare1(uint16_t Compare1)
5693                     ; 1830 {
5694                     .text:	section	.text,new
5695  0000               _TIM1_SetCompare1:
5699                     ; 1832     TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
5701  0000 9e            	ld	a,xh
5702  0001 c75265        	ld	21093,a
5703                     ; 1833     TIM1->CCR1L = (uint8_t)(Compare1);
5705  0004 9f            	ld	a,xl
5706  0005 c75266        	ld	21094,a
5707                     ; 1835 }
5710  0008 81            	ret
5744                     ; 1844 void TIM1_SetCompare2(uint16_t Compare2)
5744                     ; 1845 {
5745                     .text:	section	.text,new
5746  0000               _TIM1_SetCompare2:
5750                     ; 1847     TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
5752  0000 9e            	ld	a,xh
5753  0001 c75267        	ld	21095,a
5754                     ; 1848     TIM1->CCR2L = (uint8_t)(Compare2);
5756  0004 9f            	ld	a,xl
5757  0005 c75268        	ld	21096,a
5758                     ; 1850 }
5761  0008 81            	ret
5795                     ; 1859 void TIM1_SetCompare3(uint16_t Compare3)
5795                     ; 1860 {
5796                     .text:	section	.text,new
5797  0000               _TIM1_SetCompare3:
5801                     ; 1862     TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
5803  0000 9e            	ld	a,xh
5804  0001 c75269        	ld	21097,a
5805                     ; 1863     TIM1->CCR3L = (uint8_t)(Compare3);
5807  0004 9f            	ld	a,xl
5808  0005 c7526a        	ld	21098,a
5809                     ; 1865 }
5812  0008 81            	ret
5846                     ; 1874 void TIM1_SetCompare4(uint16_t Compare4)
5846                     ; 1875 {
5847                     .text:	section	.text,new
5848  0000               _TIM1_SetCompare4:
5852                     ; 1877     TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
5854  0000 9e            	ld	a,xh
5855  0001 c7526b        	ld	21099,a
5856                     ; 1878     TIM1->CCR4L = (uint8_t)(Compare4);
5858  0004 9f            	ld	a,xl
5859  0005 c7526c        	ld	21100,a
5860                     ; 1879 }
5863  0008 81            	ret
5899                     ; 1892 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
5899                     ; 1893 {
5900                     .text:	section	.text,new
5901  0000               _TIM1_SetIC1Prescaler:
5903  0000 89            	pushw	x
5904       00000000      OFST:	set	0
5907                     ; 1895     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
5909                     ; 1898     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
5909                     ; 1899                             | (uint8_t)TIM1_IC1Prescaler);
5911  0001 c65258        	ld	a,21080
5912  0004 a4f3          	and	a,#243
5913  0006 1a02          	or	a,(OFST+2,sp)
5914  0008 c75258        	ld	21080,a
5915                     ; 1901 }
5918  000b 85            	popw	x
5919  000c 81            	ret
5955                     ; 1913 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
5955                     ; 1914 {
5956                     .text:	section	.text,new
5957  0000               _TIM1_SetIC2Prescaler:
5959  0000 89            	pushw	x
5960       00000000      OFST:	set	0
5963                     ; 1917     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
5965                     ; 1920     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
5965                     ; 1921                             | (uint8_t)TIM1_IC2Prescaler);
5967  0001 c65259        	ld	a,21081
5968  0004 a4f3          	and	a,#243
5969  0006 1a02          	or	a,(OFST+2,sp)
5970  0008 c75259        	ld	21081,a
5971                     ; 1922 }
5974  000b 85            	popw	x
5975  000c 81            	ret
6011                     ; 1935 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
6011                     ; 1936 {
6012                     .text:	section	.text,new
6013  0000               _TIM1_SetIC3Prescaler:
6015  0000 89            	pushw	x
6016       00000000      OFST:	set	0
6019                     ; 1939     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
6021                     ; 1942     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
6021                     ; 1943                             (uint8_t)TIM1_IC3Prescaler);
6023  0001 c6525a        	ld	a,21082
6024  0004 a4f3          	and	a,#243
6025  0006 1a02          	or	a,(OFST+2,sp)
6026  0008 c7525a        	ld	21082,a
6027                     ; 1944 }
6030  000b 85            	popw	x
6031  000c 81            	ret
6067                     ; 1956 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
6067                     ; 1957 {
6068                     .text:	section	.text,new
6069  0000               _TIM1_SetIC4Prescaler:
6071  0000 89            	pushw	x
6072       00000000      OFST:	set	0
6075                     ; 1960     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
6077                     ; 1963     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
6077                     ; 1964                             (uint8_t)TIM1_IC4Prescaler);
6079  0001 c6525b        	ld	a,21083
6080  0004 a4f3          	and	a,#243
6081  0006 1a02          	or	a,(OFST+2,sp)
6082  0008 c7525b        	ld	21083,a
6083                     ; 1965 }
6086  000b 85            	popw	x
6087  000c 81            	ret
6139                     ; 1972 uint16_t TIM1_GetCapture1(void)
6139                     ; 1973 {
6140                     .text:	section	.text,new
6141  0000               _TIM1_GetCapture1:
6143  0000 5204          	subw	sp,#4
6144       00000004      OFST:	set	4
6147                     ; 1976     uint16_t tmpccr1 = 0;
6149                     ; 1977     uint8_t tmpccr1l=0, tmpccr1h=0;
6153                     ; 1979     tmpccr1h = TIM1->CCR1H;
6155  0002 c65265        	ld	a,21093
6156  0005 6b02          	ld	(OFST-2,sp),a
6158                     ; 1980     tmpccr1l = TIM1->CCR1L;
6160  0007 c65266        	ld	a,21094
6161  000a 6b01          	ld	(OFST-3,sp),a
6163                     ; 1982     tmpccr1 = (uint16_t)(tmpccr1l);
6165  000c 7b01          	ld	a,(OFST-3,sp)
6166  000e 5f            	clrw	x
6167  000f 97            	ld	xl,a
6168  0010 1f03          	ldw	(OFST-1,sp),x
6170                     ; 1983     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
6172  0012 7b02          	ld	a,(OFST-2,sp)
6173  0014 5f            	clrw	x
6174  0015 97            	ld	xl,a
6175  0016 4f            	clr	a
6176  0017 02            	rlwa	x,a
6177  0018 01            	rrwa	x,a
6178  0019 1a04          	or	a,(OFST+0,sp)
6179  001b 01            	rrwa	x,a
6180  001c 1a03          	or	a,(OFST-1,sp)
6181  001e 01            	rrwa	x,a
6182  001f 1f03          	ldw	(OFST-1,sp),x
6184                     ; 1985     return (uint16_t)tmpccr1;
6186  0021 1e03          	ldw	x,(OFST-1,sp)
6189  0023 5b04          	addw	sp,#4
6190  0025 81            	ret
6242                     ; 1993 uint16_t TIM1_GetCapture2(void)
6242                     ; 1994 {
6243                     .text:	section	.text,new
6244  0000               _TIM1_GetCapture2:
6246  0000 5204          	subw	sp,#4
6247       00000004      OFST:	set	4
6250                     ; 1997     uint16_t tmpccr2 = 0;
6252                     ; 1998     uint8_t tmpccr2l=0, tmpccr2h=0;
6256                     ; 2000     tmpccr2h = TIM1->CCR2H;
6258  0002 c65267        	ld	a,21095
6259  0005 6b02          	ld	(OFST-2,sp),a
6261                     ; 2001     tmpccr2l = TIM1->CCR2L;
6263  0007 c65268        	ld	a,21096
6264  000a 6b01          	ld	(OFST-3,sp),a
6266                     ; 2003     tmpccr2 = (uint16_t)(tmpccr2l);
6268  000c 7b01          	ld	a,(OFST-3,sp)
6269  000e 5f            	clrw	x
6270  000f 97            	ld	xl,a
6271  0010 1f03          	ldw	(OFST-1,sp),x
6273                     ; 2004     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
6275  0012 7b02          	ld	a,(OFST-2,sp)
6276  0014 5f            	clrw	x
6277  0015 97            	ld	xl,a
6278  0016 4f            	clr	a
6279  0017 02            	rlwa	x,a
6280  0018 01            	rrwa	x,a
6281  0019 1a04          	or	a,(OFST+0,sp)
6282  001b 01            	rrwa	x,a
6283  001c 1a03          	or	a,(OFST-1,sp)
6284  001e 01            	rrwa	x,a
6285  001f 1f03          	ldw	(OFST-1,sp),x
6287                     ; 2006     return (uint16_t)tmpccr2;
6289  0021 1e03          	ldw	x,(OFST-1,sp)
6292  0023 5b04          	addw	sp,#4
6293  0025 81            	ret
6345                     ; 2014 uint16_t TIM1_GetCapture3(void)
6345                     ; 2015 {
6346                     .text:	section	.text,new
6347  0000               _TIM1_GetCapture3:
6349  0000 5204          	subw	sp,#4
6350       00000004      OFST:	set	4
6353                     ; 2017     uint16_t tmpccr3 = 0;
6355                     ; 2018     uint8_t tmpccr3l=0, tmpccr3h=0;
6359                     ; 2020     tmpccr3h = TIM1->CCR3H;
6361  0002 c65269        	ld	a,21097
6362  0005 6b02          	ld	(OFST-2,sp),a
6364                     ; 2021     tmpccr3l = TIM1->CCR3L;
6366  0007 c6526a        	ld	a,21098
6367  000a 6b01          	ld	(OFST-3,sp),a
6369                     ; 2023     tmpccr3 = (uint16_t)(tmpccr3l);
6371  000c 7b01          	ld	a,(OFST-3,sp)
6372  000e 5f            	clrw	x
6373  000f 97            	ld	xl,a
6374  0010 1f03          	ldw	(OFST-1,sp),x
6376                     ; 2024     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
6378  0012 7b02          	ld	a,(OFST-2,sp)
6379  0014 5f            	clrw	x
6380  0015 97            	ld	xl,a
6381  0016 4f            	clr	a
6382  0017 02            	rlwa	x,a
6383  0018 01            	rrwa	x,a
6384  0019 1a04          	or	a,(OFST+0,sp)
6385  001b 01            	rrwa	x,a
6386  001c 1a03          	or	a,(OFST-1,sp)
6387  001e 01            	rrwa	x,a
6388  001f 1f03          	ldw	(OFST-1,sp),x
6390                     ; 2026     return (uint16_t)tmpccr3;
6392  0021 1e03          	ldw	x,(OFST-1,sp)
6395  0023 5b04          	addw	sp,#4
6396  0025 81            	ret
6448                     ; 2034 uint16_t TIM1_GetCapture4(void)
6448                     ; 2035 {
6449                     .text:	section	.text,new
6450  0000               _TIM1_GetCapture4:
6452  0000 5204          	subw	sp,#4
6453       00000004      OFST:	set	4
6456                     ; 2037     uint16_t tmpccr4 = 0;
6458                     ; 2038     uint8_t tmpccr4l=0, tmpccr4h=0;
6462                     ; 2040     tmpccr4h = TIM1->CCR4H;
6464  0002 c6526b        	ld	a,21099
6465  0005 6b02          	ld	(OFST-2,sp),a
6467                     ; 2041     tmpccr4l = TIM1->CCR4L;
6469  0007 c6526c        	ld	a,21100
6470  000a 6b01          	ld	(OFST-3,sp),a
6472                     ; 2043     tmpccr4 = (uint16_t)(tmpccr4l);
6474  000c 7b01          	ld	a,(OFST-3,sp)
6475  000e 5f            	clrw	x
6476  000f 97            	ld	xl,a
6477  0010 1f03          	ldw	(OFST-1,sp),x
6479                     ; 2044     tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
6481  0012 7b02          	ld	a,(OFST-2,sp)
6482  0014 5f            	clrw	x
6483  0015 97            	ld	xl,a
6484  0016 4f            	clr	a
6485  0017 02            	rlwa	x,a
6486  0018 01            	rrwa	x,a
6487  0019 1a04          	or	a,(OFST+0,sp)
6488  001b 01            	rrwa	x,a
6489  001c 1a03          	or	a,(OFST-1,sp)
6490  001e 01            	rrwa	x,a
6491  001f 1f03          	ldw	(OFST-1,sp),x
6493                     ; 2046     return (uint16_t)tmpccr4;
6495  0021 1e03          	ldw	x,(OFST-1,sp)
6498  0023 5b04          	addw	sp,#4
6499  0025 81            	ret
6533                     ; 2054 uint16_t TIM1_GetCounter(void)
6533                     ; 2055 {
6534                     .text:	section	.text,new
6535  0000               _TIM1_GetCounter:
6537  0000 89            	pushw	x
6538       00000002      OFST:	set	2
6541                     ; 2056   uint16_t tmpcntr = 0;
6543                     ; 2058   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
6545  0001 c6525e        	ld	a,21086
6546  0004 5f            	clrw	x
6547  0005 97            	ld	xl,a
6548  0006 4f            	clr	a
6549  0007 02            	rlwa	x,a
6550  0008 1f01          	ldw	(OFST-1,sp),x
6552                     ; 2061     return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
6554  000a c6525f        	ld	a,21087
6555  000d 5f            	clrw	x
6556  000e 97            	ld	xl,a
6557  000f 01            	rrwa	x,a
6558  0010 1a02          	or	a,(OFST+0,sp)
6559  0012 01            	rrwa	x,a
6560  0013 1a01          	or	a,(OFST-1,sp)
6561  0015 01            	rrwa	x,a
6564  0016 5b02          	addw	sp,#2
6565  0018 81            	ret
6599                     ; 2069 uint16_t TIM1_GetPrescaler(void)
6599                     ; 2070 {
6600                     .text:	section	.text,new
6601  0000               _TIM1_GetPrescaler:
6603  0000 89            	pushw	x
6604       00000002      OFST:	set	2
6607                     ; 2071    uint16_t temp = 0;
6609                     ; 2073    temp = ((uint16_t)TIM1->PSCRH << 8);
6611  0001 c65260        	ld	a,21088
6612  0004 5f            	clrw	x
6613  0005 97            	ld	xl,a
6614  0006 4f            	clr	a
6615  0007 02            	rlwa	x,a
6616  0008 1f01          	ldw	(OFST-1,sp),x
6618                     ; 2076     return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
6620  000a c65261        	ld	a,21089
6621  000d 5f            	clrw	x
6622  000e 97            	ld	xl,a
6623  000f 01            	rrwa	x,a
6624  0010 1a02          	or	a,(OFST+0,sp)
6625  0012 01            	rrwa	x,a
6626  0013 1a01          	or	a,(OFST-1,sp)
6627  0015 01            	rrwa	x,a
6630  0016 5b02          	addw	sp,#2
6631  0018 81            	ret
6805                     ; 2097 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
6805                     ; 2098 {
6806                     .text:	section	.text,new
6807  0000               _TIM1_GetFlagStatus:
6809  0000 89            	pushw	x
6810  0001 5204          	subw	sp,#4
6811       00000004      OFST:	set	4
6814                     ; 2099     FlagStatus bitstatus = RESET;
6816                     ; 2100     uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
6820                     ; 2103     assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
6822                     ; 2105     tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
6824  0003 9f            	ld	a,xl
6825  0004 c45255        	and	a,21077
6826  0007 6b01          	ld	(OFST-3,sp),a
6828                     ; 2106     tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
6830  0009 1e05          	ldw	x,(OFST+1,sp)
6831  000b 4f            	clr	a
6832  000c 01            	rrwa	x,a
6833  000d 9f            	ld	a,xl
6834  000e 6b02          	ld	(OFST-2,sp),a
6836                     ; 2108     if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
6838  0010 c65256        	ld	a,21078
6839  0013 1402          	and	a,(OFST-2,sp)
6840  0015 1a01          	or	a,(OFST-3,sp)
6841  0017 2707          	jreq	L5643
6842                     ; 2110         bitstatus = SET;
6844  0019 ae0001        	ldw	x,#1
6845  001c 1f03          	ldw	(OFST-1,sp),x
6848  001e 2003          	jra	L7643
6849  0020               L5643:
6850                     ; 2114         bitstatus = RESET;
6852  0020 5f            	clrw	x
6853  0021 1f03          	ldw	(OFST-1,sp),x
6855  0023               L7643:
6856                     ; 2116     return (FlagStatus)(bitstatus);
6858  0023 1e03          	ldw	x,(OFST-1,sp)
6861  0025 5b06          	addw	sp,#6
6862  0027 81            	ret
6897                     ; 2137 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
6897                     ; 2138 {
6898                     .text:	section	.text,new
6899  0000               _TIM1_ClearFlag:
6901  0000 89            	pushw	x
6902       00000000      OFST:	set	0
6905                     ; 2140     assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
6907                     ; 2143     TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
6909  0001 9f            	ld	a,xl
6910  0002 43            	cpl	a
6911  0003 c75255        	ld	21077,a
6912                     ; 2144     TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
6912                     ; 2145                           (uint8_t)0x1E);
6914  0006 1e01          	ldw	x,(OFST+1,sp)
6915  0008 4f            	clr	a
6916  0009 01            	rrwa	x,a
6917  000a 9f            	ld	a,xl
6918  000b 43            	cpl	a
6919  000c a41e          	and	a,#30
6920  000e c75256        	ld	21078,a
6921                     ; 2146 }
6924  0011 85            	popw	x
6925  0012 81            	ret
6989                     ; 2162 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
6989                     ; 2163 {
6990                     .text:	section	.text,new
6991  0000               _TIM1_GetITStatus:
6993  0000 89            	pushw	x
6994  0001 5204          	subw	sp,#4
6995       00000004      OFST:	set	4
6998                     ; 2164     ITStatus bitstatus = RESET;
7000                     ; 2165     uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
7004                     ; 2168     assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
7006                     ; 2170     TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
7008  0003 9f            	ld	a,xl
7009  0004 c45255        	and	a,21077
7010  0007 6b01          	ld	(OFST-3,sp),a
7012                     ; 2172     TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
7014  0009 c65254        	ld	a,21076
7015  000c 1406          	and	a,(OFST+2,sp)
7016  000e 6b02          	ld	(OFST-2,sp),a
7018                     ; 2174     if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
7020  0010 0d01          	tnz	(OFST-3,sp)
7021  0012 270b          	jreq	L1453
7023  0014 0d02          	tnz	(OFST-2,sp)
7024  0016 2707          	jreq	L1453
7025                     ; 2176         bitstatus = SET;
7027  0018 ae0001        	ldw	x,#1
7028  001b 1f03          	ldw	(OFST-1,sp),x
7031  001d 2003          	jra	L3453
7032  001f               L1453:
7033                     ; 2180         bitstatus = RESET;
7035  001f 5f            	clrw	x
7036  0020 1f03          	ldw	(OFST-1,sp),x
7038  0022               L3453:
7039                     ; 2182     return (ITStatus)(bitstatus);
7041  0022 1e03          	ldw	x,(OFST-1,sp)
7044  0024 5b06          	addw	sp,#6
7045  0026 81            	ret
7081                     ; 2199 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
7081                     ; 2200 {
7082                     .text:	section	.text,new
7083  0000               _TIM1_ClearITPendingBit:
7087                     ; 2202     assert_param(IS_TIM1_IT_OK(TIM1_IT));
7089                     ; 2205     TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
7091  0000 9f            	ld	a,xl
7092  0001 43            	cpl	a
7093  0002 c75255        	ld	21077,a
7094                     ; 2206 }
7097  0005 81            	ret
7149                     ; 2224 static void TI1_Config(uint8_t TIM1_ICPolarity,
7149                     ; 2225                        uint8_t TIM1_ICSelection,
7149                     ; 2226                        uint8_t TIM1_ICFilter)
7149                     ; 2227 {
7150                     .text:	section	.text,new
7151  0000               L3_TI1_Config:
7153  0000 89            	pushw	x
7154  0001 88            	push	a
7155       00000001      OFST:	set	1
7158                     ; 2230     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7160  0002 7211525c      	bres	21084,#0
7161                     ; 2233     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
7161                     ; 2234                             (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7163  0006 7b06          	ld	a,(OFST+5,sp)
7164  0008 97            	ld	xl,a
7165  0009 a610          	ld	a,#16
7166  000b 42            	mul	x,a
7167  000c 9f            	ld	a,xl
7168  000d 1a03          	or	a,(OFST+2,sp)
7169  000f 6b01          	ld	(OFST+0,sp),a
7171  0011 c65258        	ld	a,21080
7172  0014 a40c          	and	a,#12
7173  0016 1a01          	or	a,(OFST+0,sp)
7174  0018 c75258        	ld	21080,a
7175                     ; 2237     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7177  001b 0d02          	tnz	(OFST+1,sp)
7178  001d 2706          	jreq	L1163
7179                     ; 2239         TIM1->CCER1 |= TIM1_CCER1_CC1P;
7181  001f 7212525c      	bset	21084,#1
7183  0023 2004          	jra	L3163
7184  0025               L1163:
7185                     ; 2243         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
7187  0025 7213525c      	bres	21084,#1
7188  0029               L3163:
7189                     ; 2247     TIM1->CCER1 |=  TIM1_CCER1_CC1E;
7191  0029 7210525c      	bset	21084,#0
7192                     ; 2248 }
7195  002d 5b03          	addw	sp,#3
7196  002f 81            	ret
7248                     ; 2266 static void TI2_Config(uint8_t TIM1_ICPolarity,
7248                     ; 2267                        uint8_t TIM1_ICSelection,
7248                     ; 2268                        uint8_t TIM1_ICFilter)
7248                     ; 2269 {
7249                     .text:	section	.text,new
7250  0000               L5_TI2_Config:
7252  0000 89            	pushw	x
7253  0001 88            	push	a
7254       00000001      OFST:	set	1
7257                     ; 2271     TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
7259  0002 7219525c      	bres	21084,#4
7260                     ; 2274     TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
7260                     ; 2275                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7262  0006 7b06          	ld	a,(OFST+5,sp)
7263  0008 97            	ld	xl,a
7264  0009 a610          	ld	a,#16
7265  000b 42            	mul	x,a
7266  000c 9f            	ld	a,xl
7267  000d 1a03          	or	a,(OFST+2,sp)
7268  000f 6b01          	ld	(OFST+0,sp),a
7270  0011 c65259        	ld	a,21081
7271  0014 a40c          	and	a,#12
7272  0016 1a01          	or	a,(OFST+0,sp)
7273  0018 c75259        	ld	21081,a
7274                     ; 2277     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7276  001b 0d02          	tnz	(OFST+1,sp)
7277  001d 2706          	jreq	L3463
7278                     ; 2279         TIM1->CCER1 |= TIM1_CCER1_CC2P;
7280  001f 721a525c      	bset	21084,#5
7282  0023 2004          	jra	L5463
7283  0025               L3463:
7284                     ; 2283         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
7286  0025 721b525c      	bres	21084,#5
7287  0029               L5463:
7288                     ; 2286     TIM1->CCER1 |=  TIM1_CCER1_CC2E;
7290  0029 7218525c      	bset	21084,#4
7291                     ; 2287 }
7294  002d 5b03          	addw	sp,#3
7295  002f 81            	ret
7347                     ; 2305 static void TI3_Config(uint8_t TIM1_ICPolarity,
7347                     ; 2306                        uint8_t TIM1_ICSelection,
7347                     ; 2307                        uint8_t TIM1_ICFilter)
7347                     ; 2308 {
7348                     .text:	section	.text,new
7349  0000               L7_TI3_Config:
7351  0000 89            	pushw	x
7352  0001 88            	push	a
7353       00000001      OFST:	set	1
7356                     ; 2310     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
7358  0002 7211525d      	bres	21085,#0
7359                     ; 2313     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
7359                     ; 2314                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7361  0006 7b06          	ld	a,(OFST+5,sp)
7362  0008 97            	ld	xl,a
7363  0009 a610          	ld	a,#16
7364  000b 42            	mul	x,a
7365  000c 9f            	ld	a,xl
7366  000d 1a03          	or	a,(OFST+2,sp)
7367  000f 6b01          	ld	(OFST+0,sp),a
7369  0011 c6525a        	ld	a,21082
7370  0014 a40c          	and	a,#12
7371  0016 1a01          	or	a,(OFST+0,sp)
7372  0018 c7525a        	ld	21082,a
7373                     ; 2317     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7375  001b 0d02          	tnz	(OFST+1,sp)
7376  001d 2706          	jreq	L5763
7377                     ; 2319         TIM1->CCER2 |= TIM1_CCER2_CC3P;
7379  001f 7212525d      	bset	21085,#1
7381  0023 2004          	jra	L7763
7382  0025               L5763:
7383                     ; 2323         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
7385  0025 7213525d      	bres	21085,#1
7386  0029               L7763:
7387                     ; 2326     TIM1->CCER2 |=  TIM1_CCER2_CC3E;
7389  0029 7210525d      	bset	21085,#0
7390                     ; 2327 }
7393  002d 5b03          	addw	sp,#3
7394  002f 81            	ret
7446                     ; 2346 static void TI4_Config(uint8_t TIM1_ICPolarity,
7446                     ; 2347                        uint8_t TIM1_ICSelection,
7446                     ; 2348                        uint8_t TIM1_ICFilter)
7446                     ; 2349 {
7447                     .text:	section	.text,new
7448  0000               L11_TI4_Config:
7450  0000 89            	pushw	x
7451  0001 88            	push	a
7452       00000001      OFST:	set	1
7455                     ; 2352     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
7457  0002 7219525d      	bres	21085,#4
7458                     ; 2355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
7458                     ; 2356                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7460  0006 7b06          	ld	a,(OFST+5,sp)
7461  0008 97            	ld	xl,a
7462  0009 a610          	ld	a,#16
7463  000b 42            	mul	x,a
7464  000c 9f            	ld	a,xl
7465  000d 1a03          	or	a,(OFST+2,sp)
7466  000f 6b01          	ld	(OFST+0,sp),a
7468  0011 c6525b        	ld	a,21083
7469  0014 a40c          	and	a,#12
7470  0016 1a01          	or	a,(OFST+0,sp)
7471  0018 c7525b        	ld	21083,a
7472                     ; 2359     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7474  001b 0d02          	tnz	(OFST+1,sp)
7475  001d 2706          	jreq	L7273
7476                     ; 2361         TIM1->CCER2 |= TIM1_CCER2_CC4P;
7478  001f 721a525d      	bset	21085,#5
7480  0023 2004          	jra	L1373
7481  0025               L7273:
7482                     ; 2365         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
7484  0025 721b525d      	bres	21085,#5
7485  0029               L1373:
7486                     ; 2369     TIM1->CCER2 |=  TIM1_CCER2_CC4E;
7488  0029 7218525d      	bset	21085,#4
7489                     ; 2370 }
7492  002d 5b03          	addw	sp,#3
7493  002f 81            	ret
7506                     	xdef	_TIM1_ClearITPendingBit
7507                     	xdef	_TIM1_GetITStatus
7508                     	xdef	_TIM1_ClearFlag
7509                     	xdef	_TIM1_GetFlagStatus
7510                     	xdef	_TIM1_GetPrescaler
7511                     	xdef	_TIM1_GetCounter
7512                     	xdef	_TIM1_GetCapture4
7513                     	xdef	_TIM1_GetCapture3
7514                     	xdef	_TIM1_GetCapture2
7515                     	xdef	_TIM1_GetCapture1
7516                     	xdef	_TIM1_SetIC4Prescaler
7517                     	xdef	_TIM1_SetIC3Prescaler
7518                     	xdef	_TIM1_SetIC2Prescaler
7519                     	xdef	_TIM1_SetIC1Prescaler
7520                     	xdef	_TIM1_SetCompare4
7521                     	xdef	_TIM1_SetCompare3
7522                     	xdef	_TIM1_SetCompare2
7523                     	xdef	_TIM1_SetCompare1
7524                     	xdef	_TIM1_SetAutoreload
7525                     	xdef	_TIM1_SetCounter
7526                     	xdef	_TIM1_SelectOCxM
7527                     	xdef	_TIM1_CCxNCmd
7528                     	xdef	_TIM1_CCxCmd
7529                     	xdef	_TIM1_OC4PolarityConfig
7530                     	xdef	_TIM1_OC3NPolarityConfig
7531                     	xdef	_TIM1_OC3PolarityConfig
7532                     	xdef	_TIM1_OC2NPolarityConfig
7533                     	xdef	_TIM1_OC2PolarityConfig
7534                     	xdef	_TIM1_OC1NPolarityConfig
7535                     	xdef	_TIM1_OC1PolarityConfig
7536                     	xdef	_TIM1_GenerateEvent
7537                     	xdef	_TIM1_OC4FastConfig
7538                     	xdef	_TIM1_OC3FastConfig
7539                     	xdef	_TIM1_OC2FastConfig
7540                     	xdef	_TIM1_OC1FastConfig
7541                     	xdef	_TIM1_OC4PreloadConfig
7542                     	xdef	_TIM1_OC3PreloadConfig
7543                     	xdef	_TIM1_OC2PreloadConfig
7544                     	xdef	_TIM1_OC1PreloadConfig
7545                     	xdef	_TIM1_CCPreloadControl
7546                     	xdef	_TIM1_SelectCOM
7547                     	xdef	_TIM1_ARRPreloadConfig
7548                     	xdef	_TIM1_ForcedOC4Config
7549                     	xdef	_TIM1_ForcedOC3Config
7550                     	xdef	_TIM1_ForcedOC2Config
7551                     	xdef	_TIM1_ForcedOC1Config
7552                     	xdef	_TIM1_CounterModeConfig
7553                     	xdef	_TIM1_PrescalerConfig
7554                     	xdef	_TIM1_EncoderInterfaceConfig
7555                     	xdef	_TIM1_SelectMasterSlaveMode
7556                     	xdef	_TIM1_SelectSlaveMode
7557                     	xdef	_TIM1_SelectOutputTrigger
7558                     	xdef	_TIM1_SelectOnePulseMode
7559                     	xdef	_TIM1_SelectHallSensor
7560                     	xdef	_TIM1_UpdateRequestConfig
7561                     	xdef	_TIM1_UpdateDisableConfig
7562                     	xdef	_TIM1_SelectInputTrigger
7563                     	xdef	_TIM1_TIxExternalClockConfig
7564                     	xdef	_TIM1_ETRConfig
7565                     	xdef	_TIM1_ETRClockMode2Config
7566                     	xdef	_TIM1_ETRClockMode1Config
7567                     	xdef	_TIM1_InternalClockConfig
7568                     	xdef	_TIM1_ITConfig
7569                     	xdef	_TIM1_CtrlPWMOutputs
7570                     	xdef	_TIM1_Cmd
7571                     	xdef	_TIM1_PWMIConfig
7572                     	xdef	_TIM1_ICInit
7573                     	xdef	_TIM1_BDTRConfig
7574                     	xdef	_TIM1_OC4Init
7575                     	xdef	_TIM1_OC3Init
7576                     	xdef	_TIM1_OC2Init
7577                     	xdef	_TIM1_OC1Init
7578                     	xdef	_TIM1_TimeBaseInit
7579                     	xdef	_TIM1_DeInit
7598                     	end
