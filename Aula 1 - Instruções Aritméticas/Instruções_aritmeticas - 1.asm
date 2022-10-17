.text 
   # X = 5 + 4 --> TIPO R 
   # A = $t1 = 5
   # B = $t2 = 4 
   # X = $t3 => 9
   # X = A + B --> $t3 = $t1 + $t2
   
   #Load Immediate
   li $t1, 5
   li $t2, 4
   
   #Soma
   add $t3, $t1, $t2 # X = A + B 
   
  
   # x =  10 + 125 ---> TIPO I
   # A = $s0 = 10
   # B = 125
   # x = # $s1 
   # X = A + B ---> $s1 = $s0 + 125
   
   li $s0, 10 # $s0 = 10
   #Soma - TIPO I 
   addi $s1, $s0, 125
   
   #Subtração
   sub $t4,$s1,$t1 # X = 135 - 5
   subi $t0,$t4,100
   
   addi $s7, $s1, -10
   
   li $s7, 10
   addi $s6, $s7, -30
   
   li $t6, 10
   li $t7, 5 
   
   #Multiplicação
   mul $s6, $t6, $t7 # $s6 = $t6 * $t7
   mul $s5, $t6, 3 # $s5 = $t6 * 3
   
   #Divisão
   div $s7, $t6, 2 # $s7 = $t6 / 2