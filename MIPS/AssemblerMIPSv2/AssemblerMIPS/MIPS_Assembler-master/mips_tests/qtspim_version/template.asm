#====================================================================
# Nome:
#
# Função do programa:
#
#====================================================================

#====================================================================
#       Inicialização dos dados de alocação estática
#====================================================================

# Suas definições dos dados estão após a diretiva ".data".
.data
# frase:           .asciiz   "\n\nOi!!!!"    # Terminada em null (padrão C).
# numeroInteiro:   .word     1
#

#
#====================================================================
#       Programa
#====================================================================
.text
.globl main       # A etiqueta "main" tem acesso global. Pode usar o nome dela no QtSPIM.
.ent   main       # Define que o ponto de entrada no programa é a rotina "main" (opcional).

main:
#
# Entrada do programa:
# Caso seja uma sub-rotina, deve administrar o stack:
#        addiu   $sp, $sp, -4    # aloca a pilha
#        sw      $ra, 0($sp)     # salva o endereço de retorno
#
# Corpo do programa e comentários
#
# Uso dos registradores:
#   Explique quais registradores são usados para quais finalidades.
#
#   Inicio do código do programa:
li $v0, 0x10000000
li $v1, 1
sw $v1, 0($v0)
li $v1, 0x10000010
sw $v1, 4($v0)

# aqui

#
# Saída do programa:
# Caso seja uma sub-rotina, precisa recuperar o valor de retorno e limpar o stack.
exit:
#        lw      $ra, 0($sp)       # carrega o endereço de retorno
#        addiu   $sp, $sp, 4     # retira essa entrada da pilha
#        jr      $ra             # retorna

.end main