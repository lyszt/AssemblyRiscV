addi a0, x0, 1
add immediate
-> Adds an immediate value to a register
a0 -> Destination register, conventionally used to hold the first
argument to a function or the return value from a function

x0 -> The source register. x0 always holds the value 0

1 -> The immediate value. The constant we want to do something with

Service command 93 terminates
addi a7, x0, 93
add 93 to x0, which is always zero
store it in a7.
93 is terminate code that terminates service in linux

btw, use this to debug
riscv64-unknown-elf-gdb
