//+------------------------------------------------------------------+
//|                                         Exe17_FuncoesBasicas.mq5 |
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
//A função Alert serve para chamar a atenção para alguma coisa importe. 
   
   Alert("ATENÇÂO!!!!!");

// A função comentário pode imprimir alguma mensagem diretamente nos gráficos, assim podemos usar qualquer 
//Símbolo, ou referência para anotações e dicas diretas.
   
   Comment("Esse é um comentário de função");
   
// Playsound, como o nome diz tem a capacidade de emitir um determinado som. Se o som estiver no repositório do terminal
//o programa será capaz de executa-lo apenas usando seu nome.extenção. 
   PlaySound("alert.wav");
   
   
   
   
   
   
  }
//+------------------------------------------------------------------+
