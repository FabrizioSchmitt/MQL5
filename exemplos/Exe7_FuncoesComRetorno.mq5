//+------------------------------------------------------------------+
//|                                       Exe7_FuncoesComRetorno.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property script_show_inputs;
input double INP_VALOR_1;
input double INP_VALOR_2;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   double avarage = media(INP_VALOR_1,INP_VALOR_2);
   Print("Valor da média entre ",INP_VALOR_1," e ",INP_VALOR_2," é:  ",avarage);
   //Método média chamado diretamente sem intermédio de alguma variável para receber valor. 
   Print("Teste 2 ", media(INP_VALOR_1,INP_VALOR_2));
   
   }
   
  double media(double valor_1, double valor_2){
     return (valor_1+valor_2)/2;
//+------------------------------------------------------------------+
}