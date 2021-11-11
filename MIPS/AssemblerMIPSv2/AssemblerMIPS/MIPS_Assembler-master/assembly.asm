begin:
# Rd, Rs, Rt
pula:
add $t0, $t4, $t1
sw $t1, 1($t4)
add $t0, $t4, $t1
sub $t0, $t0, $t2
sw $t1, 1($t4)
lw $t0, 1($t3)
beq $t1, $t1, pula

j begin
