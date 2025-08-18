# add 2 numbers

.data 
a: .word 3
b: .word 7
sum: .word 0

.text
.globl _start
_start: 
	la t0, a
	la t1, b
	la t2, sum 
_sum: 
	lw t3, 0(t0)
	lw t4, 0(t1)
	add t5, t3, t4
	sw t5, 0(t2)
	li a0, 0
	ecall 
	