Algoritmo "geraDadosFuncionario"
// Disciplina   : [L�gica de Programa��o]
// Professor   :  Cristiano Toniolo
// Descri��o   :  Leitura de funcion�rios e gera��o de dados estat�sticos
// Autor(a)    :  Diego Elias Cezarino
// Data atual  : 17/02/2021
Var
   funcionario: vetor[0..4, 0..4] de caractere
   i,j: inteiro
   menorIdade, maiorIdade, contadorM, contadorF: inteiro
   totalSalario: real
   menorNome, maiorNome, linha: caractere

Inicio

   linha <- "=========================================="

   escreval("Informe os dados do funcion�rio na seguinte ordem: ")
   escreval("Nome ")
   escreval("Fun��o ")
   escreval("Idade ")
   escreval("Sexo ")
   escreval("Sal�rio ")

   para i de 0 at� 4 faca
      escreval("")
      escreval("Dados do funcion�rio", " ", i+1, " :")
      para j de 0 at� 4 faca
         leia (funcionario [i,j])
      fimpara
   fimpara

   escreval("T�rmino da entrada de dados")
   escreval(linha)
   escreval("Leitura da matriz e apresenta��o dos dados: ")

   menorIdade <- Caracpnum(funcionario[0,2])
   maiorIdade <- Caracpnum(funcionario[0,2])
   contadorF <- 0
   contadorM <- 0
   totalSalario <- 0

   escreval ("Nome; Fun��o; Idade; Sexo; Sal�rio")

   para i de 0 at� 4 faca

      para j de 0 at� 4 faca

         escreva (funcionario [i,j], "; ")

         se (j = 2) entao
            se (Caracpnum(funcionario[i,j]) < (menorIdade)) entao
               menorIdade <- Caracpnum(funcionario[i,j])
               menorNome <- funcionario[i,j-2]
            senao
               se (Caracpnum(funcionario[i,j]) > (maiorIdade)) entao
                  maiorIdade <- Caracpnum(funcionario[i,j])
                  maiorNome <- funcionario[i,j-2]
               fimse
            fimse
         fimse

         se (j = 3) entao
            se (funcionario[i,j] = "F") entao
               contadorF <- contadorF + 1
            senao
               contadorM <- contadorM + 1
            fimse
         fimse

         se (j = 4) entao
            totalSalario <- totalSalario + Caracpnum(funcionario[i,j])
         fimse

      fimpara

      escreval("")

   fimpara

   escreval(linha)
   escreval ("Dados estat�sticos da empresa: ")
   escreval ("Menor Idade: ", menorNome, " - ", menorIdade)
   escreval ("Maior Idade: ", maiorNome, " - ", maiorIdade)
   escreval ("Sexo Feminino: ", contadorF)
   escreval ("Sexo Masculino: ", contadorM)
   escreval ("Total Sal�rios: ", totalSalario:2:2)

Fimalgoritmo