ld -m elf_i386 -o first first.o

nasm -f elf -o first.o first.as

gdb #file 

layout asm -> break _start

![img.png](img.png)

run -> to start running.