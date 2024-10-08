//+------------------------------------------------------------------+
//|                                                  Exe27_Rates.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"

/* DOcumentação para consultar 
  (mqlrates)  - https://www.mql5.com/pt/docs/constants/structures/mqlrates  
  (copyrates) - https://www.mql5.com/pt/docs/series/copyrates
  (_SYMBOL)   - https://www.mql5.com/pt/docs/predefined/_symbol
  (_period)   - https://www.mql5.com/pt/docs/predefined/_period

*/ 

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//  _________________________________    
      MqlRates rates[];
      
      int copied = CopyRates(_Symbol,_Period,0,5,rates);
      Print(rates[0].time);
      Print(rates[0].open);
      Print(rates[0].tick_volume);
      Print(rates[0].high);
      Print(rates[0].low);
      Print(rates[0].real_volume);
      Print(rates[0].tick_volume);
      Print(rates[0].spread);
  // __________________________________
  
      MqlRates rates2[];
      
      int copied2 = CopyRates(_Symbol,_Period,0,5,rates2);
      
      if(copied2 <=0){
      Print("Erro gerado",GetLastError());
      }
      else{
         Print("Bars",ArraySize(rates2));
      }
      
      int size = ArraySize(rates2);
      for(int i=0;i<size;i++){
         Print("Chamada de abertura: ",rates2[i].open,"Horário da abertura", rates2[i].time,"Posição:",i);
      
      }
      
      Print("ArraysetAsSeries");
      ArraySetAsSeries(rates2,true);
      for(int i =0; i < size; i++){
         Print("Chamada de abertura: ",rates2[i].open," Horário de abertura: ",rates2[i].time,"Posição: ",i);
      }
   
   
   
   
  }
//+------------------------------------------------------------------+
