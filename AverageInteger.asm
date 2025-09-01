# Leia 2 valores inteiros A e B, que correspondem a 2 notas de um aluno.
# A seguir, calcule a média ponderada do aluno, sabendo que a nota A tem peso 7 e a nota B tem peso 15 (a soma dos pesos é 22). Assuma que cada nota pode ir de 0 até 100.
# androbob

.data 
	A: .word 4
	B: .word 4
	RESULT: .word 4
	WELCOMETEXT: .asciz "Escolha o valor de A e B: "
	RESULTTEXT: .asciz "A media é: "

.globl start
.text
start: 

	# lets show pretty text
	la a0, WELCOMETEXT
	li a7, 4
	ecall
	
	
	la t0, A
	li a7, 5
	ecall 	
	
	sw a0, 0(t0)
	
	li a7, 5
	ecall
	
	sw a0, 4(t0)
	
	
	la a0, RESULTTEXT
	li a7, 4
	ecall 
	
	lw s0, 0(t0)
	lw s1, 4(t0)
	add s3, s0, s1
	li s4, 2 # amount of variables and yes it could be done better
	div s0, s3, s4
	mv a0, s0
	
	
	

	li a7, 1
	ecall
	
	li a7, 10
	ecall
	# all good stored and happy
	
