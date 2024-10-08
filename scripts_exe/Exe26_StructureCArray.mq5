//+------------------------------------------------------------------+
//|                                        Exe26_StructureCArray.mq5 |
//|                                                         Fabrizio |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Fabrizio"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property script_show_inputs;

#define LEGTH 3

input int Nfaces;
input int NArestas;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

   struct FormaGeometrica {
   int face; 
   int aresta;
   int vertice;
   
  };
void OnStart()
  {
  
  struct Pessoa 
  {
   string nome;
   int idade;
  } ;
  
  
  Pessoa pessoa1, pessoa2,pessoa3;
  pessoa1.nome="Albenar";
  pessoa1.idade=24;
  pessoa2.nome="David";
  pessoa2.idade=30;
  pessoa3.nome="Camile";
  pessoa3.idade=29;
  
  //Ao passar structs para arrays, ou melhor, para inicializar arrays com structs, devemos sempre
  //passar quaisquer estruturas internas de uma struct (seus membros) separados por vírgulas, e 
  //cada struct separado por colchetes. 
  Pessoa pessoaArray[LEGTH] = {
  {pessoa1.nome,pessoa1.idade},
  {pessoa2.nome,pessoa2.idade},
  {pessoa3.nome,pessoa3.idade}
  }; 
  int size= ArraySize(pessoaArray);
  for(int i = 0;i <size;i++){
      Print(pessoaArray[i].nome);
      Print(pessoaArray[i].idade);
  }
  
   //cria instância de forma geométrica
   FormaGeometrica forma1;
   //Atribui valores para forma geométrica através do método InitFormaGeometrica
   InitFormaGeometrica(forma1,Nfaces,NArestas);
   Print("faces:",forma1.face);
   Print("aresta:",forma1.aresta);
   Print("Vertice:",forma1.vertice);
   //Printa horário de execução do código
   Print("Inicio contagem array 'formato'",__DATETIME__);
   //Instância array com posição X e recebe como valor no índice 0 a Struct forma1. 
   FormaGeometrica formato[3] = {{forma1.face,forma1.aresta,forma1.vertice},{},{}};
   
   int size2=ArraySize(formato);
   for(int i = 0; i < size2 ;i++){
      Print(formato[i].face);
      Print(formato[i].aresta);
      Print(formato[i].vertice);
   }
  Print("Fim array formato");
  }
  
  
  
  void InitFormaGeometrica (FormaGeometrica &forma,int Nfaces,int NArestas){
      //formula de Euler aplicada: (V - A + F = 2). Ou, nesse caso: V= A-F+2 
     forma.face=Nfaces;
     forma.aresta = NArestas;
     forma.vertice = (forma.aresta-forma.face)+2;
         
  }
  
  
 
  
//+------------------------------------------------------------------+
