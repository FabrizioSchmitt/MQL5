//+------------------------------------------------------------------+
//|                               Exe23_LogicaDeMediaLonga_Curta.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"

int mediaLonga;
int mediaCurta;
double varRandDouble;
bool stop =false;

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
  Print("Começo do programa");
  int var1 = rand();
  
   if (!stop){
   
   Print("Ele é ",stop);
   }
   else{
      Print("Ele não é ",stop);
      
   }
    Print("Fim do programa");
  
  
   }
   
  
//+------------------------------------------------------------------+
