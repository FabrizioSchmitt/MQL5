//+------------------------------------------------------------------+
//|                                         Exe9_FluxosEControle.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property script_show_inputs

#define NUM_1 1
#define NUM_2 2
#define NUM_3 4
#define NUM_4 10
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
//IF- função condicional

if (NUM_1 > NUM_2){
   Print("NUM_1 > NUM_2");
}
else{
   Print("NUM_2 > NUM_1");
}

/*Função FOR (para) 
     Inicializa   verifica         executa */
for (int i=0;       i < 10;          i++){
   Print("Valor de i", i);
}
int num1=0;
int num2=0;

/*enquanto   condição for true*/;
while       (num1<10){
//Faça
   num1++;
   Print("Num1 = ",num1);
/*A condição while pode ou não executar*/
}
/* Faça enquanto. Essa instrução executa pelo menos uma vez*/
do{
   num2++;
   Print("Num2 =",num2);
}while(num2<10);
   
  }
//+------------------------------------------------------------------+
