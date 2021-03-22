Algoritmo "exercicioPilha"

Var
   pilha: vetor[0..19] de caractere
   topo, totalElementos: inteiro
   nome, retornoDesempilhar: caractere

procedimento principal()
Var
   opcao: inteiro
   continua, retornoPilhaVazia: logico
   continuar: caractere
Inicio


   // Variável que controla o total de elementos a serem cadastrados
   // Lembrando que o vetor criado tem também um total de 20 posições [0..19]
   totalElementos := 19

   continua := verdadeiro

   escreval("=========================")
   escreval("[1]-Empilhar")
   escreval("[2]-Desempilhar")
   escreval("[3]-Limpar")
   escreval("[4]-Listar")
   escreval("[5]-Verificar Pilha Vazia")
   escreval("[0]-Sair")
   escreval("=========================")
   escreval("Digite a opção: ")
   leia(opcao)
   limpatela
   escolha(opcao)

   caso 1
      enquanto continua = verdadeiro faca
         escreval("Digite o nome que deseja adicionar: ")
         leia (nome)
         empilhar(nome)
         escreval("Deseja adicionar novamente [S/N]: ")
         leia (continuar)
         se (continuar = "N") ou (continuar = "n") entao
            continua := falso
         senao
            continua := verdadeiro
         fimse
      fimenquanto

      principal()

   caso 2

      se (topo = 0) entao
         escreval ("A pilha está vazia, não existe elemento para ser desempilhado")
         principal()
      senao
         retornoDesempilhar := desempilhar()
         escreval("O elemento ", retornoDesempilhar, " foi removido da pilha")
         principal()
      fimse

   caso 3
      se (topo = 0) entao
         escreval ("A pilha está vazia")
         principal()
      senao
         limpar()
         principal()
      fimse

   caso 4
      listar()
      principal()

   caso 5
      retornoPilhaVazia := verificarPilhaVazia()
      escreval("A pilha está vazia? ", retornoPilhaVazia)
      principal()

   caso 0
      finalizarSistema()
      fimalgoritmo

   outrocaso
   escreval("Opção indisponível!")

fimescolha

fimprocedimento


// Procedimento empilhar()
procedimento empilhar(nome: caractere)
Inicio

   se (topo = totalElementos)entao
      escreval("A pilha está cheia, não é possível adicionar mais elementos")
      principal()
   senao
      pilha[topo] := nome
      topo := topo + 1
   fimse

fimprocedimento

// Função desempilhar()
funcao desempilhar(): caractere
Var
   elemento: caractere
Inicio

   elemento := pilha[topo - 1]
   pilha[topo - 1] := ""
   topo := topo -1

   retorne elemento

fimfuncao

// Procedimento limpar()
procedimento limpar()
Var
   linha: inteiro
Inicio
   para linha de 0 ate totalElementos faca
      pilha[linha] := ""
   fimpara

   topo := 0

   escreval("Todos os elements da pilha foram removidos.")

fimprocedimento

// Procedimento listar()
procedimento listar()
Var
   linha: inteiro
Inicio
   escreval("===EXIBINDO DADOS DA PILHA===")
   para linha de 0 ate totalElementos faca
      se (pilha[linha] <> "") entao
         escreval ("Pilha [",linha," ]: ", pilha[linha])
      senao
         pilha[linha] := "Vazia"
         escreval ("Pilha [",linha," ]: ", pilha[linha])
      fimse
   fimpara

fimprocedimento

// Procedimento verificarPilhaVazia()
// Vazia (retorna verdadeiro se a pilha estiver vazia, e falso caso contrário).
funcao verificarPilhaVazia (): logico
var
   resposta :  logico
inicio

   se topo = 0 entao
      resposta := verdadeiro
   senao
      resposta := falso
   fimse

   retorne resposta

fimfuncao

// Procedimento finalizarSistema()
procedimento finalizarSistema()
Inicio
   escreval("Sistema sendo Finalizado...")
   interrompa
fimprocedimento

Inicio
   principal()
Fimalgoritmo