//+------------------------------------------------------------------+
//|                                                 Exe19_Macros.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"
#define _MULTIPLICA(x , y) (x * y)
#define _FUNCAOMACRO1(x ,y ,z) ((x+y+z) * 30+ (35*10))
#define PRINTANDO Print(string,x)
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
  int a = _MULTIPLICA( 2 , 3);
  Print("Função macro multiplica ",a);
   
  int b = _FUNCAOMACRO1(3,3,3);
  Print("Função Macro1: ", b);
  
  string nome = "Alberto";
  
  #undef _FUNCAOMACRO1
  //_FUNCAOMACRO1 travada pela diretiva undef na linha 26. 
  int b = _FUNCAOMACRO1 (10,20,30);
  
  
//+-----------------------------
  }
 
