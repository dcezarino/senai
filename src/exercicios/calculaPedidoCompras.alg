Algoritmo "calculaPedidoCompras"
// Disciplina   : [Lógica de Programação]
// Professor   : Cristiano Toniolo
// Descrição   : Calcular Pedido de Compras
// Autor(a)    : Diego Elias Cezarino
// Data atual  : 02/02/2021
Var
produto, resposta: caractere
preco, totalPedido: real
quantidade: inteiro
j: logico

Inicio

totalPedido <- 0.00
j <- verdadeiro

  enquanto j = verdadeiro faca
       escreva("Produto: ")
       leia(produto)
       
       escreva("Preço Unitário: ")
       leia(preco)
       
       escreva("Quantidade: ")
       leia(quantidade)
       
       totalPedido <- totalPedido + preco * quantidade
       
       escreva("Continua? S/N")
       leia(resposta)
       
       se(resposta = "S") ou (resposta = "s") entao
         j <- verdadeiro
       senao
         j <- falso
       fimSe
       
       escreval("------------------------")

  fimEnquanto

  escreva("Total do pedido: ", totalPedido)
  
Fimalgoritmo