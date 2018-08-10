section .data
	msg db "Place Enter a Number: "
	dis db "You Enter : "

section .bss
	num resb 5

section .text
	global _start

_start:
	mov rax,4
	mov rbx,1
	mov rcx,msg
	mov rdx,23
	syscall

	;read and store the input

	mov rax,3
	mov rbx,0
	mov rcx,num
	mov rdx,5
	syscall

	;output the message

	mov rax,4
	mov rbx,1
	mov rcx,dis
	mov rdx,12
	syscall

	;output the number

	mov rax,4
	mov rbx,1
	mov rcx,num
	mov rdx,5
	syscall

	;exit

	mov rax,0x60
	mov rbx,0
	syscall
	
