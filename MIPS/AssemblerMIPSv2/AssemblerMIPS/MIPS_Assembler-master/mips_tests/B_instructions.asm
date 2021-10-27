begin:
addi $t0, 10($zero)
addi $t1, 20($zero)
add $t1, $t0, $t1 # teste1 - resultado: 30
ori $t1, 4($zero)
ori $t1, 6($t1) # teste2 - resultado: 6
andi $t1, 2($t1) # teste3 - resultado: 2
slti $t2, 10($t1) # teste4 - resultado: 1
slti $t2, 0($t1) #teste5 - resultado: 0
bne $t1, $zero, 2 # teste6 - deve pular o j begin
j begin
