#Print Double
.data
  myDouble: .double 53.602
  zero: .double 0.0
   
.text 
  ldc1 $f2, myDouble
  ldc1 $f0, zero
  
  li $v0, 3
  add.d $f12, $f2, $f0
  syscall 
  
  