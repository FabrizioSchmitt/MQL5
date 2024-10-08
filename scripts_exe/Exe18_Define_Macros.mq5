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

Esta linha diz ao computador: “Sempre que eu disser MULTIPLY, 
pegue dois números (chamados de x e y) e os multiplique. Ou seja, 
usando essa palavra mágica, criamos uma máquina de multiplicação.
“int result = MULTIPLY(3, 5);”:

Aqui usamos a palavra especial MULTIPLY. O computador vê isso e sabe que 
significa “pegue os números 3 e 5 e multiplique-os”. Então, ele substitui MULTIPLY(3, 5) por (3 * 5).
“// O resultado é 15”:

O resultado da multiplicação de 3 e 5 é 15. Assim, depois que o computador realizar 
o cálculo, o valor da variável result será 15.
Essencialmente, esse código simplifica o processo de multiplicação. Em vez de escrever 
“3 * 5” diretamente, usamos a palavra MULTIPLY para tornar o código mais legível e fácil de entender.
 Um assistente muito conveniente e útil.

3.1.1.2. Diretiva #undef

A diretiva #undef diz: “Esqueça o que eu disse antes, vamos começar de novo”.
 Na programação em MQL5, isso permite cancelar a definição ou remover um macro definido anteriormente. 
 É como apagar escritas de um quadro.

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

Primeiro, definimos um macro chamado MAGIC_NUMBER e atribuímos o valor 10. Estamos dizendo: 
“Sempre que eu usar MAGIC_NUMBER, quero dizer o número 10”.
“int result = MAGIC_NUMBER + 5;”:

MAGIC_NUMBER é usado no cálculo, o resultado será 15.
“#undef  MAGIC_NUMBER”:

Com “#undef MAGIC_NUMBER” estamos dizendo: “Esqueça o que MAGIC_NUMBER significava antes”.
 Assim, apagamos a definição e MAGIC_NUMBER se torna indefinido.
Se você tentar usar MAGIC_NUMBER após a linha #undef,
 isso resultará em um erro, pois o computador não saberá mais o que MAGIC_NUMBER significa.
  Isso pode ser útil se você quiser redefinir ou parar de usar um macro em uma parte específica do seu código.
   Ou seja, usamos uma palavra especial por um tempo, mas não precisamos mais dela e podemos passar para 
   outra coisa.

3.1.2. Propriedades de programa (#property)

No mundo da programação, cada programa tem suas características únicas, 
como um personagem em uma história. Com a diretiva #property, podemos dar ao nosso programa funções
e qualidades especiais. Assim, dizemos ao computador que existem certas coisas que tornam o programa especial.
 Imagine que você está escrevendo um livro ou uma música e deseja 
 informar às pessoas quem a criou e quando foi criada.
  É mais ou menos isso que você faz nos programas usando #property. Adicionamos 
  uma pequena nota no início do código: "Este programa é a versão 1.0, e eu o escrevi em 2022."

Exemplo:

#property copyright "crownsoyin"
#property version   "1.00"

3.1.4. Compilação Condicional (#ifdef, #ifndef, #else, #endif)

As diretivas de compilação condicional permitem incluir ou excluir partes do código durante o processo de 
compilação. Essas são instruções especiais que indicam ao compilador o que incluir, dependendo de certas 
condições.

3.1.4.1. Diretiva #ifdef

No MQL5, #ifdef é uma diretiva de pré-processador que verifica se um símbolo específico está definido.
 Se o símbolo estiver definido, o bloco de código após #ifdef é incluído durante a compilação. Caso contrário, 
 o bloco de código após #else ou #endif é incluído.

Exemplo:

#define MAGIC_NUMBER 10
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnStart()
  {

#ifdef MAGIC_NUMBER
   Print(MAGIC_NUMBER);
#else
   Print(MAGIC_NUMBER);
#endif


  }
Explicação:

Neste exemplo, MAGIC_NUMBER é definido usando a diretiva #define.
A diretiva “#ifdef MAGIC_NUMBER” verifica se MAGIC_NUMBER está definido.
Como ele está definido, o bloco de código após #ifdef é incluído, resultando na compilação da primeira 
instrução Print.
Se MAGIC_NUMBER não estivesse definido, o bloco de código após #else seria incluído, e a segunda instrução 
Print seria compilada.
#ifdef é usado para compilação condicional, permitindo aos desenvolvedores incluir ou excluir seções 
específicas do código com base em símbolos predefinidos. Esta é uma ferramenta valiosa para criar código
 personalizável, permitindo que os desenvolvedores adaptem suas aplicações com base em símbolos ou 
 condições específicas durante o processo de compilação.
3.1.4.2. Diretiva #ifndef

No MQL5, #ifndef é uma diretiva de pré-processador que verifica se um símbolo específico não está definido.
 Se o macro não estiver definido, o bloco de código após #ifndef é incluído durante a compilação.
  Caso contrário, o bloco de código após #else ou #endif é incluído.

Exemplo:

void OnStart()
  {

#ifndef MAGIC_NUMBER
   Print(MAGIC_NUMBER);
#else
   Print(MAGIC_NUMBER);
#endif


  }
Explicação:

#ifndef MAGIC_NUMBER verifica se "MAGIC_NUMBER" não está definido.
Se o macro MAGIC_NUMBER não estiver definido, o bloco de código após #ifndef é incluído, e uma mensagem 
é exibida indicando que o macro MAGIC_NUMBER não está definido.
Se MAGIC_NUMBER estiver definido, o bloco de código após #else é incluído, e ele exibe o valor de MAGIC_NUMBER.

Este código demonstra o uso de compilação condicional com base na definição ou não de um macro específico
 (neste caso, MAGIC_NUMBER). Dependendo da presença ou ausência do macro durante a compilação,
  diferentes blocos de código são incluídos.

Nota. MAGIC_NUMBER não foi definido neste exemplo.

3.1.4.3. Diretiva #endif

A diretiva #endif no MQL5 marca o fim de um bloco de código condicional iniciado pelas diretivas #ifdef ou #ifndef. Ela serve como um sinal para o pré-processador de que a seção de compilação condicional está concluída e que o código subsequente deve ser processado para compilação. Ela não tem condições ou parâmetros; seu propósito é simplesmente indicar o final do bloco de compilação condicional.

Exemplo:

#define MAGIC_NUMBER 10
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnStart()
  {

#ifndef MAGIC_NUMBER
   Print(MAGIC_NUMBER);
#else
   Print(MAGIC_NUMBER);
#endif

  }
Explicação:

#endif marca o fim do bloco condicional, e o código subsequente é processado normalmente.
Nota. Sempre combine #endif com a diretiva condicional de abertura (#ifdef ou #ifndef) para 
manter a sintaxe correta e evitar erros de compilação.
Em um breve resumo dos pré-processadores MQL5, abordamos macros para criação de constantes, 
propriedades de programa (#properties) para definir características, 
inclusão de arquivos para modularidade e compilação condicional para flexibilidade de código. 
Isso é apenas uma introdução, e há muito mais por vir. No entanto, essas ferramentas formam 
a base da programação eficaz em MQL5, garantindo versatilidade e adaptabilidade. 
E tudo isso é muito importante em nosso caminho para criar algoritmos de negociação poderosos.
 Mais uma vez, se algo não estiver claro, não hesite em fazer perguntas nos comentários.





*/
   

//+------------------------------------------------------------------+
  }