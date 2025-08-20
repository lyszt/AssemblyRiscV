.data 
	a: .word 4
	b: .word 5
	prod: .word 0

.text
.globl _start
_start: 
	
	li a7, 1
	la t0, a
	la t1, b
	la t5, prod
	lw t2, 0(t0)
	lw t3, 0(t1)
	mul t4, t2, t3
	sw t4, 0(t5)
	lw a0, 0(t5)
	ecall
	