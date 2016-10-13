   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
2178                     	bsct
2179  0000               _buffer:
2180  0000 00            	dc.b	0
2181  0001 00            	dc.b	0
2182  0002 00            	dc.b	0
2183  0003               _buffer_tx:
2184  0003 00            	dc.b	0
2185  0004 00            	dc.b	0
2186  0005 00            	dc.b	0
2187                     .const:	section	.text
2188  0000               _tempo:
2189  0000 05            	dc.b	5
2190  0001               _palavras:
2191  0001 05            	dc.b	5
2192                     	bsct
2193  0006               _codigo:
2194  0006 55            	dc.b	85
2195  0007 55            	dc.b	85
2196  0008 55            	dc.b	85
2197  0009               _Count_ms:
2198  0009 0000          	dc.w	0
2199  000b               _numero_envios:
2200  000b 00            	dc.b	0
2249                     ; 80 main()
2249                     ; 81 {
2251                     .text:	section	.text,new
2252  0000               _main:
2256                     ; 82 	CLK->CKDIVR = 0x00;//Divide clock interno de 16MHz por 4
2258  0000 725f50c6      	clr	20678
2259                     ; 83 	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_OUT_PP_LOW_FAST); //GPIO_MODE_OUT_PP_HIGH_SLOW ); //configuração do led 
2261  0004 ae00e0        	ldw	x,#224
2262  0007 89            	pushw	x
2263  0008 ae0008        	ldw	x,#8
2264  000b 89            	pushw	x
2265  000c ae500a        	ldw	x,#20490
2266  000f cd0000        	call	_GPIO_Init
2268  0012 5b04          	addw	sp,#4
2269                     ; 84 	GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_OUT_PP_LOW_FAST ); //configuração do Out
2271  0014 ae00e0        	ldw	x,#224
2272  0017 89            	pushw	x
2273  0018 ae0040        	ldw	x,#64
2274  001b 89            	pushw	x
2275  001c ae500f        	ldw	x,#20495
2276  001f cd0000        	call	_GPIO_Init
2278  0022 5b04          	addw	sp,#4
2279                     ; 85 	GPIO_Init(GPIOD, GPIO_PIN_3|GPIO_PIN_2, GPIO_MODE_OUT_PP_LOW_SLOW ); //configuração do selo
2281  0024 ae00c0        	ldw	x,#192
2282  0027 89            	pushw	x
2283  0028 ae000c        	ldw	x,#12
2284  002b 89            	pushw	x
2285  002c ae500f        	ldw	x,#20495
2286  002f cd0000        	call	_GPIO_Init
2288  0032 5b04          	addw	sp,#4
2289                     ; 86 	GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_IN_PU_NO_IT);//configura tecla 1
2291  0034 ae0040        	ldw	x,#64
2292  0037 89            	pushw	x
2293  0038 ae0008        	ldw	x,#8
2294  003b 89            	pushw	x
2295  003c ae5000        	ldw	x,#20480
2296  003f cd0000        	call	_GPIO_Init
2298  0042 5b04          	addw	sp,#4
2299                     ; 87 	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_PU_NO_IT);//configura tecla 2
2301  0044 ae0040        	ldw	x,#64
2302  0047 89            	pushw	x
2303  0048 ae0010        	ldw	x,#16
2304  004b 89            	pushw	x
2305  004c ae500a        	ldw	x,#20490
2306  004f cd0000        	call	_GPIO_Init
2308  0052 5b04          	addw	sp,#4
2309                     ; 88 	GPIO_Init(GPIOD, GPIO_PIN_4|GPIO_PIN_5, GPIO_MODE_IN_PU_NO_IT);//configura tecla 3
2311  0054 ae0040        	ldw	x,#64
2312  0057 89            	pushw	x
2313  0058 ae0030        	ldw	x,#48
2314  005b 89            	pushw	x
2315  005c ae500f        	ldw	x,#20495
2316  005f cd0000        	call	_GPIO_Init
2318  0062 5b04          	addw	sp,#4
2319                     ; 90 	GPIO_WriteHigh(GPIOC, GPIO_PIN_3);
2321  0064 ae0008        	ldw	x,#8
2322  0067 89            	pushw	x
2323  0068 ae500a        	ldw	x,#20490
2324  006b cd0000        	call	_GPIO_WriteHigh
2326  006e 85            	popw	x
2327                     ; 94 	TIM2_TimeBaseInit(TIM2_PRESCALER_8, 1999);//Configura base de tempo com 1ms
2329  006f ae07cf        	ldw	x,#1999
2330  0072 89            	pushw	x
2331  0073 ae0003        	ldw	x,#3
2332  0076 cd0000        	call	_TIM2_TimeBaseInit
2334  0079 85            	popw	x
2335                     ; 95 	TIM2_ITConfig(TIM2_IT_UPDATE, ENABLE);//Habilita interrupção por overflow
2337  007a ae0001        	ldw	x,#1
2338  007d 89            	pushw	x
2339  007e ae0001        	ldw	x,#1
2340  0081 cd0000        	call	_TIM2_ITConfig
2342  0084 85            	popw	x
2343                     ; 96 	TIM2_Cmd(ENABLE);
2345  0085 ae0001        	ldw	x,#1
2346  0088 cd0000        	call	_TIM2_Cmd
2348                     ; 99 	TIM4_TimeBaseInit(TIM4_PRESCALER_64, 124); //Configura base tempo com 500us
2350  008b 4b7c          	push	#124
2351  008d ae0006        	ldw	x,#6
2352  0090 cd0000        	call	_TIM4_TimeBaseInit
2354  0093 84            	pop	a
2355                     ; 101 	TIM4_Cmd(ENABLE); //Inicia tempo de contagem
2357  0094 ae0001        	ldw	x,#1
2358  0097 cd0000        	call	_TIM4_Cmd
2360                     ; 103 	enableInterrupts(); //Habilita chave geral das interrupções
2363  009a 9a            rim
2365                     ; 106   tempo_palavra=tempo;
2368  009b 35050007      	mov	_tempo_palavra,#5
2369                     ; 107   n_palavras=palavras;
2371  009f 35050006      	mov	_n_palavras,#5
2372                     ; 110 	codigo[0] = (*(PointerAttr uint8_t *) (uint8_t)0x4000);
2374  00a3 450006        	mov	_codigo,0
2375                     ; 111 	codigo[1] = (*(PointerAttr uint8_t *) (uint8_t)0x4001);
2377  00a6 450107        	mov	_codigo+1,1
2378                     ; 112 	codigo[2] = (*(PointerAttr uint8_t *) (uint8_t)0x4002);
2380  00a9 450208        	mov	_codigo+2,2
2381                     ; 114 	tx_codigo = 1;
2383  00ac 35010005      	mov	_tx_codigo,#1
2384                     ; 117 	if(GPIO_ReadInputPin(GPIOA, GPIO_PIN_3) == RESET)
2386  00b0 ae0008        	ldw	x,#8
2387  00b3 89            	pushw	x
2388  00b4 ae5000        	ldw	x,#20480
2389  00b7 cd0000        	call	_GPIO_ReadInputPin
2391  00ba 5b02          	addw	sp,#2
2392  00bc a30000        	cpw	x,#0
2393  00bf 2606          	jrne	L1441
2394                     ; 119 		codigo[2] = 0b11110010;
2396  00c1 35f20008      	mov	_codigo+2,#242
2398  00c5 202c          	jra	L3541
2399  00c7               L1441:
2400                     ; 122 	else if(GPIO_ReadInputPin(GPIOC, GPIO_PIN_4) == RESET)
2402  00c7 ae0010        	ldw	x,#16
2403  00ca 89            	pushw	x
2404  00cb ae500a        	ldw	x,#20490
2405  00ce cd0000        	call	_GPIO_ReadInputPin
2407  00d1 5b02          	addw	sp,#2
2408  00d3 a30000        	cpw	x,#0
2409  00d6 2606          	jrne	L5441
2410                     ; 124 		codigo[2] = 0b11110001;
2412  00d8 35f10008      	mov	_codigo+2,#241
2414  00dc 2015          	jra	L3541
2415  00de               L5441:
2416                     ; 127 	else if(GPIO_ReadInputPin(GPIOD, GPIO_PIN_4) == RESET)
2418  00de ae0010        	ldw	x,#16
2419  00e1 89            	pushw	x
2420  00e2 ae500f        	ldw	x,#20495
2421  00e5 cd0000        	call	_GPIO_ReadInputPin
2423  00e8 5b02          	addw	sp,#2
2424  00ea a30000        	cpw	x,#0
2425  00ed 2604          	jrne	L3541
2426                     ; 129 		codigo[2] = 0b11110011;
2428  00ef 35f30008      	mov	_codigo+2,#243
2429  00f3               L3541:
2430                     ; 133     if(tx_codigo){
2432  00f3 3d05          	tnz	_tx_codigo
2433  00f5 2726          	jreq	L7541
2435  00f7 2020          	jra	L3641
2436  00f9               L1641:
2437                     ; 136         buffer_tx[0] = codigo[0];
2439  00f9 450603        	mov	_buffer_tx,_codigo
2440                     ; 137         buffer_tx[1] = codigo[1];
2442  00fc 450704        	mov	_buffer_tx+1,_codigo+1
2443                     ; 138         buffer_tx[2] = codigo[2];
2445  00ff 450805        	mov	_buffer_tx+2,_codigo+2
2446                     ; 139         transmitir();
2448  0102 cd0000        	call	_transmitir
2450                     ; 140         tx_0101();
2452  0105 cd0000        	call	_tx_0101
2454                     ; 142         buffer_tx[0] = codigo[0];
2456  0108 450603        	mov	_buffer_tx,_codigo
2457                     ; 143         buffer_tx[1] = codigo[1];
2459  010b 450704        	mov	_buffer_tx+1,_codigo+1
2460                     ; 144         buffer_tx[2] = codigo[2];
2462  010e 450805        	mov	_buffer_tx+2,_codigo+2
2463                     ; 145         transmitir();
2465  0111 cd0000        	call	_transmitir
2467                     ; 146         tx_0101();
2469  0114 cd0000        	call	_tx_0101
2471                     ; 148         n_palavras--;
2473  0117 3a06          	dec	_n_palavras
2474  0119               L3641:
2475                     ; 134       while(n_palavras>0){
2477  0119 3d06          	tnz	_n_palavras
2478  011b 26dc          	jrne	L1641
2479  011d               L7541:
2480                     ; 151 		numero_envios++;
2482  011d 3c0b          	inc	_numero_envios
2483                     ; 152 		tempo_palavra=tempo;
2485  011f 35050007      	mov	_tempo_palavra,#5
2486                     ; 153 		n_palavras=palavras;			
2488  0123 35050006      	mov	_n_palavras,#5
2489                     ; 155 		if(	
2489                     ; 156 			//le tecla 1
2489                     ; 157 			(GPIO_ReadInputPin(GPIOA, GPIO_PIN_3) != RESET) && 
2489                     ; 158 			//le tecla 2
2489                     ; 159 			(GPIO_ReadInputPin(GPIOC, GPIO_PIN_4) != RESET) &&
2489                     ; 160 			//le tecla 3
2489                     ; 161 			(GPIO_ReadInputPin(GPIOD, GPIO_PIN_4) != RESET)
2489                     ; 162 			){
2491  0127 ae0008        	ldw	x,#8
2492  012a 89            	pushw	x
2493  012b ae5000        	ldw	x,#20480
2494  012e cd0000        	call	_GPIO_ReadInputPin
2496  0131 5b02          	addw	sp,#2
2497  0133 a30000        	cpw	x,#0
2498  0136 2733          	jreq	L7641
2500  0138 ae0010        	ldw	x,#16
2501  013b 89            	pushw	x
2502  013c ae500a        	ldw	x,#20490
2503  013f cd0000        	call	_GPIO_ReadInputPin
2505  0142 5b02          	addw	sp,#2
2506  0144 a30000        	cpw	x,#0
2507  0147 2722          	jreq	L7641
2509  0149 ae0010        	ldw	x,#16
2510  014c 89            	pushw	x
2511  014d ae500f        	ldw	x,#20495
2512  0150 cd0000        	call	_GPIO_ReadInputPin
2514  0153 5b02          	addw	sp,#2
2515  0155 a30000        	cpw	x,#0
2516  0158 2711          	jreq	L7641
2517                     ; 163 			if(numero_envios >= 1){
2519  015a 3d0b          	tnz	_numero_envios
2520  015c 2795          	jreq	L3541
2521  015e               L3741:
2522                     ; 165 					GPIO_WriteLow(GPIOC, GPIO_PIN_3); //DESLIGA LED
2524  015e ae0008        	ldw	x,#8
2525  0161 89            	pushw	x
2526  0162 ae500a        	ldw	x,#20490
2527  0165 cd0000        	call	_GPIO_WriteLow
2529  0168 85            	popw	x
2531  0169 20f3          	jra	L3741
2532  016b               L7641:
2533                     ; 172 			if(numero_envios >= 8){
2535  016b b60b          	ld	a,_numero_envios
2536  016d a108          	cp	a,#8
2537  016f 2582          	jrult	L3541
2538  0171               L3051:
2539                     ; 174 					GPIO_WriteLow(GPIOC, GPIO_PIN_3); //DESLIGA LED
2541  0171 ae0008        	ldw	x,#8
2542  0174 89            	pushw	x
2543  0175 ae500a        	ldw	x,#20490
2544  0178 cd0000        	call	_GPIO_WriteLow
2546  017b 85            	popw	x
2548  017c 20f3          	jra	L3051
2572                     ; 184 void bit1(void){
2573                     .text:	section	.text,new
2574  0000               _bit1:
2578                     ; 185   out=0;                    
2580  0000 721d500f      	bres	_PDODR,#6
2581                     ; 186   TIMER_COUNTER=0;
2583  0004 725f5346      	clr	21318
2584                     ; 187   TIMER_STATUS=0;
2586  0008 725f5344      	clr	21316
2588  000c               L3251:
2589                     ; 188   while(TIMER_STATUS==0){} 
2591  000c 725d5344      	tnz	21316
2592  0010 27fa          	jreq	L3251
2593                     ; 189   TIMER_STATUS=0;
2595  0012 725f5344      	clr	21316
2597  0016               L3351:
2598                     ; 190   while(TIMER_STATUS==0){} 
2600  0016 725d5344      	tnz	21316
2601  001a 27fa          	jreq	L3351
2602                     ; 191   TIMER_STATUS=0;
2604  001c 725f5344      	clr	21316
2605                     ; 192   out=1;
2607  0020 721c500f      	bset	_PDODR,#6
2609  0024               L3451:
2610                     ; 193   while(TIMER_STATUS==0){} 
2612  0024 725d5344      	tnz	21316
2613  0028 27fa          	jreq	L3451
2614                     ; 194   TIMER_STATUS=0;
2616  002a 725f5344      	clr	21316
2617                     ; 195   out=0;
2619  002e 721d500f      	bres	_PDODR,#6
2620                     ; 196 }
2623  0032 81            	ret
2647                     ; 198 void bit0(void){
2648                     .text:	section	.text,new
2649  0000               _bit0:
2653                     ; 199 	out=0;                    
2655  0000 721d500f      	bres	_PDODR,#6
2656                     ; 200   TIMER_COUNTER=0;
2658  0004 725f5346      	clr	21318
2659                     ; 201   TIMER_STATUS=0;
2661  0008 725f5344      	clr	21316
2663  000c               L3651:
2664                     ; 202   while(TIMER_STATUS==0){} 
2666  000c 725d5344      	tnz	21316
2667  0010 27fa          	jreq	L3651
2668                     ; 203   TIMER_STATUS=0;
2670  0012 725f5344      	clr	21316
2671                     ; 204   out=1;
2673  0016 721c500f      	bset	_PDODR,#6
2675  001a               L3751:
2676                     ; 205   while(TIMER_STATUS==0){} 
2678  001a 725d5344      	tnz	21316
2679  001e 27fa          	jreq	L3751
2680                     ; 206   TIMER_STATUS=0;
2682  0020 725f5344      	clr	21316
2684  0024               L3061:
2685                     ; 207   while(TIMER_STATUS==0){} 
2687  0024 725d5344      	tnz	21316
2688  0028 27fa          	jreq	L3061
2689                     ; 208   TIMER_STATUS=0;
2691  002a 725f5344      	clr	21316
2692                     ; 209   out=0;
2694  002e 721d500f      	bres	_PDODR,#6
2695                     ; 210 }
2698  0032 81            	ret
2726                     ; 212 void transmitir(void){
2727                     .text:	section	.text,new
2728  0000               _transmitir:
2732                     ; 213   TIMER_COUNTER=0;
2734  0000 725f5346      	clr	21318
2735                     ; 214   TIMER_STATUS=0;
2737  0004 725f5344      	clr	21316
2738                     ; 215   var1=0;
2740  0008 3f04          	clr	_var1
2741                     ; 216   out=0;
2743  000a 721d500f      	bres	_PDODR,#6
2745  000e 200c          	jra	L3261
2746  0010               L1361:
2747                     ; 218     while(TIMER_STATUS==0){} 
2749  0010 725d5344      	tnz	21316
2750  0014 27fa          	jreq	L1361
2751                     ; 219     TIMER_STATUS=0;
2753  0016 725f5344      	clr	21316
2754                     ; 220     var1++;
2756  001a 3c04          	inc	_var1
2757  001c               L3261:
2758                     ; 217   while(var1<23){           //delay word
2760  001c b604          	ld	a,_var1
2761  001e a117          	cp	a,#23
2762  0020 25ee          	jrult	L1361
2763                     ; 222   out=1;                    //start bit
2765  0022 721c500f      	bset	_PDODR,#6
2766                     ; 223   TIMER_COUNTER=0;
2768  0026 725f5346      	clr	21318
2769                     ; 224   TIMER_STATUS=0;
2771  002a 725f5344      	clr	21316
2773  002e               L1461:
2774                     ; 225   while(TIMER_STATUS==0){} 
2776  002e 725d5344      	tnz	21316
2777  0032 27fa          	jreq	L1461
2778                     ; 226   out=0;
2780  0034 721d500f      	bres	_PDODR,#6
2781                     ; 228   var1 = 0;                       //byte 1
2783  0038 3f04          	clr	_var1
2784  003a               L5461:
2785                     ; 230     if(buffer_tx[0] & 0x80){
2787  003a b603          	ld	a,_buffer_tx
2788  003c a580          	bcp	a,#128
2789  003e 2705          	jreq	L3561
2790                     ; 231       bit1();
2792  0040 cd0000        	call	_bit1
2795  0043 2003          	jra	L5561
2796  0045               L3561:
2797                     ; 233       bit0();
2799  0045 cd0000        	call	_bit0
2801  0048               L5561:
2802                     ; 235     buffer_tx[0] = buffer_tx[0] << 1;
2804  0048 3803          	sll	_buffer_tx
2805                     ; 236     ++var1;
2807  004a 3c04          	inc	_var1
2808                     ; 229   while (var1 < 8){
2808                     ; 230     if(buffer_tx[0] & 0x80){
2808                     ; 231       bit1();
2808                     ; 232     }else{
2808                     ; 233       bit0();
2808                     ; 234     }
2808                     ; 235     buffer_tx[0] = buffer_tx[0] << 1;
2808                     ; 236     ++var1;
2810  004c b604          	ld	a,_var1
2811  004e a108          	cp	a,#8
2812  0050 25e8          	jrult	L5461
2813                     ; 240   var1 = 0;
2815  0052 3f04          	clr	_var1
2816  0054               L7561:
2817                     ; 242     if(buffer_tx[1] & 0x80){
2819  0054 b604          	ld	a,_buffer_tx+1
2820  0056 a580          	bcp	a,#128
2821  0058 2705          	jreq	L5661
2822                     ; 243       bit1();
2824  005a cd0000        	call	_bit1
2827  005d 2003          	jra	L7661
2828  005f               L5661:
2829                     ; 245       bit0();
2831  005f cd0000        	call	_bit0
2833  0062               L7661:
2834                     ; 247     buffer_tx[1] = buffer_tx[1] << 1;
2836  0062 3804          	sll	_buffer_tx+1
2837                     ; 248     ++var1;
2839  0064 3c04          	inc	_var1
2840                     ; 241   while (var1 < 8){               //byte 2
2840                     ; 242     if(buffer_tx[1] & 0x80){
2840                     ; 243       bit1();
2840                     ; 244     }else{
2840                     ; 245       bit0();
2840                     ; 246     }
2840                     ; 247     buffer_tx[1] = buffer_tx[1] << 1;
2840                     ; 248     ++var1;
2842  0066 b604          	ld	a,_var1
2843  0068 a108          	cp	a,#8
2844  006a 25e8          	jrult	L7561
2845                     ; 251   var1 = 0;                     //byte 3
2847  006c 3f04          	clr	_var1
2848  006e               L1761:
2849                     ; 253     if(buffer_tx[2] & 0x80){
2851  006e b605          	ld	a,_buffer_tx+2
2852  0070 a580          	bcp	a,#128
2853  0072 2705          	jreq	L7761
2854                     ; 254       bit1();
2856  0074 cd0000        	call	_bit1
2859  0077 2003          	jra	L1071
2860  0079               L7761:
2861                     ; 256       bit0();
2863  0079 cd0000        	call	_bit0
2865  007c               L1071:
2866                     ; 258     buffer_tx[2] = buffer_tx[2] << 1;
2868  007c 3805          	sll	_buffer_tx+2
2869                     ; 259     ++var1;
2871  007e 3c04          	inc	_var1
2872                     ; 252   while (var1 < 8){
2872                     ; 253     if(buffer_tx[2] & 0x80){
2872                     ; 254       bit1();
2872                     ; 255     }else{
2872                     ; 256       bit0();
2872                     ; 257     }
2872                     ; 258     buffer_tx[2] = buffer_tx[2] << 1;
2872                     ; 259     ++var1;
2874  0080 b604          	ld	a,_var1
2875  0082 a108          	cp	a,#8
2876  0084 25e8          	jrult	L1761
2877                     ; 262 }
2880  0086 81            	ret
2905                     ; 264 void tx_0101 (void){        //6p20
2906                     .text:	section	.text,new
2907  0000               _tx_0101:
2911                     ; 265   bit0();
2913  0000 cd0000        	call	_bit0
2915                     ; 266   bit1();  
2917  0003 cd0000        	call	_bit1
2919                     ; 267   bit0();
2921  0006 cd0000        	call	_bit0
2923                     ; 268   bit1();
2925  0009 cd0000        	call	_bit1
2927                     ; 269 }
2930  000c 81            	ret
2964                     ; 272 void delay (unsigned int tempo){
2965                     .text:	section	.text,new
2966  0000               _delay:
2968  0000 89            	pushw	x
2969       00000000      OFST:	set	0
2972  0001               L3371:
2973                     ; 273   while (--tempo > 0){;}
2975  0001 1e01          	ldw	x,(OFST+1,sp)
2976  0003 1d0001        	subw	x,#1
2977  0006 1f01          	ldw	(OFST+1,sp),x
2978  0008 26f7          	jrne	L3371
2979                     ; 274 }
2982  000a 85            	popw	x
2983  000b 81            	ret
3018                     ; 281 void Delay_ms (unsigned int tempo)
3018                     ; 282 {
3019                     .text:	section	.text,new
3020  0000               _Delay_ms:
3024                     ; 283 	Count_ms = tempo;
3026  0000 bf09          	ldw	_Count_ms,x
3028  0002               L1671:
3029                     ; 284 	while(Count_ms);
3031  0002 be09          	ldw	x,_Count_ms
3032  0004 26fc          	jrne	L1671
3033                     ; 285 }
3036  0006 81            	ret
3319                     	xdef	_main
3320                     	xdef	_numero_envios
3321                     	switch	.ubsct
3322  0000               _Envia:
3323  0000 00            	ds.b	1
3324                     	xdef	_Envia
3325                     	xdef	_Count_ms
3326  0001               _Byte2:
3327  0001 00            	ds.b	1
3328                     	xdef	_Byte2
3329  0002               _Byte1:
3330  0002 00            	ds.b	1
3331                     	xdef	_Byte1
3332  0003               _Byte0:
3333  0003 00            	ds.b	1
3334                     	xdef	_Byte0
3335                     	xdef	_Delay_ms
3336                     	xdef	_delay
3337                     	xdef	_tx_0101
3338                     	xdef	_bit0
3339                     	xdef	_bit1
3340                     	xdef	_transmitir
3341                     	xdef	_codigo
3342  0004               _var1:
3343  0004 00            	ds.b	1
3344                     	xdef	_var1
3345  0005               _tx_codigo:
3346  0005 00            	ds.b	1
3347                     	xdef	_tx_codigo
3348  0006               _n_palavras:
3349  0006 00            	ds.b	1
3350                     	xdef	_n_palavras
3351  0007               _tempo_palavra:
3352  0007 00            	ds.b	1
3353                     	xdef	_tempo_palavra
3354                     	xdef	_palavras
3355                     	xdef	_tempo
3356                     	xdef	_buffer_tx
3357                     	xdef	_buffer
3358  0008               _temp:
3359  0008 0000          	ds.b	2
3360                     	xdef	_temp
3361                     	xref	_TIM4_Cmd
3362                     	xref	_TIM4_TimeBaseInit
3363                     	xref	_TIM2_ITConfig
3364                     	xref	_TIM2_Cmd
3365                     	xref	_TIM2_TimeBaseInit
3366                     	xref	_GPIO_ReadInputPin
3367                     	xref	_GPIO_WriteLow
3368                     	xref	_GPIO_WriteHigh
3369                     	xref	_GPIO_Init
3389                     	end
