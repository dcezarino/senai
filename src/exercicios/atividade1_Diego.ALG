Algoritmo "buscaUsuarioPeloNome"
// Disciplina   : [Linguagem e Lógica de Programação]

Tipo

   // Procedimento principal()
Var
   opcao, totalUsuarios, i, j, resp: inteiro
   usuario: vetor[0..5, 0..1] de caractere
   nomeBusca: caractere

procedimento principal()
Inicio

   // Variável que controla o total de usuários a serem cadastrados
   // Lembrando que a matriz criada tem também um total de 6 posições [0..5]
   totalUsuarios := 5

   repita
      escreval("")
      escreval ("Menu Principal")
      escreval ("----------------------------")
      escreval("[1]-Cadastrar Usuário")
      escreval("[2]-Listar Usuários")
      escreval("[3]-Buscar Usuário pelo Nome")
      escreval("[4]-Sair do Sistema")
      escreval("Digite uma opção: ")
      leia(opcao)
      limpatela
   ate (opcao = 1) ou (opcao = 2) ou (opcao = 3) ou (opcao = 4)

   escolha (opcao)
   caso 1
      cadastrarUsuario()

   caso 2
      listarUsuarios()

   caso 3
      escreval("Digite o nome para realizar a busca: ")
      leia(nomeBusca)
      resp <- buscarUsuario(nomeBusca)

   caso 4
      finalizarSistema()

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

   principal()

fimprocedimento

// Procedimento listarUsuarios()
procedimento listarUsuarios()
Inicio

   limpatela
   escreval("--------------LISTA USUÁRIOS--------------")
   escreval ("Nome; Idade; ")

   para i de 0 até totalUsuarios faca
      para j de 0 até 1 faca
         escreva (usuario [i,j], "; ")
      fimpara
      escreval("")
   fimpara

   principal();

fimprocedimento

// Procedimento buscarUsuario()
funcao buscarUsuario(nomeBusca: caractere):inteiro
Inicio

   para i de 0 até totalUsuarios faca
      se (usuario[i] = nomeBusca) entao
         escreval("Nome: ", usuario[i,0])
         escreval("Idade: ", usuario[i,1])
         retorne i
         interrompa
      senao
         retorne -1
      fimse
   fimpara

   principal()

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