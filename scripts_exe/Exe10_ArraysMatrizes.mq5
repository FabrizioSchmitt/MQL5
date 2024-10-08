//+------------------------------------------------------------------+
//|                                         Exe10_ArraysMatrizes.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//Referência de documentação: https://www.mql5.com/pt/articles/567
/*Vetores, arrays ou arrays multidimensionais/matrizes são estruturas de espaço que podem conter dados de determinados tipos
dentro do seu espaço.

Em mql5 a declaração de um array ou vetor é exatamente como apontado na referência **1 */


#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
/*
int indiceCol;
int indiceLin;
int vetorNumerico1[10]; //**1
int vetorNumerico2[10];
string vetorString1[10];
*/
//Array para manipular ponteiro referência **2

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
//1ª forma de declaração de arrays unidimensionais.
   int variavel [3];

   variavel [0]=1;
   variavel [1]=2;
   variavel [2]= variavel[0]+variavel[1];

   Print(variavel[2]);

//Inserindo valores em um array
//2ª forma de declaraçao de arrays unidimensionais.
   int variavel2 [] = {1,2,3,4,5,6,7};

   for(int a=0;a<7;a++)
     {
      Print(variavel2[a]);
     }
//ArrayResize reajusta o tamanho do array em qualquer momento.
   int variavel3[];
   ArrayResize(variavel3,4);
   variavel3[0]=11;
   variavel3[1]=22;
   variavel3[2]=33;
   variavel3[3]=44;

   for(int i=variavel3.Size();i <= 0 ;i--)
     {
      Print(variavel3[i]);
     }
//Locando e desalocando espaço de memória em um array:
   int variavel4 [4] = {2,2,3,4};



   Print("Teste de deszalocação de memória");
   Print("Variável4.Size() =",variavel4.Size());
   
   //Apenas o primeiro espaço de um array pode ser dinâmico/mudado. O restante possúi valores fixos.
   int vetorH [2][9];
   int size = ArraySize(vetorH);
   
   Print("Teste Multidimensional x2");
   
   Print(size);
   
   int var5[1][2][2];
   int sizes= ArraySize(var5);
   Print("Tamanho do var5: ",sizes);
   
   Print("Arrays Multidimensionais");
   Print("Tamanho do vetorH ", ArraySize(vetorH));

   Print("Fim do programa");

//----
  }
//**2

//+------------------------------------------------------------------+
/*



   int vetorV1 [] = {10,20,30,40,50,60,70,80,90,100};
   int vetorV2 [] = {11,21,31,41,51,61,71,81,91,101};
   int vetorV3 [] = {12,22,32,42,52,62,72,82,92,102};
   int vetorV4 [] = {13,23,33,43,53,63,73,83,93,103};
   int vetorV5 [] = {14,24,34,44,54,64,74,84,94,104};
   int vetorV6 [] = {15,25,35,45,55,65,75,85,95,105};
   int vetorv7 [] = {16,26,36,46,56,66,76,86,96,106};
   int vetorv8 [] = {17,27,37,47,57,67,77,87,97,107};
   int vetorv9 [] = {18,28,38,48,58,68,78,88,98,108};
   int vetorv10 [] = {19,29,39,49,59,69,79,89,99,109};
   */