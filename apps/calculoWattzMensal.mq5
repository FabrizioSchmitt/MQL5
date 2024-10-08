//+------------------------------------------------------------------+
//|                                           calculoWattzMensal.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property script_show_inputs;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

input double INP_QNTWATT_HORA;
input double INP_HORAS_CONSUMO_DIA;
input int WATT_INP_QNT_DIAS_MES;
input double INP_VALOR_KWH;
void OnStart()
  {
//---
   double WattPDia = WattTotalDia(INP_QNTWATT_HORA,INP_HORAS_CONSUMO_DIA);
   Print("Total de watts gastos por dia: ", WattPDia);
   double WattPMes =gastoMensalWatts(WattPDia, WATT_INP_QNT_DIAS_MES );
   Print("TOtal de watts gastos por mês: ",WattPMes);
   double KWH = quantidadeKWtotal(WattPMes);
   Print("Gasto simplificado em KWH: ",KWH);
   double ValorTotalLuz = valorMensal(KWH);
   Print("Valor total de luz a pagar= R$:",ValorTotalLuz);
   
   Print("Fim da análise.");
  }
//+------------------------------------------------------------------+
//calcula a quantidade total da quantidade de gasto de watts/dia. 
double WattTotalDia(double INP_QNTWATT_HORA,double INP_HORAS_CONSUMO_DIA){
      
      return (INP_QNTWATT_HORA * INP_HORAS_CONSUMO_DIA );
   
}
//calcula a quantidade de gasto de watts mês - watt_total_dia deve ter como entrada o médoto:WattTotoalDia()
double gastoMensalWatts (double watt_total_dia, int watt_qnt_dias_mes){
      return (watt_total_dia * watt_qnt_dias_mes);
}
//Recebe o valor total de gasto em watts e convert em kw simplificado. 
double quantidadeKWtotal(double gasto_Mensal_Watts){
      return gasto_Mensal_Watts/1000;
}
//Recebe o valor simplificado de kw e multiplica pelo valor kwh
double valorMensal(double quantidade_KW_total){
      return quantidade_KW_total * INP_VALOR_KWH;
}