//+------------------------------------------------------------------+
//|                                             scriptcompleto_1.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property script_show_inputs //janela de parâmetros

input int INP_VEZES = 10;
input int INP_TEMPO = 3;
string nome = "João";

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   
   contagem();
   fimPrograma();
   
  }
//+------------------------------------------------------------------+
void contagem (){
   for(int i=0; i < INP_VEZES; i++) {
         Print("Nome ", nome,"Loop ", INP_VEZES, "Hora atual", TimeCurrent());
         Sleep(INP_TEMPO*100);
         }
   }
 void fimPrograma(){
   printf("Fim da execução");
 }
