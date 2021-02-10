Algoritmo "calculoJuros"
// Disciplina   : [Lógica de Programação]
// Professor   : Cristiano Toniolo
// Descrição   : Calcula o valor a pagar com juros
// Autor(a)    : Diego Elias Cezarino
// Data atual  : 08/02/2021
Var
   valor, taxa, vPagar: real
   periodo, j: inteiro

Inicio
   escreva("Digite o valor principal: ")
   leia(valor)
   escreva("Digite a taxa de juros: ")
   leia(taxa)
   escreva("Digite o período: ")
   leia(periodo)

   vPagar <- valor

   para j de 1 até periodo faca
      vPagar <- vPagar +(vPagar * taxa)
      escreval("Período ", j, " - ", vPagar:2:2)
   fimpara

   escreval("Valor principal: ", valor:2:2)
   escreval("Taxa de juros: ", taxa:2:2)
   escreval("Valor a pagar com juros é: ", vPagar:2:2)

Fimalgoritmo