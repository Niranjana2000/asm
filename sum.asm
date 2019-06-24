;asm program to add two numbers

BITS 32

extern printf
extern scanf

section .data
	out:db "%d",10,0			;for output format
	format:db "%d",0			;for input format
	req1:db "Enter the 1st number:",0
	req2:db "Enter the 2nd number:",0
	sum:db "Sum=",0

	a:dd 0				;for 1st number
	b:dd 0				;for 2nd number
	s:dd 0				;for sum

section .text
	global main
	 	

	main:
		push ebp
		mov ebp,esp
		
		push req1		;prints request 1
		call printf

		push a			
		push format
		call scanf
		
		push req2		;prints request 2
		call printf

		push b
		push format
		call scanf

		mov ebx,DWORD[b]		;ebx=b

		add ebx,DWORD[a] 		;ebx=ebx+a

		push sum
		call printf
		
		push ebx			;prints sum
		push out
		call printf

		mov esp,ebp
		pop ebp
