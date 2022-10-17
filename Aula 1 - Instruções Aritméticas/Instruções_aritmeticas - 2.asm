.text 
    #Imprime INT 
    li $t0, 2 #$t0 = 2
    li $t1, 10 #$t1 = 10
    add $t2, $t0, $t1 #$t2 = $t0 + $t1
    
    li $v0, 1 # Imprimindo um INT
    #move $a0, $t2
    add $a0, $t2, $0
    syscall
    
    li $v0, 5 # Entrar com um INT
    syscall 
    
    move $t3, $v0 #Guarda o valor em $t3