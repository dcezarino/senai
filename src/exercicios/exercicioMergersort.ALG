Algoritmo "exercicioFilaMergesort"

Var
   fila: vetor[1..30] de inteiro
   topo, totalElementos, senha, i, j, aux, retornoBuscarSenha, retornoRemover, resultado: inteiro

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
   escreval("Digite a op��o: ")
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
      mergeSort(1, totalElementos)
      para i de 1 at� totalElementos fa�a
         se (fila[i] <> 0) entao
            escreval("Fila [", i, " ]:", fila[i])
         fimse
      fimpara

      principal()

   caso 5
      retornoFilaVazia := verificarFilaVazia()
      escreval("A fila est� vazia? ", retornoFilaVazia)
      principal()

   caso 6
      escreval("Digite a senha: ")
      leia (senha)
      retornoBuscarSenha := buscarSenha(senha)

      se (retornoBuscarSenha = senha) entao
         escreval(" A senha ", retornoBuscarSenha, " foi encontrada")
         principal()
      senao
         escreval(" A senha n�o foi encontrada")
         principal()
      fimse

   caso 0
      finalizarSistema()
      fimalgoritmo

outrocaso
   escreval("Op��o indispon�vel!")
   principal()

fimescolha

fimprocedimento

// Procedimento inserir()
procedimento inserir()
Inicio

   se (topo = totalElementos) entao
      escreval("Cadastro para senhas est� lotado")
      interrompa
   senao
      aleatorio 1, 1024
      para i de 1 at� totalElementos faca
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
      escreval("N�o existe elemento para ser removido da fila")
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
      escreval ("A fila est� vazia")
   senao
      para i de 1 ate totalElementos faca
         fila[i] := 0
      fimpara
      escreval("Todos os elementos da fila foram removidos.")
      topo := 0
   fimse

fimprocedimento

// Procedimento ordenarListar()
procedimento mergeSort(ini, fim: inteiro)
Var
   meio: inteiro
Inicio

   se (topo = 0) entao
      escreval("Sem dados para exibir")
   senao
      se (ini < fim) entao
         meio := (ini + fim) DIV 2
         mergeSort (ini, meio)
         mergeSort (meio + 1, fim  )
         merge (ini, meio, fim)
      fimse
   fimse

fimprocedimento

procedimento merge(ini, meio, fim: inteiro)
Var
   h,i,j,k: inteiro
   bfila: vetor [1..30] de inteiro
Inicio

   h:= ini
   i:=ini
   j:=meio + 1

   enquanto (h <= meio) e (j<=fim) faca
      se fila[h] <= fila[j] entao
         bfila[i] := fila[h]
         h := h + 1
      senao
         bfila[i] := fila[j]
         j := j + 1
      fimse
      i := i + 1
   fimenquanto

   se h > meio entao
      para k de j at� fim fa�a
         bfila[i] := fila[k]
         i := i + 1
      fimpara
   senao
      para k de h at� meio fa�a
         bfila[i] := fila[k]
         i := i + 1
      fimpara
   fimse

   para k de ini at� fim fa�a
      fila[k] := bfila[k]
   fimpara

fimprocedimento

// Fun��o buscarSenha()
funcao buscarSenha(senha: inteiro):inteiro
Inicio

   retornoBuscarSenha <- 0
   para i de 1 at� totalElementos faca
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

   // Vari�vel que controla o total de senhas que ser�o adicionadas
   // Lembrando que o vetor tamb�m precisa ser atualizado
   totalElementos := 30
   principal()
   
Fimalgoritmo