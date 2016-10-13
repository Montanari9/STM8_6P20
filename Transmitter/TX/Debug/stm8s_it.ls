   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
  46                     ; 48 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  46                     ; 49 {
  47                     .text:	section	.text,new
  48  0000               f_NonHandledInterrupt:
  52                     ; 53 }
  55  0000 80            	iret
  77                     ; 61 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  77                     ; 62 {
  78                     .text:	section	.text,new
  79  0000               f_TRAP_IRQHandler:
  83                     ; 66 }
  86  0000 80            	iret
 108                     ; 73 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 108                     ; 74 
 108                     ; 75 {
 109                     .text:	section	.text,new
 110  0000               f_TLI_IRQHandler:
 114                     ; 79 }
 117  0000 80            	iret
 139                     ; 86 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 139                     ; 87 {
 140                     .text:	section	.text,new
 141  0000               f_AWU_IRQHandler:
 145                     ; 91 }
 148  0000 80            	iret
 170                     ; 98 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 170                     ; 99 {
 171                     .text:	section	.text,new
 172  0000               f_CLK_IRQHandler:
 176                     ; 103 }
 179  0000 80            	iret
 202                     ; 110 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 202                     ; 111 {
 203                     .text:	section	.text,new
 204  0000               f_EXTI_PORTA_IRQHandler:
 208                     ; 115 }
 211  0000 80            	iret
 234                     ; 122 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 234                     ; 123 {
 235                     .text:	section	.text,new
 236  0000               f_EXTI_PORTB_IRQHandler:
 240                     ; 127 }
 243  0000 80            	iret
 266                     ; 134 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 266                     ; 135 {
 267                     .text:	section	.text,new
 268  0000               f_EXTI_PORTC_IRQHandler:
 272                     ; 139 }
 275  0000 80            	iret
 298                     ; 146 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 298                     ; 147 {
 299                     .text:	section	.text,new
 300  0000               f_EXTI_PORTD_IRQHandler:
 304                     ; 151 }
 307  0000 80            	iret
 330                     ; 158 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 330                     ; 159 {
 331                     .text:	section	.text,new
 332  0000               f_EXTI_PORTE_IRQHandler:
 336                     ; 163 }
 339  0000 80            	iret
 361                     ; 210 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 361                     ; 211 {
 362                     .text:	section	.text,new
 363  0000               f_SPI_IRQHandler:
 367                     ; 215 }
 370  0000 80            	iret
 393                     ; 222 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 393                     ; 223 {
 394                     .text:	section	.text,new
 395  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 399                     ; 227 }
 402  0000 80            	iret
 425                     ; 234 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 425                     ; 235 {
 426                     .text:	section	.text,new
 427  0000               f_TIM1_CAP_COM_IRQHandler:
 431                     ; 239 }
 434  0000 80            	iret
 436                     	bsct
 437  0000               L161_cont_led:
 438  0000 c8            	dc.b	200
 474                     ; 272 @svlreg INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 474                     ; 273 {
 475                     .text:	section	.text,new
 476  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 478  0000 8a            	push	cc
 479  0001 84            	pop	a
 480  0002 a4bf          	and	a,#191
 481  0004 88            	push	a
 482  0005 86            	pop	cc
 483  0006 3b0002        	push	c_x+2
 484  0009 be00          	ldw	x,c_x
 485  000b 89            	pushw	x
 486  000c 3b0002        	push	c_y+2
 487  000f be00          	ldw	x,c_y
 488  0011 89            	pushw	x
 489  0012 be02          	ldw	x,c_lreg+2
 490  0014 89            	pushw	x
 491  0015 be00          	ldw	x,c_lreg
 492  0017 89            	pushw	x
 495                     ; 275 	if (cont_led)
 497  0018 3d00          	tnz	L161_cont_led
 498  001a 2704          	jreq	L102
 499                     ; 276 		cont_led--;
 501  001c 3a00          	dec	L161_cont_led
 503  001e 200f          	jra	L302
 504  0020               L102:
 505                     ; 279 		GPIO_WriteReverse(GPIOC, GPIO_PIN_3);
 507  0020 ae0008        	ldw	x,#8
 508  0023 89            	pushw	x
 509  0024 ae500a        	ldw	x,#20490
 510  0027 cd0000        	call	_GPIO_WriteReverse
 512  002a 85            	popw	x
 513                     ; 280 		cont_led = 200;
 515  002b 35c80000      	mov	L161_cont_led,#200
 516  002f               L302:
 517                     ; 282 	TIM2_ClearITPendingBit(TIM2_IT_UPDATE);
 519  002f ae0001        	ldw	x,#1
 520  0032 cd0000        	call	_TIM2_ClearITPendingBit
 522                     ; 283 	if(Count_ms > 0)
 524  0035 be00          	ldw	x,_Count_ms
 525  0037 2707          	jreq	L502
 526                     ; 285 		Count_ms--;
 528  0039 be00          	ldw	x,_Count_ms
 529  003b 1d0001        	subw	x,#1
 530  003e bf00          	ldw	_Count_ms,x
 531  0040               L502:
 532                     ; 287 }
 535  0040 85            	popw	x
 536  0041 bf00          	ldw	c_lreg,x
 537  0043 85            	popw	x
 538  0044 bf02          	ldw	c_lreg+2,x
 539  0046 85            	popw	x
 540  0047 bf00          	ldw	c_y,x
 541  0049 320002        	pop	c_y+2
 542  004c 85            	popw	x
 543  004d bf00          	ldw	c_x,x
 544  004f 320002        	pop	c_x+2
 545  0052 80            	iret
 568                     ; 294  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 568                     ; 295  {
 569                     .text:	section	.text,new
 570  0000               f_TIM2_CAP_COM_IRQHandler:
 574                     ; 299  }
 577  0000 80            	iret
 600                     ; 336  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 600                     ; 337  {
 601                     .text:	section	.text,new
 602  0000               f_UART1_TX_IRQHandler:
 606                     ; 341  }
 609  0000 80            	iret
 632                     ; 348  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 632                     ; 349  {
 633                     .text:	section	.text,new
 634  0000               f_UART1_RX_IRQHandler:
 638                     ; 353  }
 641  0000 80            	iret
 663                     ; 361 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 663                     ; 362 {
 664                     .text:	section	.text,new
 665  0000               f_I2C_IRQHandler:
 669                     ; 366 }
 672  0000 80            	iret
 694                     ; 440  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 694                     ; 441  {
 695                     .text:	section	.text,new
 696  0000               f_ADC1_IRQHandler:
 700                     ; 445  }
 703  0000 80            	iret
 726                     ; 466 @svlreg INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 726                     ; 467 {
 727                     .text:	section	.text,new
 728  0000               f_TIM4_UPD_OVF_IRQHandler:
 730  0000 be02          	ldw	x,c_lreg+2
 731  0002 89            	pushw	x
 732  0003 be00          	ldw	x,c_lreg
 733  0005 89            	pushw	x
 736                     ; 469 }
 739  0006 85            	popw	x
 740  0007 bf00          	ldw	c_lreg,x
 741  0009 85            	popw	x
 742  000a bf02          	ldw	c_lreg+2,x
 743  000c 80            	iret
 766                     ; 477 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 766                     ; 478 {
 767                     .text:	section	.text,new
 768  0000               f_EEPROM_EEC_IRQHandler:
 772                     ; 482 }
 775  0000 80            	iret
 787                     	xref.b	_Count_ms
 788                     	xdef	f_EEPROM_EEC_IRQHandler
 789                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 790                     	xdef	f_ADC1_IRQHandler
 791                     	xdef	f_I2C_IRQHandler
 792                     	xdef	f_UART1_RX_IRQHandler
 793                     	xdef	f_UART1_TX_IRQHandler
 794                     	xdef	f_TIM2_CAP_COM_IRQHandler
 795                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 796                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 797                     	xdef	f_TIM1_CAP_COM_IRQHandler
 798                     	xdef	f_SPI_IRQHandler
 799                     	xdef	f_EXTI_PORTE_IRQHandler
 800                     	xdef	f_EXTI_PORTD_IRQHandler
 801                     	xdef	f_EXTI_PORTC_IRQHandler
 802                     	xdef	f_EXTI_PORTB_IRQHandler
 803                     	xdef	f_EXTI_PORTA_IRQHandler
 804                     	xdef	f_CLK_IRQHandler
 805                     	xdef	f_AWU_IRQHandler
 806                     	xdef	f_TLI_IRQHandler
 807                     	xdef	f_TRAP_IRQHandler
 808                     	xdef	f_NonHandledInterrupt
 809                     	xref	_TIM2_ClearITPendingBit
 810                     	xref	_GPIO_WriteReverse
 811                     	xref.b	c_lreg
 812                     	xref.b	c_x
 813                     	xref.b	c_y
 832                     	end
