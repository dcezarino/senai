Algoritmo "removerUsuarios"

Var
   opcao, opcaoRemover, totalUsuarios, i, j, resultado: inteiro
   usuario: vetor[0..5, 0..1] de caractere
   nomeBusca, resultadoRemover: caractere

// Procedimento principal()
procedimento principal()
Inicio

   // Vari�vel que controla o total de usu�rios a serem cadastrados
   // Lembrando que a matriz criada tem tamb�m um total de 6 posi��es [0..5]
   totalUsuarios := 5

   escreval("")
   escreval ("Menu Principal")
   escreval ("----------------------------")
   escreval("[1]-Cadastrar Usu�rio")
   escreval("[2]-Listar Usu�rios")
   escreval("[3]-Buscar Usu�rio pelo Nome")
   escreval("[5]-Remover Usu�rio")
   escreval("[4]-Sair do Sistema")
   escreval("Digite uma op��o: ")
   leia(opcao)
   limpatela

   escolha (opcao)
   caso 1
      cadastrarUsuario()
      principal()

   caso 2
      listarUsuarios()
      principal();

   caso 3
      escreval("Digite o nome para realizar a busca: ")
      leia(nomeBusca)
      resultado <- buscarUsuario(nomeBusca)
      principal()

   caso 4
      finalizarSistema()
   fimalgoritmo

   caso 5
      escreval("Digite a op��o para executar a remo��o: ")
      escreval("[1]-Remover pelo nome do usu�rio")
      escreval("[2]-Remover todos os usu�rios")
      escreval("[3]-Voltar")
      leia(opcaoRemover)

   escolha (opcaoRemover)
      caso 1
      escreval("Digite o nome do usu�rio que deseja remover: ")
      leia(nomeBusca)
      resultadoRemover <- removerUmUsuario(nomeBusca)
      escreval(resultadoRemover)
      listarUsuarios()
      principal()
   caso 2
      removerTodos()
      listarUsuarios()
      principal()
   caso 3
      principal()
   outrocaso
      escreval("Op��o incorreta!")
      principal()
   fimescolha

fimprocedimento

// Procedimento cadastrarUsuario()
procedimento cadastrarUsuario()
Inicio

   limpatela
   escreval("-------------CADASTRO USU�RIO-------------")
   escreval("Informe os dados do funcion�rio na seguinte ordem: ")
   escreval("Nome ")
   escreval("Idade ")

   para i de 0 at� totalUsuarios faca
      escreval("")
      escreval("Dados do usu�rio", " ", i+1, " :")
      para j de 0 at� 1 faca
         leia(usuario[i,j])
      fimpara
   fimpara

fimprocedimento

// Procedimento listarUsuarios()
procedimento listarUsuarios()
Inicio

   se (opcaoRemover = 3) entao
      limpatela
   fimse

   escreval("--------------LISTA USU�RIOS--------------")
   escreval ("Nome; Idade; ")

   para i de 0 at� totalUsuarios faca
      para j de 0 at� 1 faca
         escreva (usuario [i,j], "; ")
      fimpara
      escreval("")
   fimpara

fimprocedimento

// Fun��o buscarUsuario()
funcao buscarUsuario(nomeBusca: caractere):inteiro

Inicio

   resultado <- 0
   para i de 0 at� totalUsuarios faca
      se (usuario[i] = nomeBusca) entao
         escreval("Nome: ", usuario[i,0])
         escreval("Idade: ", usuario[i,1])
         resultado <- i
         retorne resultado
         interrompa
      senao
         resultado <- -1
         retorne resultado
      fimse
   fimpara

fimfuncao

// Fun��o RemoverUmUsuario()
funcao removerUmUsuario(nomeBusca: caractere): caractere
Var
   retornoRemover: logico
Inicio

   retornoRemover <- falso
   para i de 0 at� totalUsuarios faca
      se (usuario[i] = nomeBusca) entao
         usuario[i,0] <- ""
         usuario[i,1] <- ""
         retornoRemover <- verdadeiro
      fimse
   fimpara

   se (retornoRemover = verdadeiro) entao
      retorne "Usu�rio removido com sucesso"
   senao
      retorne "N�o foi poss�vel executar a remova��o, usu�rio n�o cadastrado"
   fimse

fimfuncao

// Procedimento RemoverTodos()
procedimento removerTodos()
Var
   resultadoRemoverTodos: logico
Inicio

   resultadoRemoverTodos <- falso
   para i de 0 at� totalUsuarios faca
      para j de 0 at� 1 faca
         se(usuario[i,j] <> "") entao
            usuario[i,0] <- ""
            usuario[i,1] <- ""
            resultadoRemoverTodos <- verdadeiro
         fimse
      fimpara
   fimpara

   se (resultadoRemoverTodos = verdadeiro) entao
      escreval("Todos os usu�rios foram removidos com sucesso")
   senao
      escreval("N�o existem usu�rios a ser removidos")
   fimse

fimprocedimento

// Procedimento finalizarSistema()
procedimento finalizarSistema()
Inicio

   escreval("Sistema sendo Finalizado...")
   interrompa

fimprocedimento



Inicio
   principal()
Fimalgoritmo