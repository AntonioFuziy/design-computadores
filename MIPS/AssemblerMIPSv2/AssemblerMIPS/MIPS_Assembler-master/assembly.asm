begin:

pula:
lw $t3, 0($zero)
lw $t4, 0($zero)
sw $t4, 0($zero)
beq $t4, $t3, pula

j begin
