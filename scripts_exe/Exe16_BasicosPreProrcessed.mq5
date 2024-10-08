//+------------------------------------------------------------------+
//|                                             Exe16_AlertTeste.mq5 |
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
//_Symbol - Reconhece automaticamente os símbolos de negociação da tabela trading. 
   Alert(_Symbol);
   
//_Period - Especifica automaticamente qual o frametime que o script se encontra no momento em que é chamado. 
   
   Print(_Period);

//_Digits fornece o número de casas decimais do instrumento de negociação atual. Um pip representa a menor movimentação
//de moedas do instrumento de negociação atual. 
 
   int casasDecimais = _Digits;
   Print("Quantidade de casas decimais: ", casasDecimais, " (cada movimentação é um pip)");
   
//_Point (ponto) representa a menor movimentação de preços de negociação da ferramenta atual.
//As mudanças de preço são mensuradas através do Ponto. 

   double menorMovimentacao = _Point*15;
   Print(menorMovimentacao);
   
   
   
   
   
  }


   
  

