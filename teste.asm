.data 

number: .word 0

# Programa básico, loop infinito

.text
.globl _start
_start: 
	la t0, number
	lw t1, 0(t0)
	addi t1, t1, 1
	sw t1, 0(t0)
	j _start