/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */

#include "stm8s.h"
#include "iostm8s103.h"

/* New Type: "flags":
placed into a char, accessed only as individual bits
ex:  flags Var;
use: Var.bit0; Var.bit4;
*/
typedef struct
	{
	unsigned char    bit0:1;
	unsigned char    bit1:1;                
	unsigned char    bit2:1;                 
	unsigned char    bit3:1;            
	unsigned char    bit4:1;
	unsigned char    bit5:1;
	unsigned char    bit6:1;
	unsigned char    bit7:1;
	} flags;
	
/* New Type: "char_bit":
unsigned char, accessed as individual bits as well as whole byte 
ex:  char_bit Var;
use: Var.bit.bit5; Var.byte; 
*/
typedef union
	{
	unsigned char	byte;
	flags	bit;
	} char_bit;

//Definição para atuar diretamete no pino atraves de union
volatile char_bit	PDODR	@0x500F;
#define	PDO0	PDODR.bit.bit0
#define PDO1	PDODR.bit.bit1
#define PDO2	PDODR.bit.bit2
#define	PDO3	PDODR.bit.bit3
#define PDO4	PDODR.bit.bit4
#define PDO5	PDODR.bit.bit5
#define PDO6	PDODR.bit.bit6
#define PDO7	PDODR.bit.bit7


#define TIMER_COUNTER     TIM4->CNTR 
#define TIMER_STATUS      TIM4->SR1

volatile unsigned int temp;

unsigned char buffer[3]     = {0,0,0};
unsigned char buffer_tx[3]  = {0,0,0};

//Definições da porta através de macro
#define out    PDO6 // saída do controle

unsigned const char tempo=5, palavras=5;
unsigned char tempo_palavra, n_palavras, tx_codigo;
unsigned char var1;

volatile unsigned char codigo[3] = {85,85,85};   //codigo do 6p20

void MCU_init(void); /* Device initialization function declaration */
void transmitir(void);
void bit1(void);
void bit0(void);
void tx_0101(void);
void delay (unsigned int tempo);

void Delay_ms (unsigned int tempo);
/* Variáveis globais */
volatile unsigned char	Byte0,Byte1,Byte2;
u16 Count_ms = 0;
u8 Envia;
u8 numero_envios = 0;

main()
{
	CLK->CKDIVR = 0x00;//Divide clock interno de 16MHz por 4
	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_OUT_PP_LOW_FAST); //GPIO_MODE_OUT_PP_HIGH_SLOW ); //configuração do led 
	GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_OUT_PP_LOW_FAST ); //configuração do Out
	GPIO_Init(GPIOD, GPIO_PIN_3|GPIO_PIN_2, GPIO_MODE_OUT_PP_LOW_SLOW ); //configuração do selo
	GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_IN_PU_NO_IT);//configura tecla 1
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_PU_NO_IT);//configura tecla 2
	GPIO_Init(GPIOD, GPIO_PIN_4|GPIO_PIN_5, GPIO_MODE_IN_PU_NO_IT);//configura tecla 3
	
	GPIO_WriteHigh(GPIOC, GPIO_PIN_3);
	
	
	//Configuração do TIM2 com base de tempo em 1ms
	TIM2_TimeBaseInit(TIM2_PRESCALER_8, 1999);//Configura base de tempo com 1ms
	TIM2_ITConfig(TIM2_IT_UPDATE, ENABLE);//Habilita interrupção por overflow
	TIM2_Cmd(ENABLE);

	//Configuração do TIM4 com base de tempo em 500us
	TIM4_TimeBaseInit(TIM4_PRESCALER_64, 124); //Configura base tempo com 500us
	//TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);//Habilita interrupção por overflow
	TIM4_Cmd(ENABLE); //Inicia tempo de contagem
	
	enableInterrupts(); //Habilita chave geral das interrupções

  /* include your code here */
  tempo_palavra=tempo;
  n_palavras=palavras;

	//pega 3 bytes salvos na eeprom para ter endereço unico
	codigo[0] = (*(PointerAttr uint8_t *) (uint8_t)0x4000);
	codigo[1] = (*(PointerAttr uint8_t *) (uint8_t)0x4001);
	codigo[2] = (*(PointerAttr uint8_t *) (uint8_t)0x4002);
  
	tx_codigo = 1;

	//le tecla 1
	if(GPIO_ReadInputPin(GPIOA, GPIO_PIN_3) == RESET)
	{
		codigo[2] = 0b11110010;
	}
	//le tecla 2
	else if(GPIO_ReadInputPin(GPIOC, GPIO_PIN_4) == RESET)
	{
		codigo[2] = 0b11110001;
	}
	//le tecla 3
	else if(GPIO_ReadInputPin(GPIOD, GPIO_PIN_4) == RESET)
	{
		codigo[2] = 0b11110011;
	}
  for(;;) {

    if(tx_codigo){
      while(n_palavras>0){

        buffer_tx[0] = codigo[0];
        buffer_tx[1] = codigo[1];
        buffer_tx[2] = codigo[2];
        transmitir();
        tx_0101();

        buffer_tx[0] = codigo[0];
        buffer_tx[1] = codigo[1];
        buffer_tx[2] = codigo[2];
        transmitir();
        tx_0101();

        n_palavras--;
      }
		}
		numero_envios++;
		tempo_palavra=tempo;
		n_palavras=palavras;			
		/*se todas as teclas estiverem livres e já transcorreu pelo menos 2 envios com 5 repetições por envio (2 segundos), desliga */
		if(	
			//le tecla 1
			(GPIO_ReadInputPin(GPIOA, GPIO_PIN_3) != RESET) && 
			//le tecla 2
			(GPIO_ReadInputPin(GPIOC, GPIO_PIN_4) != RESET) &&
			//le tecla 3
			(GPIO_ReadInputPin(GPIOD, GPIO_PIN_4) != RESET)
			){
			if(numero_envios >= 1){
					 while(1){
					GPIO_WriteLow(GPIOC, GPIO_PIN_3); //DESLIGA LED
					//DESLIGA SELO ou entra em Low power
				}
			}
		}
		/*se qualquer tecla estievr pressionada, envia até 8 vezes, com 5 repetições por envio  (10 segundos), enquanto botão estiver pressionado*/
		else{
			if(numero_envios >= 8){
					while(1){
					GPIO_WriteLow(GPIOC, GPIO_PIN_3); //DESLIGA LED
					//DESLIGA SELO ou entra em Low power
				}
			}
		}
	}
} /* loop forever */
/* please make sure that you never leave main */


