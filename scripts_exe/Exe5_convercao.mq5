//+------------------------------------------------------------------+
//|                                              exe-5-convercao.mq5 |
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
/*As conversões nesses casos são implícitas, ou seja, não precisam da intervenção de métodos explícitos da linguagem para ser realizados. */
   int valorInt = 2/3;
   int valorInt_2 = 2/3.0;
   double valorDouble_1 = 2/3;
   double valorDouble_2= 2.0/3.0;
   double valorDouble_3= 2/3.0;
   Print("Valorint- 2/3 = ", valorInt,"\nValorInt_2- 2/3.0= ",valorInt_2,"\nValorDouble_1- 2/3= ",valorDouble_1
   ,"\nValorDouble_2- 2.0/3.0= ",valorDouble_2,"\nValorDobule3- 2/3.0= ",valorDouble_3);
   
   
  }
//+------------------------------------------------------------------+
