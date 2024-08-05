//+------------------------------------------------------------------+
//|                                            Exe24_ArraysFuncs.mq5 |
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
   int MyArray [] = {1,2,3};
   funcao(MyArray);
   Print(MyArray[0]);
   
   
  }
//+------------------------------------------------------------------+
void funcao (int &x[]){
   x[0]++;
}
