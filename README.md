ld -m elf_i386 -o first first.o

nasm -f elf -o first.o first.as

gdb #file 

layout asm -> break _start

![img.png](img.png)

run -> to start running.
stepi -> go one instruction forward
info registers eax -> show register information (0x1)
(or another register), ebx

![img_1.png](img_1.png)

x/x $ebx - this prints value and adress in register