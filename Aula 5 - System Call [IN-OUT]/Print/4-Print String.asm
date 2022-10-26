#Print String
.data
 question_1: .asciiz "Entre com seu nome: "

.text
 li $v0, 4
 la $a0, question_1
 syscall 
 
 