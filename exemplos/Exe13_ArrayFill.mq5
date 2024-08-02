//+--

//----------------------------------------------------------------+
//|                                              Exe13_ArrayFill.mq5 |
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
int Array [5];
Print("Teste Fill Inicio");

ArrayFill(Array,0,5,111);

Print("Teste fill bidimensional: ArrayFill(Array,0,5,111) ");
for (int i=0;i < ArraySize(Array);i++){
   Print(Array[i]);
}

Print("Teste Fill multidimensional");
Print("");
Print("Array2 Loop para primeira dimensão:");
Print("");
//
int matriz1 [5][5];
ArrayFill(matriz1,0,5,666);
ArrayFill(matriz1,5,5,667);
ArrayFill(matriz1,10,5,668);
ArrayFill(matriz1,15,5,669);
ArrayFill(matriz1,20,5,670);
//
Print("Modelo de ArrayFill usado: ArrayFill(Array2,0,3,666)");
//
int size = (ArraySize(matriz1)/5)-1;
Print("Valor de size",size);
for( int h=0;h <= size;h++ ){
   for (int v=0;v <= size;v++){
   Print("Array2 index primeira dimensão ", h ," Index Segunda dimensão: ", v ,"Valor do index ", matriz1[h][v]);
   
   }
}


Print("Teste ArrayFill fim");
   
  }
  
  
//+------------------------------------------------------------------+
