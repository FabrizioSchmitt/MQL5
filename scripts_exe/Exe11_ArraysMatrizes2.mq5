//+------------------------------------------------------------------+
//|                                        Exe11_ArraysMatrizes2.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"

//Constantes declaradas
#define LENGHT 10
#define WIDTH 10
#define DISTANCE 10
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
Print("Inicio Seção-1");


//Test 1
int vetor[][2];
//Print 1 e definição de vetor.
ArrayResize(vetor,2);
Print("Print 1 - Vetor ", ArraySize(vetor));
Print("Teste de Mostragem com método ArraySize /2 = " ,ArraySize(vetor)/2);
//Array fill teste 1.
ArrayFill(vetor,0,2,1);
ArrayFill(vetor,2,2,2);
Print("Print 2 - Array FIll ", ArraySize(vetor));
Print("Inicio FOR");
/*
for (int i= 0;i > (ArraySize(vetor)/2);i++){
     for(int i2=0;i2 > (ArraySize(vetor)/2);i2++){
      Print(vetor[i][i2]);
     }
}
*/
Print("Teste com Array em laço unidimensional");
int array1 [5] = {1,2,3,4,5};
for (int i=0;i<ArraySize(array1);i++){
   Print("Array 1 ",array1[i]);
}
Print("Fim do teste unidimensional");

int Matriz [2][2] = {{1,2}, {1,2}};
Print("Testes de impressão 1: ");
ArrayResize(Matriz,4);
Print(ArraySize(Matriz[0][1]));

/*
Print("Valor do array Multidimensional: Matriz = ", ArraySize(Matriz));
Print("Inicio do teste de laço com Matriz Multidimensional (Matriz[][])");
for(int horizontal= (ArraySize(Matriz));horizontal >0;horizontal--){
for(int vertical= (ArraySize(Matriz));vertical >0;vertical--){
    Print("Valor de Matriz: ",Matriz[horizontal][vertical]);
}
*/
  
} 
Print("Fim do teste de matriz (Matriz [][]) multidimensional com laço");

//array fill
Print("Fim/Seção-1");

//Print(vetor[1][1]);


   
  }
//+------------------------------------------------------------------+
