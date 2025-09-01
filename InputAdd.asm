# Leia dois valores inteiros, no caso para variáveis A e B. A seguir, calcule a soma entre elas e atribua à variável SOMA. A seguir escrever o valor desta variável.
.data 
A: .word 0
B: .word 0
SUM: .word 0
WELCOME: .asciz "Choose two numbers to add:"
SUMRESULT: .asciz "The result is: "
.text
.globl start
start: 
	# First read A and B

	li a7, 4
	la a0, WELCOME
	ecall
	la t0, A
	li a7, 5
	ecall
	sw a0, 0(t0)
	li a7, 5
	ecall
	sw a0, 4(t0)
	
	# Final print 
	li a7, 4 
	la a0, SUMRESULT
	ecall
	
	
	
	
	lw t2, 0(t0)
	lw t3, 4(t0)
	add t4, t2, t3
	mv a0, t4
	li a7, 1
	ecall
	
	li a7, 10
	ecall 
	
	