	# exercicio 2 criado pra mim
	.data 
	     counter: .word 10 
	     
	.text
	.globl _start
	_start:
	      la t0, counter
	      lw t1, 0(t0)
	      addi t1, t1, 5
	      sw t1, 0(t0)
	      j _start 