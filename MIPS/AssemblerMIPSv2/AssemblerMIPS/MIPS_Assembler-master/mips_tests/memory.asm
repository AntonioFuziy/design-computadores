begin:
lw $v1, 0($zero) # obtem 1 pra efeitos, ram(0) = 1 obrigatório
add $t0, $v1, $v1 # gera 2
add $t1, $t0, $v1 # gera 3
add $t2, $t1, $t1 # gera 6
sw $v1, 0($zero)
sw $t0, 4($zero)
sw $t1, 8($zero) 
sw $t2, 16($zero)
lw $t2, 16($zero) # restaurando contexto na ordem inversa
lw $t1, 8($zero)
lw $t0, 4($zero)
lw $v1, 0($zero)
j begin
