inicio:
lw $t2, 0($zero) # obtem 1 pra efeitos, ram(0) = 1 obrigatório
add $t3, $t2, $t2 # gera 2
add $v1, $t3, $t2 # gera 3
add $t0, $v1, $v1 # gera 6
add $t1, $t0, $v1 # resultado esperado 9
sub $t1, $zero, $t2 # resultado esperado -1
sub $t1, $t0, $v1 # resultado esperado 3
sub $t1, $v1, $t0 # resultado esperado -3
and $t1, $t0, $t3 # resultado esperado 2
or $t1, $t0, $t3 # resultado esperado 6
slt $t1, $v1, $t0 # resultado esperado 1
slt $t1, $t0, $v1 # resultado esperado 0
j inicio