begin:
# Rd, Rs, Rt
pula:
add $t0, $t1, $t1
sub $t0, $t0, $t2
sw $t0, 1($t3)
beq $t1, $t1, pula
lw $t0, 1($t3)

j begin
