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
   int var1=20;
   int var2=12;
   double var3= (double) var1/var2;
   Print("20/12 usando cast flutuante: ",var3);
   
  }
//+------------------------------------------------------------------+
