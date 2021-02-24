Algoritmo "cadastroFuncionarios"

Var
   matriz : vetor[0..4, 0..4] de caractere
   i,j: inteiro
   linha: caractere

Inicio

   linha <- "=========================================="

   escreval("Informe os dados na seguinte ordem: ")
   escreval("Nome")
   escreval("Função")
   escreval("Idade")
   escreval("Sexo")
   escreval("Salário")

   para i de 0 até 4 faca
      escreval("")
      escreval("Dados do funcionário", (i+1), ": ")
      para j de 0 até 4 faca
         leia(matriz[i,j])
      fimpara
   fimpara

   escreval("Término da entrada de dados")
   escreval(linha)
   escreval("Leitura da matriz e apresentação dos dados")

   escreval ("Nome; Função; Idade; Sexo; Salário")
   para i de 0 até 4 faca
      para j de 0 até 4 faca
         escreva(matriz[i,j], "; ")
      fimpara
      escreval(" ")
   fimpara

Fimalgoritmo
