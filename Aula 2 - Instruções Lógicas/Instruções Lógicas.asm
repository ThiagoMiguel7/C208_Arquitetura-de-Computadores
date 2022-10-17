.text 
 li $t1, 10
 li $t2, 8
 and $t0, $t1, $t2 # t0 = t1 & t2
 andi $t3, $t1, 8  # t3 = t1 & 8 
 
 #OR / ORI / OR / NOR / XOR / XORI
 
 slt $t4,$t1,$t2 # Se $t1 < $t2 ----> $t4=1
 slti $t5,$t2, 9 # Se $t2 < 9 -----> $t5=1
 
 #Deslocamento de bits
 sll $t6, $t1,2 # 10<<2 = 2^x*10
 sra $t7, $t1,1 # 10>>2 = 10/2^x
 
 #sra # Deslocamento mantendo o sinal, acrescenta 1 em   negativos