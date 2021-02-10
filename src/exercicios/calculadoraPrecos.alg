Algoritmo "calculadoraPrecos"
// Disciplina   : [Logica de Programacao]
// Professor   : Cristiano Toniolo
// Descricao   : Calculadora de precos
// Autor(a)    : Diego Elias Cezarino
// Data atual  : 26/01/2021

Var
preco1: real
preco2: real
resultado: real
opcaoEscolhida: inteiro
nomeOperacao: caracter

Inicio
escreva("[1]-Adicao")
escreva(" ")
escreva("[2]-Subtracao")
escreva(" ")
escreva("[3]-Multiplicacao")
escreva(" ")
escreva("[4]-Divisao")
escreva(" ")
escreva("[0]-Sair")
escreva(" ")
escreva("Digite a operacao que deseja efetuar: ")
leia(opcaoEscolhida)

se (opcaoEscolhida = 0) entao
    escreva("Opcao Escolhida ", opcaoEscolhida, " Sair ", " Sistema sendo encerrado...")
    Fimalgoritmo
senao
    se (opcaoEscolhida < 0 ) ou (opcaoEscolhida > 4) entao
        escreva("Operacao matematica escolhida nao identificada, tente novamente." )
        Fimalgoritmo
    fimse
fimse    
    
escreva("Digite o primeiro valor: ")
leia(preco1)
escreva("Digite o segundo valor: ")
leia(preco2)

se(opcaoEscolhida = 1) entao
   nomeOperacao <- "Adicao"
   resultado <- preco1 + preco2
  senao
     se (opcaoEscolhida = 2) entao
         nomeOperacao <- "Subtracao"
         resultado <- preco1 - preco2
     senao
        se (opcaoEscolhida = 3) entao
            nomeOperacao <- "Multiplicacao"
            resultado <- preco1 * preco2
        senao
           se (opcaoEscolhida = 4) entao
               nomeOperacao <- "Divisao"
   	       resultado <- preco1 / preco2
        fimse
     fimse
  fimse
fimse

escreva("Operacao: ", nomeOperacao, " - ", "Resultado: ", resultado)
Fimalgoritmo