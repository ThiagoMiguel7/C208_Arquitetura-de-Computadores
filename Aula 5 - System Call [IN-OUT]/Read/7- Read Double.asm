#Read Double
.data 
   msg: .asciiz "Forneça um numero decimal: "
   dez: .double 0.0

.text
   
   #Imprimindo mensagem para o usuário
   li $v0,4
   la $a0, msg
   syscall 
   
   #Lendo o numero Double e armazenando em $f0 
   li $v0,7
   syscall 
   
   ldc1 $f2, dez #Necessário armazenar em $f2
   add.d $f12, $f2, $f0
   
   #Imprimindo o número
   li $v0,3
   syscall 
   