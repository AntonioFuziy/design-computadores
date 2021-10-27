inicio:
lw $t0, 0($zero) # obtem 1 pra efeitos, ram(0) = 1 obrigatório
add $v1, $t0, $t0 # gera 2
add $a0, $v1, $t0 # gera 3
add $a1, $a0, $a0 # gera 6
add $a2, $zero, $zero # contador
loop:
beq $a2, $a1, pula # loop deve executar 6 vezes
add $a2, $a2, $t0
j loop
pula:
j inicio