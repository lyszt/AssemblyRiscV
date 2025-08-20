.data 
	a: .float 4.1
	b: .float 6.0
	c: .float 7.0
	amnt: .float 3.0
	

.text 
.globl _start
_start: 
	la s0, a
	la s1, b
	la s2, c
	la s3, amnt
	
	flw f0, 0(s0)
	flw f1, 0(s1)
	flw f2, 0(s2)
	flw f3, 0(s3)
	
	fadd.s f4, f1, f2
	fadd.s f5, f4, f3
	fdiv.s fa0, f5, f3 
	li a7, 2
	ecall
	li a7, 10
	ecall