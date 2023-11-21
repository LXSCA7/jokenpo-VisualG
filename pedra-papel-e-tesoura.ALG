algoritmo "pedra-papel-e-tesoura"
// Criado por Lucas
// Desafio da lista do Curso de Algoritmos do Curso em Video
// Feito em 19/11/2023
// VisualG
var
   mao, maquina, vit, emp, der,tot: inteiro
   apr: real
   cont: caractere
inicio

   vit := 0
   emp := 0
   der :=0
   repita // inicia o loop de jogadas
      maquina := randi(3) // numeros de 0 ate 2 aleatórios / sendo 0 pedra, 1 papel e 3 tesoura.
      escreval("=-=-=-=-=-=-=-=-=-=-=-=")
      escreval(" PEDRA PAPEL E TESOURA ")
      escreval("=-=-=-=-=-=-=-=-=-=-=-=")
      escreval(" [1] PARA PEDRA ")
      escreval(" [2] PARA PAPEL ")
      escreval(" [3] PARA TESOURA ")
      escreva(" DIGITE SUA ESCOLHA: ")
      leia(mao)
      escreval("-----------------------")
      escolha mao
      caso 1
         escreval(" VOCÊ ESCOLHEU PEDRA ")
         se (maquina = 0) entao
            escreval(" MÁQUINA ESCOLHEU PEDRA ")
            escreval("-----------------------")
            escreval(" RESULTADO: EMPATE ")
            escreval("-----------------------")
            emp <- emp + 1
         senao
            se (maquina = 1) entao
               escreval(" MÁQUINA ESCOLHEU PAPEL ")
               escreval("-----------------------")
               escreval(" RESULTADO: DERROTA ")
               escreval("-----------------------")
               der := der + 1
            senao
               se (maquina = 2) entao
                  escreval(" MÁQUINA ESCOLHEU TESOURA ")
                  escreval("-----------------------")
                  escreval(" RESULTADO: VITÓRIA! ")
                  escreval("-----------------------")
                  vit := vit + 1
               fimse
            fimse
         fimse
      caso 2
         escreval(" VOCÊ ESCOLHEU PAPEL ")
         se (maquina = 0) entao
            escreval(" MÁQUINA ESCOLHEU PEDRA ")
            escreval("-----------------------")
            escreval(" RESULTADO: VITÓRIA! ")
            escreval("-----------------------")
            vit := vit + 1
         senao
            se (maquina = 1) entao
               escreval(" MÁQUINA ESCOLHEU PAPEL ")
               escreval("-----------------------")
               escreval(" RESULTADO: EMPATE ")
               escreval("-----------------------")
               emp <- emp + 1
            senao
               se (maquina = 2) entao
                  escreval(" A MÁQUINA ESCOLHEU TESOURA ")
                  escreval("-----------------------")
                  escreval(" RESULTADO: DERROTA ")
                  escreval("-----------------------")
                  der := der + 1
               fimse
            fimse
         fimse

      caso 3
         escreval(" VOCÊ ESCOLHEU TESOURA ")
         se (maquina = 0) entao
            escreval(" MÁQUINA ESCOLHEU PEDRA ")
            escreval("-----------------------")
            escreval(" RESULTADO: DERROTA ")
            escreval("-----------------------")
            der := der + 1
         senao
            se (maquina = 1) entao
               escreval(" MÁQUINA ESCOLHEU PAPEL ")
               escreval("-----------------------")
               escreval(" RESULTADO: VITÓRIA! ")
               escreval("-----------------------")
               vit := vit + 1
            senao
               se (maquina = 2) entao
                  escreval(" MÁQUINA ESCOLHEU TESOURA ")
                  escreval("-----------------------")
                  escreval(" RESULTADO: EMPATE ")
                  escreval("-----------------------")
                  emp <- emp + 1
               fimse
            fimse
         fimse
      fimescolha
      escreval(" DESEJA JOGAR NOVAMENTE? [S] ou [N]")
      leia(cont)
      limpatela // limpa o console
   ate (cont = "N") ou (cont = "n") // terminar o loop independente do CAPS na letra "N"
   tot <- vit + emp + der // calcula o total de jogos usando as estatisticas geradas a cada rodada
   apr := (((vit * 3) + emp) / (tot * 3))*100 // calcula o aproveitamento como no futebol. onde VITÓRIA = 3, EMPATE = 1, DERROTA = 0.

   escreval("=-=-=-=-=-=-=-=-=-=-=-=")
   escreval(" PEDRA PAPEL E TESOURA ")
   escreval("=-=-=-=-=-=-=-=-=-=-=-=")
   escreval(" Você jogou",tot," vezes")
   escreval(" Total de vitórias:", vit)
   escreval(" Total de empates:", emp)
   escreval(" Total de derrotas:", der)
   escreval(" Aproveitamento: ",apr:2:0,"%")
   escreval("-----------------------")
   escreval(" OBRIGADO POR JOGAR! ")
   escreval("-----------------------")



fimalgoritmo
