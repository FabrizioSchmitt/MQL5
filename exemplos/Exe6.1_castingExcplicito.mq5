//+------------------------------------------------------------------+
//|                                      exe-6_castingExcplicito.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   /*Em alguns casos, como o exercício desse documento, podemos usar a função cast para "forçar"
    de maneira explícita a conversão de valores de tipos diferentes em um mesmo tipo.
   */
   int var1=20;
   int var2=12;
   double var3= (double) var1/var2;
   Print("20/12 usando cast flutuante: ",var3);
   
  }
//+------------------------------------------------------------------+
