segment .data
	msg1 db 'Enter the frist Number: '
	len1 equ $- msg1
	msg2 db 'Enter the Sceond Number: '
	len2 equ $- msg2
	msg3 db 'The Sum is: '
	len3 equ $- msg3

segment .bss
	num1 resb 3
	num2 resb 3
	result resb 6

section .text
	global _start

_start:
	;read frist number
	mov rax,4
	mov rbx,1
	mov rcx,msg1
	mov rdx,len1
	syscall

	mov rax,3
	mov rbx,0
	mov rcx,num1
	mov rdx,3
	syscall

	;Read Second Number
	mov rax,4
	mov rbx,1
	mov rcx,msg2
	mov rdx,len2
	syscall

	mov rax,3
	mov rbx,0
	mov rcx,num2
	mov rdx,3
	syscall

	; moving number 1 into eax register and number 2 into rbx reagister
	mov rax,[num1]
	sub rax,'0'
	mov rbx,[num2]
	sub rbx,'0'

	add rax,rbx
	add rax,'0'
	mov [result],eax

	;print the result
	mov rax,4
	mov rbx,1
	mov rcx,result
	mov rdx,len3
	syscall

	;exit 
	mov rax,0x60
	mov rbx,0
	syscall
