BITS 32

extern printf

section .data
      val: db "%d",9,0

section .text

global main

  main:
	push ebp
	mov ebp,esp
	mov ebx,2
loop:
	push ebx
	push val
	call printf
	add ebx,2
	cmp ebx,100
	jle loop
	

	mov esp,ebp
	pop ebp
	
