//+------------------------------------------------------------------+
//|                                                  Exe21_ifdef.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"


#define MARCA_01 10;
#define Marca_02 20;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
/*
 #ifdef é uma diretiva que significa: "if define". Essa diretiva confeder de determinada macro está definida
 no escopo do documento e executa um determinado código logo após. Caso a instrução não esteja definida, 
 então a diretiva seguira para a diretiva subsequente: "#else" executando o segundo bloco de código.
 Após essa checagem, a execução do código seguirá para #endif, encerrando assim a instrução/diretiva #ifdef 

*/
#ifdef MARCA_01
Print("Definida");
#else 
Print("Não definido");
#endif   

/*
A diretiva #ifndef funciona exatamente da mesma forma que a diretiva #ifdef com a única exeção que
ao executar o bloco de código da sua diretiva ele recebe como "true" a ausência de uma determinada
macro/cosntante 
*/
#ifndef Marca_02
Print("Não definida");
#else
Print("Definida");
#endif 

  }
//+------------------------------------------------------------------+
