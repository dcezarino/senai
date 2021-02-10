Algoritmo "calculadoraPrecosDois"
// Disciplina   : [Logica de Programação]
// Professor   : Cristiano Toniolo
// Descrição   : Calculadora de precos
// Autor(a)    : Diego Elias Cezarino
// Data atual  : 26/01/2021

Var
valor1: real
valor2: real
resultado: real
opcaoEscolhida: caracter
nomeOperacao: caracter

Inicio
escreva("[A]-Adicao")
escreva(" ")
escreva("[S]-Subtracao")
escreva(" ")
escreva("[M]-Multiplicacao")
escreva(" ")
escreva("[D]-Divisao")
escreva(" ")
escreva("[E]-Sair")
escreva(" ")
escreva("Digite a operacao que deseja efetuar: ")
leia(opcaoEscolhida)

se (opcaoEscolhida = "E")entao
    escreva("Opcao Escolhida ", opcaoEscolhida, " Sair ", " Sistema sendo encerrado...")
    Fimalgoritmo
 senao
     se (opcaoEscolhida = "A") ou (opcaoEscolhida = "S") ou (opcaoEscolhida = "M") ou (opcaoEscolhida = "D") entao
        escreva("Digite o primeiro valor: ")
        leia(valor1)
        escreva("Digite o segundo valor: ")
        leia(valor2)
     senao
         escreva("Operacao matematica escolhida nao identificada, tente novamente." )
         Fimalgoritmo
     fimse
 fimse

escolha opcaoEscolhida
   caso "A"
      nomeOperacao <- "Adicao"
      resultado <- valor1 + valor2
   caso "S"
      nomeOperacao <- "Subtracao"
      resultado <- valor1 - valor2
   caso "M"
      nomeOperacao <- "Multiplicacao"
      resultado <- valor1 * valor2
   caso "D"
      nomeOperacao <- "Divisao"
      resultado <- valor1 / valor2
fimescolha

escreva(" Operacao: ", nomeOperacao, " - ", "Resultado: ", resultado)
Fimalgoritmo