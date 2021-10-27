begin:
lw $t0, 0($zero)    # ram(0) = 1
add $t1, $t0, $t0   # v0 = 2
add $t1, $t1, $t1   # v0 = 4
add $t1, $t1, $t1   # v0 = 8
add $t1, $t1, $t1   # v0 = 16
lw $t2, 4($zero)    # ram(1) = 0x10000 
add $t3, $zero, $zero # contador
add $t4, $t0, $zero # um
loop:
beq $t3, $t1, end     # se t3 = t1, fim programa
sw $t4, 0($t2)      # LED = at
add $t4, $t4, $t4   # shift 1 esq
add $t3, $t3, $t0   # t3 += 1
j loop
end:
j begin
