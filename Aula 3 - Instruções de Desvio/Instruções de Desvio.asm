.text
   li $s1,4
   li $s2,5
   li $s3,4
   li $s4,5
   bne $s3, $s4, Else # Se $s3 != $s4 ---> Else
   sub $s0, $s1, $s2
   j Exit #JUMP
   Else: 
       add $s0, $s1, $s2
   Exit: 

  