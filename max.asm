;asm program to find largest amoung three numbers

BITS 32

extern printf
extern scanf

section .data
	out: db "%d", 10, 0			;for output format
	format: db "%d", 0			;for input format
	req1: db "Enter the 1st number:", 0
	req2: db "Enter the 2nd number:", 0
	req3: db "Enter the 3nd number:", 0
	output: db "THE LARGEST NUMBER IS ", 0
	
	n1: dd 0					;for number 1
	n2: dd 0					;for number 2
	n3: dd 0					;for number 3
	
section .text
	
	global main

		main:

			push ebp
			mov ebp,esp
		
			push req1		;prints request 1
			call printf

			push n1
			push format
			call scanf

			mov ebx,DWORD[n1]		;ebx=n1

			push req2		;prints request 1
			call printf

			push n2
			push format
			call scanf
		

			push req3		;prints request 1
			call printf

			push n3
			push format
			call scanf

			cmp ebx,DWORD[n2]		;if ebx>=n2 then goto l1
			jge l1			
		
			cmp DWORD[n2],ebx		;if n2>ebx then goto l2
			jge l2
	
			cmp DWORD[n3],ebx		;if n3>ebx then goto l3
			jge l3

		l1:	cmp ebx,DWORD[n3]		;if ebx>=n3 goto l
			jge l

		l2:	mov ebx,DWORD[n2]		;ebx=n2
			cmp ebx,DWORD[n3]		;if ebx>=n3 goto l
			jge l

		l3:	mov ebx,DWORD[n3]		;ebx=n3
			cmp ebx,DWORD[n2]		;if ebx>=n2 goto l
			jge l
			

		l:	push output		;prints output
			call printf

			push ebx
			push out
			call printf

			mov esp,ebp
			pop ebp

