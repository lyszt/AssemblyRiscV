# 1013 - O Maior
# Encontre Max(a,b)
# made the hard way and ignoring we could just do simple comparisons I guess
.data
	a: .word 5
	b: .word 54
	maior: .word 0

.text
.globl _start
_start: 
	la t0, a
	la t1, b
	la t2, maior 
	
	lw t3, 0(t0)
	lw t4, 0(t1)
	
	# max(a,b) = a + b + abs (a - b) / 2
	add t5, t3, t4
	# get abs value 
	sub t6, t3, t4
	blt t6, x0, abs_val_neg
	j abs_val_pos
abs_val_neg: 
	neg t6, t6
abs_val_pos:
	add s0, t6, t5
	li s3, 2
	div s0, s0, s3
	sw s0, 0(t2)
	li a0, 10 
	ecall 