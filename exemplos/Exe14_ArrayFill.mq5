//+------------------------------------------------------------------+
//|                                              Exe14_ArrayFill.mq5 |
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
//---`
   Print("Inicio");
   Print("Array bi");
   int ArrayBi [3][3] ;
   ArrayFill(ArrayBi,0,3,0);
   ArrayFill(ArrayBi,3,3,1);
   ArrayFill(ArrayBi,6,3,2);

/*
 Os valores para o comparativo "size" devem ser divididos por multiplos deles mesmos e após isso aplicamos 
 um reduto "-1" para conseguir encaixar o index 0 na contagem. 
*/

   int size = (ArraySize(ArrayBi)/3)-1;
   Print("Tamanho size",size);


   for(int v =0;v <=size;v++)
     {
      for(int h=0;h <=size;h++)
        {
         Print("Linha ",v," Coluna",h," valor ", ArrayBi[v][h]);
        }
     }

  }
//+------------------------------------------------------------------+
