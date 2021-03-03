Algoritmo "semnome"
Var

   funcionario : vetor[1..3,1..2] de caracter
   linha,coluna, somaidade:  inteiro
   busq: caracter
   menoridade: CARACTER


funcao F(x:caracter):caracter
var
i: inteiro
inicio

   i<- 3
  // x<- "zzzz"  + " yyyy " + numpcarac(i)
   x<- "zzzz"  + " yyyy " + numpcarac(i)
   retorne x
fimfuncao

Inicio

   //////////////////////////////
   //          lendo
   /////////////////////////////


   para linha de 1 ate 3 faca
      para coluna de 1 ate 2 faca

         escreval("Local:Linha -",linha,"- Coluna - ", coluna)
         leia(funcionario[linha, coluna])

      fimpara
   fimpara
   //////////////////////////////
   //          EXIBINDO      PARTE 1
   /////////////////////////////


   escreval ("Mostrando os valores")
   //escreval(funcionario[1,1])

   PARA linha de 1 ate 3  faca
      para coluna DE 1 ate 2 faca
         escreval(funcionario[linha, coluna])
      fimpara
   fimpara

   //////////////////////////////
   //          EXIBINDO   2
   /////////////////////////////


   escreval ("Mostrando os valores")
   //escreval(funcionario[1,1])
   escreval("Exibindo 2")

   PARA linha de 1 ate 3  faca
      escreva("Nome:",funcionario[linha, 1],"-")
      escreva("Idade:",funcionario[linha, 2])
      escreval(" ")
   fimpara



   //////////////////////////////
   //          procurando
   /////////////////////////////

   // escreval("Digite o nome para buscar")
   //   leia(busq)
   PARA LINHA DE 1 ATE 3 FACA
      PARA COLUNA DE 1 ATE 2 FACA
         //FUNCIONARIO[linha,1]=busq)
         se (FUNCIONARIO[linha,coluna]="A") ou (FUNCIONARIO[LINHA,COLUNA]="a") entao
            escreval("Achado o A")
         fimse

      FIMPARA
   FIMPARA


   //////////////////////////////
   //          Calculo idade
   /////////////////////////////
   somaidade:=0
   PARA LINHA DE 1 ATE 3 FACA
      somaidade:= somaidade + caracpnum(FUNCIONARIO[linha,2])

      escreva(somaidade)
   FIMPARA
   escreva( "somatória:",somaidade)


   //////////////////////////////
   //          Comparação
   /////////////////////////////
   escreva( "somatória:")
   menoridade:=""
   PARA LINHA DE 1 ATE 2 FACA
      SE (caracpnum(funcionario[linha,2]) < caracpnum(funcionario[linha+ 1 , 2]) ) entao
         menoridade:= funcionario[linha,2]
      SENAO
         menoridade:= funcionario[linha+1,2]
      fimse

   FIMPARA
   ESCREVAL("Menor idade:", menoridade)

   escreva( "FUNÇÃO")
   escreval(F("Teste"))

Fimalgoritmo


//MANUAL DE FUNÇÕES PARA VISUALG
//www.apoioinformatica.inf.br/produtos/item/30-as-funcoes-do-visualg-versao-2-0
