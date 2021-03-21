Algoritmo "removerUsuarios"


Var
   opcao, opcaoRemover, totalUsuarios, i, j, resultado: inteiro
   usuario: vetor[0..1, 0..1] de caractere
   nomeBusca, resultadoRemover: caractere

   // Procedimento principal()
procedimento principal()
Inicio

   // Variável que controla o total de usuários a serem cadastrados
   // Lembrando que a matriz criada tem também um total de 6 posições [0..5]
   totalUsuarios := 1

   escreval("")
   escreval ("Menu Principal")
   escreval ("----------------------------")
   escreval("[1]-Cadastrar Usuário")
   escreval("[2]-Listar Usuários")
   escreval("[3]-Buscar Usuário pelo Nome")
   escreval("[5]-Remover Usuário")
   escreval("[4]-Sair do Sistema")
   escreval("Digite uma opção: ")
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
      escreval("Digite a opção para executar a remoção: ")
      escreval("[1]-Remover pelo nome do usuário")
      escreval("[2]-Remover todos os usuários")
      escreval("[3]-Voltar")
      leia(opcaoRemover)

   escolha (opcaoRemover)
      caso 1
      escreval("Digite o nome do usuário que deseja remover: ")
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
      escreval("Opção incorreta!")
      principal()
   fimescolha

fimprocedimento

// Procedimento cadastrarUsuario()
procedimento cadastrarUsuario()
Inicio

   limpatela
   escreval("-------------CADASTRO USUÁRIO-------------")
   escreval("Informe os dados do funcionário na seguinte ordem: ")
   escreval("Nome ")
   escreval("Idade ")

   para i de 0 até totalUsuarios faca
      escreval("")
      escreval("Dados do usuário", " ", i+1, " :")
      para j de 0 até 1 faca
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

   escreval("--------------LISTA USUÁRIOS--------------")
   escreval ("Nome; Idade; ")

   para i de 0 até totalUsuarios faca
      para j de 0 até 1 faca
         escreva (usuario [i,j], "; ")
      fimpara
      escreval("")
   fimpara

fimprocedimento

// Função buscarUsuario()
funcao buscarUsuario(nomeBusca: caractere):inteiro

Inicio

   resultado <- 0
   para i de 0 até totalUsuarios faca
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

// Função RemoverUmUsuario()
funcao removerUmUsuario(nomeBusca: caractere): caractere
Var
   retornoRemover: logico
Inicio

   retornoRemover <- falso
   para i de 0 até totalUsuarios faca
      se (usuario[i] = nomeBusca) entao
         usuario[i,0] <- ""
         usuario[i,1] <- ""
         retornoRemover <- verdadeiro
      fimse
   fimpara

   se (retornoRemover = verdadeiro) entao
      retorne "Usuário removido com sucesso"
   senao
      retorne "Não foi possível executar a removação, usuário não cadastrado"
   fimse

fimfuncao

// Procedimento RemoverTodos()
procedimento removerTodos()
Var
   resultadoRemoverTodos: logico
Inicio

   resultadoRemoverTodos <- falso
   para i de 0 até totalUsuarios faca
      para j de 0 até 1 faca
         se(usuario[i,j] <> "") entao
            usuario[i,0] <- ""
            usuario[i,1] <- ""
            resultadoRemoverTodos <- verdadeiro
         fimse
      fimpara
   fimpara

   se (resultadoRemoverTodos = verdadeiro) entao
      escreval("Todos os usuários foram removidos com sucesso")
   senao
      escreval("Não existem usuários a ser removidos")
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