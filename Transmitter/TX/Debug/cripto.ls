   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.13 - 06 Dec 2012
   3                     ; Generator (Limited) V4.3.9 - 06 Dec 2012
  17                     	bsct
  18  0000               _buffer_tx:
  19  0000 00            	dc.b	0
  20  0001 00            	dc.b	0
  21  0002 00            	dc.b	0
  22  0003               _codigofix:
  23  0003 f3            	dc.b	243
  24  0004               _contador:
  25  0004 0000          	dc.w	0
 121                     ; 17 void criptografia (unsigned int rol_cnt, unsigned  rol_fix)
 121                     ; 18 { 
 123                     .text:	section	.text,new
 124  0000               _criptografia:
 126  0000 89            	pushw	x
 127  0001 5205          	subw	sp,#5
 128       00000005      OFST:	set	5
 131                     ; 19 unsigned char  rol_aux1      = 0;
 133                     ; 20 unsigned char  rol_aux2      = 0;
 135  0003 0f03          	clr	(OFST-2,sp)
 136                     ; 21 unsigned char  rol_aux3      = 0;
 138  0005 0f04          	clr	(OFST-1,sp)
 139                     ; 22 unsigned char  rol_cnt_low   = 0;
 141                     ; 23 unsigned char  rol_cnt_hi    = 0;
 143                     ; 26   rol_cnt_low = (rol_cnt & 0x00FF);
 145  0007 9f            	ld	a,xl
 146  0008 a4ff          	and	a,#255
 147  000a 6b05          	ld	(OFST+0,sp),a
 148                     ; 27   rol_cnt_hi  = (rol_cnt >> 8);
 150  000c 7b06          	ld	a,(OFST+1,sp)
 151  000e 6b02          	ld	(OFST-3,sp),a
 152                     ; 29   if ((rol_cnt_low & 0x01) == 1)
 154  0010 7b05          	ld	a,(OFST+0,sp)
 155  0012 a401          	and	a,#1
 156  0014 a101          	cp	a,#1
 157  0016 2616          	jrne	L75
 158                     ; 31   rol_aux1 = rol_cnt_low + VALORA;          //Rotina Impar
 160  0018 7b05          	ld	a,(OFST+0,sp)
 161  001a ab65          	add	a,#101
 162  001c 6b01          	ld	(OFST-4,sp),a
 163                     ; 32   rol_aux2 = rol_cnt_hi  + VALORB ;
 165  001e 7b02          	ld	a,(OFST-3,sp)
 166  0020 abfb          	add	a,#251
 167  0022 6b03          	ld	(OFST-2,sp),a
 168                     ; 33   rol_aux3 = rol_fix     + VALORE + rol_cnt_low;
 170  0024 7b0b          	ld	a,(OFST+6,sp)
 171  0026 1b05          	add	a,(OFST+0,sp)
 172  0028 abb3          	add	a,#179
 173  002a 6b04          	ld	(OFST-1,sp),a
 175  002c 2014          	jra	L16
 176  002e               L75:
 177                     ; 37   rol_aux1 = rol_cnt_low + VALORC;          //Rotina Par
 179  002e 7b05          	ld	a,(OFST+0,sp)
 180  0030 ab95          	add	a,#149
 181  0032 6b01          	ld	(OFST-4,sp),a
 182                     ; 38   rol_aux2 = rol_cnt_hi  + VALORD ;
 184  0034 7b02          	ld	a,(OFST-3,sp)
 185  0036 abd3          	add	a,#211
 186  0038 6b03          	ld	(OFST-2,sp),a
 187                     ; 39   rol_aux3 = rol_fix     + VALORF + rol_cnt_low;
 189  003a 7b0b          	ld	a,(OFST+6,sp)
 190  003c 1b05          	add	a,(OFST+0,sp)
 191  003e abef          	add	a,#239
 192  0040 6b04          	ld	(OFST-1,sp),a
 193  0042               L16:
 194                     ; 43   rotaciona_left(&rol_aux2,rol_cnt_low & 0x16); // rotaciona rol_aux2 por (rol_cnt_low & 0x16) vezes
 196  0042 7b05          	ld	a,(OFST+0,sp)
 197  0044 a416          	and	a,#22
 198  0046 88            	push	a
 199  0047 96            	ldw	x,sp
 200  0048 1c0004        	addw	x,#OFST-1
 201  004b cd0000        	call	_rotaciona_left
 203  004e 84            	pop	a
 204                     ; 45   rotaciona_left(&rol_aux3,rol_cnt_low & 0x15);  // rotaciona rol_aux3 por (rol_cnt_low & 0x15) vezes
 206  004f 7b05          	ld	a,(OFST+0,sp)
 207  0051 a415          	and	a,#21
 208  0053 88            	push	a
 209  0054 96            	ldw	x,sp
 210  0055 1c0005        	addw	x,#OFST+0
 211  0058 cd0000        	call	_rotaciona_left
 213  005b 84            	pop	a
 214                     ; 47 	buffer_tx[0] = rol_aux1;                  //refrente a cnt_low
 216  005c 7b01          	ld	a,(OFST-4,sp)
 217  005e b700          	ld	_buffer_tx,a
 218                     ; 48 	buffer_tx[1] = rol_aux2;                  //refrente a cnt_hi
 220  0060 7b03          	ld	a,(OFST-2,sp)
 221  0062 b701          	ld	_buffer_tx+1,a
 222                     ; 49 	buffer_tx[2] = rol_aux3;                  //refrente a codigo fixo
 224  0064 7b04          	ld	a,(OFST-1,sp)
 225  0066 b702          	ld	_buffer_tx+2,a
 226                     ; 52 }
 229  0068 5b07          	addw	sp,#7
 230  006a 81            	ret
 283                     ; 56 void rotaciona_left ( unsigned char *dado, unsigned char vezes)
 283                     ; 57 {
 284                     .text:	section	.text,new
 285  0000               _rotaciona_left:
 287  0000 89            	pushw	x
 288  0001 88            	push	a
 289       00000001      OFST:	set	1
 292                     ; 59 unsigned char aux = *dado;
 294  0002 f6            	ld	a,(x)
 295  0003 6b01          	ld	(OFST+0,sp),a
 297  0005 2010          	jra	L511
 298  0007               L111:
 299                     ; 65     if (aux > (*dado <<= 1)) 
 301  0007 1e02          	ldw	x,(OFST+1,sp)
 302  0009 78            	sll	(x)
 303  000a f6            	ld	a,(x)
 304  000b 1101          	cp	a,(OFST+0,sp)
 305  000d 2403          	jruge	L121
 306                     ; 67     *dado = *dado + 1;
 308  000f 1e02          	ldw	x,(OFST+1,sp)
 309  0011 7c            	inc	(x)
 310  0012               L121:
 311                     ; 69     aux = *dado;
 313  0012 1e02          	ldw	x,(OFST+1,sp)
 314  0014 f6            	ld	a,(x)
 315  0015 6b01          	ld	(OFST+0,sp),a
 316  0017               L511:
 317                     ; 62    while (vezes-- > 0)
 319  0017 7b06          	ld	a,(OFST+5,sp)
 320  0019 0a06          	dec	(OFST+5,sp)
 321  001b 4d            	tnz	a
 322  001c 26e9          	jrne	L111
 323                     ; 73 }
 326  001e 5b03          	addw	sp,#3
 327  0020 81            	ret
 380                     ; 76 void rotaciona_right ( unsigned char *dado, unsigned char vezes)
 380                     ; 77 {
 381                     .text:	section	.text,new
 382  0000               _rotaciona_right:
 384  0000 89            	pushw	x
 385  0001 88            	push	a
 386       00000001      OFST:	set	1
 389                     ; 79 unsigned char aux = *dado;
 391  0002 f6            	ld	a,(x)
 392  0003 6b01          	ld	(OFST+0,sp),a
 394  0005 2014          	jra	L551
 395  0007               L151:
 396                     ; 85     *dado = *dado >> 1;
 398  0007 1e02          	ldw	x,(OFST+1,sp)
 399  0009 74            	srl	(x)
 400                     ; 87     if ((aux & 0x01) > 0)
 402  000a 7b01          	ld	a,(OFST+0,sp)
 403  000c a501          	bcp	a,#1
 404  000e 2706          	jreq	L161
 405                     ; 89     *dado = *dado + 0x80;
 407  0010 1e02          	ldw	x,(OFST+1,sp)
 408  0012 f6            	ld	a,(x)
 409  0013 ab80          	add	a,#128
 410  0015 f7            	ld	(x),a
 411  0016               L161:
 412                     ; 92     aux = *dado;
 414  0016 1e02          	ldw	x,(OFST+1,sp)
 415  0018 f6            	ld	a,(x)
 416  0019 6b01          	ld	(OFST+0,sp),a
 417  001b               L551:
 418                     ; 82    while (vezes-- > 0)
 420  001b 7b06          	ld	a,(OFST+5,sp)
 421  001d 0a06          	dec	(OFST+5,sp)
 422  001f 4d            	tnz	a
 423  0020 26e5          	jrne	L151
 424                     ; 96 }
 427  0022 5b03          	addw	sp,#3
 428  0024 81            	ret
 471                     	xdef	_rotaciona_right
 472                     	xdef	_rotaciona_left
 473                     	xdef	_criptografia
 474                     	xdef	_contador
 475                     	xdef	_codigofix
 476                     	xdef	_buffer_tx
 495                     	end
