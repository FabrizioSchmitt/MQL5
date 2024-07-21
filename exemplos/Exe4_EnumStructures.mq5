//+------------------------------------------------------------------+
//|                                               EnumStructures.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"
  enum meses{janeiro, fevereiro, marco, junho};
  struct Pessoa{
   string nome;
   double salario;
   bool vivo;
   };
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
  Pessoa Joao;
  Joao.nome="Arborer";
   Print(Joao.nome);
   Print(janeiro);
   Print("Fim do programa");
  }
 
//+------------------------------------------------------------------+
   