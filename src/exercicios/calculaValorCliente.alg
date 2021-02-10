Algoritmo "calculaValorCliente"
// Disciplina   : [Lógica de Programação]
// Professor   : Cristiano Toniolo
// Descrição   : Calcula o valor aprovado para compras de acordo com o salário do cliente
// Autor(a)    : Diego Elias Cezarino
// Data atual  : 20/01/2021
Var
   salario: real
   vAprovado: real

Inicio
   escreva ("Digite o salário para cálculo: ")
   leia(salario)

   se(salario >= 1000) e (salario <= 2999.99) entao
      vAprovado <- (salario * 30) /100)
   senao
      se (salario >= 3000) e (salario <= 4999.99) entao
         vAprovado <- (salario * 35) /100)
      fimse
   fimse

   escreva("O valor aprovado para compras do cliente é: ", vAprovado:5:2)

Fimalgoritmo