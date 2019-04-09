BITS 32

extern printf

section .data
	out:db "AUM NAMASHIVAYA",10,0
	
section .text
	global main
main:
	push ebp
	mov ebp,esp

	push out
	call printf

	mov esp,ebp
	pop ebp 
