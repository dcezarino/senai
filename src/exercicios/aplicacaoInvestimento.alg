Algoritmo "aplicacaoInvestimento"
// Disciplina   : [Lógica de Programação]
// Professor   : Cristiano Toniolo
// Descrição   : Calcular aplicação de investimento anual
// Autor(a)    : Diego Elias Cezarino
// Data atual  : 09/02/2021
Var
periodo, j: inteiro
continua: logico
valorInicial, valorDeposito, taxa: real
resposta: caractere

Inicio
periodo <- 12
continua <- verdadeiro

escreva("Digite o valor inicial: ")
leia(valorInicial)

escreva("Digite o valor do depósito: ")
leia(valorDeposito)

escreva("Digite a taca de juros: ")
leia(taxa)

enquanto continua = verdadeiro faca
        para j de 1 ate periodo faca
            valorInicial <- (valorInicial * taxa + valorDeposito) + valorInicial
            escreval(j, " ", valorInicial:2:2)
        fimpara
        escreval("Deseja simular mais um ano? S/N")
        leia(resposta)
        se(resposta = "N") ou (resposta = "n")entao
           continua <- falso
          senao
               se (resposta = "S") ou (resposta = "s") entao
                  continua <- verdadeiro
            senao
               escreva("A opção ", resposta, " escolhida é inválida!")
               continua <- falso
          fimse
        fimse
fimenquanto

Fimalgoritmo