Algoritmo "geraDadosFuncionario"
// Disciplina   : [Lógica de Programação]
// Professor   :  Cristiano Toniolo
// Descrição   :  Leitura de funcionários e geração de dados estatísticos
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

   escreval("Informe os dados do funcionário na seguinte ordem: ")
   escreval("Nome ")
   escreval("Função ")
   escreval("Idade ")
   escreval("Sexo ")
   escreval("Salário ")

   para i de 0 até 4 faca
      escreval("")
      escreval("Dados do funcionário", " ", i+1, " :")
      para j de 0 até 4 faca
         leia (funcionario [i,j])
      fimpara
   fimpara

   escreval("Término da entrada de dados")
   escreval(linha)
   escreval("Leitura da matriz e apresentação dos dados: ")

   menorIdade <- Caracpnum(funcionario[0,2])
   maiorIdade <- Caracpnum(funcionario[0,2])
   contadorF <- 0
   contadorM <- 0
   totalSalario <- 0

   escreval ("Nome; Função; Idade; Sexo; Salário")

   para i de 0 até 4 faca

      para j de 0 até 4 faca

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
   escreval ("Dados estatísticos da empresa: ")
   escreval ("Menor Idade: ", menorNome, " - ", menorIdade)
   escreval ("Maior Idade: ", maiorNome, " - ", maiorIdade)
   escreval ("Sexo Feminino: ", contadorF)
   escreval ("Sexo Masculino: ", contadorM)
   escreval ("Total Salários: ", totalSalario:2:2)

Fimalgoritmo