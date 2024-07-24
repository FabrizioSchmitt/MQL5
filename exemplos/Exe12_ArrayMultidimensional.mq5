//+------------------------------------------------------------------+
//|                                  Exe12_ArrayMultidimensional.mq5 |
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
  printf("Inicio");
//---
Print("Primeiro teste simples com matriz multidimensional");

int Matriz [2][2][2];
Print(Array(Matriz));
 /*  
 for (int i=0;i< ArraySize(Matriz)/2;i++){
   for (int j=0;j< ArraySize(Matriz)/2;j++){
      for (int t=0;t< ArraySize(Matriz)/2;t++){
         Print("Valor do array ", Matriz[i][j][t]);
      }
      
   }
   
 }
 */
Print("Segundo teste complexidade 1 - (ArrayFill)");

  }
//+------------------------------------------------------------------+
