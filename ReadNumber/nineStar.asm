;this program displays 9 stars 

section .data
	msg db 'Displaying 9 stars ',0xa
	len equ $ - msg
	s2 times 9 db '*'

section .text
	global _start

_start:
	mov rax,4
	mov rbx,1
	mov rcx,mag
	mov rdx,len
	syscall  ; int 0x80

	mov rax,4
	mov rbx,1
	mov rcx,s1
	mov rdx,9
	syscall 

	;exit 
	mov rax,0x60
	mov rbx,0
	syscall

