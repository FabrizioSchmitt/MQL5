//+------------------------------------------------------------------+
//|                                                   testeTipos.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property script_show_inputs
input bool INP_vivo;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   
   datetime horario = D'2024-07-20 20:33:23';
   string nome= "João";
 
   Print("Nome :", nome);
   Print("Está vivo? ",checarVivo(INP_vivo));
   Print("Horário :", horario);
   Print("Fim do script");
   
  }
  
  
  
  string checarVivo (bool a){
  if (a== true){
      return "Está vivo";
  }
  else{
      return "Está morto";
   }
  }
//+------------------------------------------------------------------+
