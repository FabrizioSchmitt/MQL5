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
Print(ArraySize(Matriz));
  
 for (int i=0;i< ArraySize(Matriz)/3;i++){
   for (int j=0;j< ArraySize(Matriz)/3;j++){
      for (int t=0;t< ArraySize(Matriz)/3;t++){
         Print("Valor do array ", Matriz[i][j][t]);
      }
      
   }
 }
 
int arraySimples[2] = {1,2};

Print("Iteração de traz para frente");
 for (int i=(ArraySize(arraySimples)/2);i > 0; i--){
   Print("Arraysimples valor: ",arraySimples[i]);
 }
int valueArray1 = ArrayRange(arraySimples,0);
printf("valueArray1 =",valueArray1);
 
Print("Segundo teste complexidade 1 - (ArrayFill)");

  }
//+------------------------------------------------------------------+
