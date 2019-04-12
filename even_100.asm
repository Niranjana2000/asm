BITS 32

extern printf

section .data
      val: db "%d",9,0
      out:db "----------------Even numbers upto 100------------",10,0


section .text

global main

  main:
	push ebp
	mov ebp,esp
	mov ebx,2
	
	push out
	call printf
	
loop:
	push ebx
	push val
	call printf
	add ebx,2
	cmp ebx,100
	jle loop
	

	mov esp,ebp
	pop ebp
	
