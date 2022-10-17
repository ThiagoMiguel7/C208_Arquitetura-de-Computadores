.data #0x10010000
    c: .word 2, 6, 5, 8, 10, -6, 50, 120
    
.text 
    la $s1, c # 0x10010000
    li $t2, 0 # i = 0
    li $s0, 0 # j = 0
    li $t5, 150 # $t5 = 150
    
    WHILE: ble $s0, 7, LOOP # <=
    j EXIT
    
    LOOP: 
         sll $t3, $t2, 2 # $t3 = $t2 << 2 | 1*2^2
         add $t1, $t3, $s1 # $t1 = $t3 + $s1  --> 4 + #0x10010000
         sw $t5, 0($t1) # $t5=160 ----> end 0x10010004+ 0
         addi $s0, $s0, 1
         addi $t2, $t2, 1 
         addi $t5, $t5, 10
         j WHILE
         
    EXIT: