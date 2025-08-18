# add three numbers

.data 
    a: .word 5
    b: .word 3
    c: .word 6
    sum: .word 0
    
    
.text
.globl _start
_start:
	la t0, a
	la t1, b
	la t2, c
	la t3, sum

	lw t4, 0(t0)
	lw t5, 0(t1)
	lw t6, 0(t2)

	add s1, t4, t5
	add s2, s1, t6
	sw s2, 0(t3)
	
	li a7, 10
	ecall
