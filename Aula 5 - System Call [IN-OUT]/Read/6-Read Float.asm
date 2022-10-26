#Read Float 
.data 
   msg: .asciiz "Forneça um numero decimal: "
   dez: .float 10.0

.text
   
   #Imprimindo mensagem para o usuário
   li $v0,4
   la $a0, msg
   syscall 
   
   #Lendo o numero Float e armazenando em $f0 
   li $v0,6
   syscall 
   
   lwc1 $f1, dez #Necessário armazenar em $f1
   add.s $f12, $f1, $f0
   
   #Imprimindo o número
   li $v0,2
   syscall 
   
     
    
    
   
   