void bit1(void){
  out=0;                    
  TIMER_COUNTER=0;
  TIMER_STATUS=0;
  while(TIMER_STATUS==0){} 
  TIMER_STATUS=0;
  while(TIMER_STATUS==0){} 
  TIMER_STATUS=0;
  out=1;
  while(TIMER_STATUS==0){} 
  TIMER_STATUS=0;
  out=0;
}

void bit0(void){
	out=0;                    
  TIMER_COUNTER=0;
  TIMER_STATUS=0;
  while(TIMER_STATUS==0){} 
  TIMER_STATUS=0;
  out=1;
  while(TIMER_STATUS==0){} 
  TIMER_STATUS=0;
  while(TIMER_STATUS==0){} 
  TIMER_STATUS=0;
  out=0;
}

void transmitir(void){
  TIMER_COUNTER=0;
  TIMER_STATUS=0;
  var1=0;
  out=0;
  while(var1<23){           //delay word
    while(TIMER_STATUS==0){} 
    TIMER_STATUS=0;
    var1++;
  }
  out=1;                    //start bit
  TIMER_COUNTER=0;
  TIMER_STATUS=0;
  while(TIMER_STATUS==0){} 
  out=0;

  var1 = 0;                       //byte 1
  while (var1 < 8){
    if(buffer_tx[0] & 0x80){
      bit1();
    }else{
      bit0();
    }
    buffer_tx[0] = buffer_tx[0] << 1;
    ++var1;
  }
  

  var1 = 0;
  while (var1 < 8){               //byte 2
    if(buffer_tx[1] & 0x80){
      bit1();
    }else{
      bit0();
    }
    buffer_tx[1] = buffer_tx[1] << 1;
    ++var1;
  }

  var1 = 0;                     //byte 3
  while (var1 < 8){
    if(buffer_tx[2] & 0x80){
      bit1();
    }else{
      bit0();
    }
    buffer_tx[2] = buffer_tx[2] << 1;
    ++var1;
  }

}

void tx_0101 (void){        //6p20
  bit0();
  bit1();  
  bit0();
  bit1();
}


void delay (unsigned int tempo){
  while (--tempo > 0){;}
}

/*
** ===================================================================
** Rotina Delay de N MiliSegundos
** ===================================================================
*/
void Delay_ms (unsigned int tempo)
{
	Count_ms = tempo;
	while(Count_ms);
}
