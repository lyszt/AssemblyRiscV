# exercicio 3

# Modify your code to loop exactly 8 times. Inside the loop, add 5 to the counter variable just like you're doing now. After 8 iterations, the program should stop.

# beq   # equal
# bne   # not equal

# blt   # less than
# bgt   # greater than
# ble   # less than or equal to
# bge   # greater than or equal to

.data 
	accumulator: .word 0
	iterator: .word 0

.text 
.globl _start

_start: 
	la t0, accumulator 
	la t1, iterator
	li t4, 8
	lw t2, 0(t0)
	lw t3, 0(t1)
_addition:
	addi t2, t2, 5 
	addi t3, t3, 1
	bge t3, t4, _end
	j _addition
_end:
	sw t2, 0(t0)
	sw t3, 0(t1)
	li a0, 10
	ecall
	
	