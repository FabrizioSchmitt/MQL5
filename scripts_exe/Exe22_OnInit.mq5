//+------------------------------------------------------------------+
//|                                                 Exe22_OnInit.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
#define MATH_1 1;
#define MATH_2 2;
#define MATA_H 3;
input double var;
input double var2;
 

double stopIt;
double buy;
double getTick;



int OnInit(){


   Print("Olá, sou o protótipo Expert Advisor número #1");
   stopIt = 0.1;
   buy = 0.2;
   getTick = 0.001;  
   return(INIT_SUCCEEDED);
}

void OnStart(){

   Print("Inicio do OnStart()");
   multplyDouble(10.3,15.5);
  

}

double multplyDouble(double arg, double arg2){

   return arg * arg2;
}

double mutplyDouble2( double arg, double arg2){

   return arg * arg2;
}
  

  

