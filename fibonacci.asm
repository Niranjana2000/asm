BITS 32

extern printf
extern scanf

section .data
	out:db "%d",10,0
	request:db "Enter the limit:",0
	format: db "%d",0

	num: dd 0
	inc: dd 0
	a: dd 0
	b: dd 0
	print:db "------Fibonacci series------",10,0
	

section .text
	global main

	main:

		push ebp
		mov ebp,esp


		push request	
		call printf	;prints request
		
		
		
		push num
		push format
		call scanf

		
		push print
		call printf	


		mov ebx,0   ;first number
		push ebx
		push out
		call printf

		cmp DWORD[num],1	;checks num=1
		je l2
		

		
	
		mov ecx,1   ;second number
		push ecx
		push out
		call printf		

		cmp DWORD[num],2	;check num=2
		je l2
		
		sub DWORD[num],2	;num-2
		

		
	l1: 	
		add ebx,ecx     ;ebx=ebx+ecx
		mov edx,ebx	;saved ebx to edx	
		mov DWORD [a] ,ecx   ;moved  value of ecx 
		mov DWORD [b] ,edx   ;moved value of edx
			
		push edx
		push out
		call printf 
	
		mov ebx, DWORD [a]  ;ebx=ecx
		mov ecx, DWORD [b]  ;ecx=edx

		add DWORD[inc],1
		mov edx,DWORD[inc]
		cmp edx,DWORD[num]	;if ecx=num
		jl l1
		
	l2:
		
		mov esp,ebp
		pop ebp

