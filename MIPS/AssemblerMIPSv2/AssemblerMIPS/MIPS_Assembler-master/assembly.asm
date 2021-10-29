begin:

pula:
sw $t1, 8($zero)
lw $t0, 8($zero)
sub $t0, $t1, $t2
add $t0, $t0, $t2
beq $t0, $t1, pula

add $t0, $t0, $t2
beq $t0, $t3, pula

j begin
