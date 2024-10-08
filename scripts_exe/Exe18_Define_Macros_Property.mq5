//+------------------------------------------------------------------+
//|                                          Exe18_Define_Macros.mq5 |
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
/*
3.1.1.1.  Macros parametrizados

Voltando à analogia da receita. Suponha que você precise, às vezes, alterar um 
ingrediente chave. Macros parametrizados permitem criar instruções flexíveis.

Exemplo:

#define MULTIPLY(x, y) (x * y)

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnStart()
  {

   int result = MULTIPLY(3, 5); // Result is 15

  }
Aqui, o macro MULTIPLY pega dois ingredientes (números) e os multiplica. É como uma função no seu código.

Explicação:

“#define MULTIPLY(x, y) (x * y)”:

Esta linha diz ao computador: “Sempre que eu disser MULTIPLY, pegue dois números (chamados de x e y) e os multiplique. Ou seja, usando essa palavra mágica, criamos uma máquina de multiplicação.
“int result = MULTIPLY(3, 5);”:

Aqui usamos a palavra especial MULTIPLY. O computador vê isso e sabe que significa “pegue os números 3 e 5 e multiplique-os”. Então, ele substitui MULTIPLY(3, 5) por (3 * 5).
“// O resultado é 15”:

O resultado da multiplicação de 3 e 5 é 15. Assim, depois que o computador realizar o cálculo, o valor da variável result será 15.
Essencialmente, esse código simplifica o processo de multiplicação. Em vez de escrever “3 * 5” diretamente, usamos a palavra MULTIPLY para tornar o código mais legível e fácil de entender. Um assistente muito conveniente e útil.

3.1.1.2. Diretiva #undef

A diretiva #undef diz: “Esqueça o que eu disse antes, vamos começar de novo”. Na programação em MQL5, isso permite cancelar a definição ou remover um macro definido anteriormente. É como apagar escritas de um quadro.

Exemplo:

#define MAGIC_NUMBER 10

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnStart()
  {

   int result = MAGIC_NUMBER + 5;
#undef MAGIC_NUMBER // Undefining MAGIC_NUMBER


  }
Explicação:

“#define MAGIC_NUMBER 10”:

Primeiro, definimos um macro chamado MAGIC_NUMBER e atribuímos o valor 10. Estamos dizendo: “Sempre que eu usar MAGIC_NUMBER, quero dizer o número 10”.
“int result = MAGIC_NUMBER + 5;”:

MAGIC_NUMBER é usado no cálculo, o resultado será 15.
“#undef  MAGIC_NUMBER”:

Com “#undef MAGIC_NUMBER” estamos dizendo: “Esqueça o que MAGIC_NUMBER significava antes”. Assim, apagamos a definição e MAGIC_NUMBER se torna indefinido.
Se você tentar usar MAGIC_NUMBER após a linha #undef, isso resultará em um erro, pois o computador não saberá mais o que MAGIC_NUMBER significa. Isso pode ser útil se você quiser redefinir ou parar de usar um macro em uma parte específica do seu código. Ou seja, usamos uma palavra especial por um tempo, mas não precisamos mais dela e podemos passar para outra coisa.
*/
   

//+------------------------------------------------------------------+
  }