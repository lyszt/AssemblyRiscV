section .data
	num DD 5
        ; defines 5, 32 bits allocated inside var
	; DB 8 bits, 1 byte DW 2 bytes 16 bits 
	; DD 32 bits DQ 64 bits DT 80 bits
        ; DB is define bits
section .text
global _start

_start:
	MOV eax,1
	MOV ebx,[num]
	INT 80h
