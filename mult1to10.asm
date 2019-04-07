BITS 32

extern printf


section .data			
	out: db "%d * %d = %d",10,0
	multiplier: dd 0	
	value: dd 0

section .text
	global main
main:
	push ebp
	mov ebp,esp

	mov eax,1  
l1:
	mov ebx,1
l2:

	mov ecx,eax	
	imul eax,ebx
 	mov DWORD [multiplier] ,ebx	
	mov DWORD [value],ecx	
	push eax
	push ebx
	push ecx
	push out	
	call printf
	mov ebx,DWORD [multiplier]
	mov eax,DWORD [value]
	add ebx,1
	cmp ebx,10
	jbe l2
	add eax,1
	cmp eax,11
	jnz l1
	
	
	mov esp,ebp
	pop ebp


