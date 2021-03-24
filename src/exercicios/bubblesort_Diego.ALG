Algoritmo "exercicioFilaBubblesort"

Var
   fila: vetor[1..10] de inteiro
   topo, totalElementos, senha, i, j, aux, retornoBuscarSenha, retornoRemover: inteiro

procedimento principal()
Var
   opcao: inteiro
   retornoFilaVazia: logico
Inicio

   escreval("=========================")
   escreval("[1]-Inserir")
   escreval("[2]-Remover")
   escreval("[3]-Limpar")
   escreval("[4]-Ordenar e Listar")
   escreval("[5]-Verificar Fila Vazia")
   escreval("[6]-Buscar")
   escreval("[0]-Sair")
   escreval("=========================")
   escreval("Digite a opção: ")
   leia(opcao)
   limpatela
   escolha(opcao)

   caso 1
      inserir()
      principal()

   caso 2
      remover()
      principal()

   caso 3
      limpar()
      principal()

   caso 4
      ordenarListar()
      principal()

   caso 5
      retornoFilaVazia := verificarFilaVazia()
      escreval("A fila está vazia? ", retornoFilaVazia)
      principal()

   caso 6
      escreval("Digite a senha: ")
      leia (senha)
      retornoBuscarSenha := buscarSenha(senha)

      se (retornoBuscarSenha = senha) entao
         escreval(" A senha ", retornoBuscarSenha, " foi encontrada")
         principal()
      senao
         escreval(" A senha não foi encontrada")
         principal()
      fimse

   caso 0
      finalizarSistema()
fimalgoritmo

outrocaso
   escreval("Opção indisponível!")
   principal()

fimescolha

fimprocedimento

// Procedimento inserir()
procedimento inserir()
Var
   menorValor, maiorValor: inteiro
Inicio

   se (topo = totalElementos) entao
      escreval("Cadastro para senhas está lotado")
      interrompa
   senao
      aleatorio 1, 1024
      para i de 1 até totalElementos faca
         leia (fila[i])
      fimpara
      aleatorio off
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

// Procedimento ordenarListar()
procedimento ordenarListar()
Inicio

   se (topo = 0) entao
      escreval("Sem dados para exibir")
   senao

      // Bubble Sort
      para i de 1 até totalElementos faca
         para j de i + 1 até totalElementos faca
            se (fila[i] > fila[j]) entao
               aux := fila[i]
               fila[i] := fila[j]
               fila[j] := aux
            fimse

         fimpara
      fimpara

      escreval("Vetor Ordernado")
      para i de 1 até totalElementos faca
         se(fila[i] <> 0)entao
            escreval ("Fila [",i," ]: ", fila[i])
         fimse
      fimpara

      escreval("Menor Valor :", fila[topo])
      escreval("Maior Valor :", fila[totalElementos])
   fimse

fimprocedimento

// Função buscarSenha()
funcao buscarSenha(senha: inteiro):inteiro
Inicio

   retornoBuscarSenha <- 0
   para i de 1 até totalElementos faca
      se (fila[i] = senha) entao
         escreval(fila[i])
         retornoBuscarSenha <- fila[i]
         retorne retornoBuscarSenha
         interrompa
      senao
         retornoBuscarSenha <- -1
         retorne retornoBuscarSenha
      fimse
   fimpara
fimfuncao

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
   totalElementos := 10
   principal()
Fimalgoritmo