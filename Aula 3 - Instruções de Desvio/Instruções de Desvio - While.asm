.text 
  li $t0, 0 
  li $t2, 0
  WHILE: ble $t0,2, Loop # $t0 <= 2 | 0 1 2 3
  j Exit
  Loop: 
       add $t2,$t2,1 # $t2++
       add $t0,$t0,1 # $t0++
       j WHILE
  Exit: