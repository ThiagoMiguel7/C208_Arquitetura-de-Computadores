.data
  pergunta: .asciiz "Qual é o seu nome? " 
  saudacao: .asciiz "Olá, "
  nome: .space 50 #Reservo 50 bytes
   
.text 
   #Imprime a pergunta
   li $v0,4
   la $a0, pergunta
   syscall  
   
   #Leitura do nome
   li $v0,8
   la $a0, nome
   la $a1, 50
   syscall
   
   #Mostra a saudação
   li $v0,4
   la $a0, saudacao
   syscall
   
   #Impressão do Nome
   li $v0,4
   la $a0, nome
   syscall
   