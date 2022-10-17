.data #0x10010000
   c: .word 2, 6, 5
   
.text #0x00400000 
   la $s1, c # Load Address
   lw $t1, 0($s1) #$t1= 2 ---> c[0]
   lw $t2, 4($s1) #t2 = 6 ---> c[1]
   lw $t3, 8($s1) #t3 = 5 ---> c[2]