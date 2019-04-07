bits 32

extern printf

section .data
      val: db "%d",10,0

section .text

global main

  main:
	push ebp
	mov ebp,esp
	mov ebx,1
loop:
	push ebx
	push val
	call printf
	add ebx,1
	cmp ebx,101
	jnz loop
	mov esp,ebp
	pop ebp
	
	

