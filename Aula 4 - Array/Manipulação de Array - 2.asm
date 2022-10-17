.data #0x10010000
    c: .word 2, 6, 5, 8, 10, -6, 50, 120
    
.text 
  la $s1, c #0x10010000
  li $t2, 0 # i = 0
  li $s0, 0 # j = 0
  WHILE: ble $s0, 2, LOOP # $S0 <= 2
  j EXIT 
  
  LOOP: 
     sll $t3, $t2, 2 # $t3 = $t2(0) << 2 | t2*2^n
     add $t1, $t3, $s1 # $t1 = 0 + 0x10010000
     lw $t5, 0($t1) #$t5 = dado do end. 0x10010000 
     addi $s0, $s0, 1 #$s0 = $s0 + 1
     addi $t2, $t2, 1 #$t2 = $t2 + 1 
     j WHILE
     
  EXIT: