Algoritmo "exercicioFila"

Var
   fila: vetor[1..25] de inteiro
   topo, totalElementos, i: inteiro

procedimento principal()
Var
   opcao: inteiro
   retornoFilaVazia: logico
Inicio

   escreval("=========================")
   escreval("[1]-Adicionar")
   escreval("[2]-Remover")
   escreval("[3]-Limpar")
   escreval("[4]-Listar")
   escreval("[5]-Verificar Fila Vazia")
   escreval("[0]-Sair")
   escreval("=========================")
   escreval("Digite a opção: ")
   leia(opcao)
   limpatela
   escolha(opcao)

   caso 1
      adicionar()
      principal()

   caso 2
      remover()
      principal()

   caso 3
      limpar()
      principal()

   caso 4
      listar()
      principal()

   caso 5
      retornoFilaVazia := verificarFilaVazia()
      escreval("A fila está vazia? ", retornoFilaVazia)
      principal()

   caso 0
      finalizarSistema()
fimalgoritmo

outrocaso
   escreval("Opção indisponível!")
   principal()

fimescolha

fimprocedimento

// Procedimento adicionar()
procedimento adicionar()
Inicio

   se (topo = totalElementos) entao
      escreval("Cadastro para elementos está lotado")
      interrompa
   senao
      para i de 1 até totalElementos faca
         escreval("Digite o elemento", i,":")
         leia (fila[i])
      fimpara
      topo := topo + 1
   fimse

fimprocedimento

// Procedimento remover()
procedimento remover()
Var
   elemento: inteiro
Inicio

   se(topo > totalElementos) ou (topo = 0) entao
      escreval("Não existe elemento para ser removido da fila")
   senao
      elemento := fila[topo]
      escreval("O elemento", fila[topo], " foi removido")
      fila[topo] := 0
      topo := topo + 1
   fimse

fimprocedimento

// Procedimento limpar()
procedimento limpar()
Inicio

   se (topo = 0) entao
      escreval ("A fila está vazia")
   senao

      para i de 1 ate totalElementos faca
         fila[i] := 0
      fimpara
      escreval("Todos os elementos da fila foram removidos.")

      topo := 0
   fimse

fimprocedimento

// Procedimento listar()
procedimento listar()
Inicio

   se (topo = 0) entao
      escreval("Sem dados para exibir")
   senao

      para i de 1 até totalElementos faca
         se(fila[i] <> 0)entao
            escreval ("Fila [",i," ]: ", fila[i])
         fimse
      fimpara

   fimse

fimprocedimento

// Procedimento verificarFilaVazia()
funcao verificarFilaVazia (): logico
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

   // Variável que controla o total de senhas que serão adicionadas
   // Lembrando que o vetor também precisa ser atualizado
   totalElementos := 25
   principal()
Fimalgoritmo