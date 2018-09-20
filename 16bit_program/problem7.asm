                ;
; Perform bubble sort 
;
;-----------------------------+
;@author  : dev-frog          |
;@company : FrogHunter        |
;-----------------------------+  

.MODEL SMALL
.STACK 0x100
.DATA
	N db 0x44,0x22,0x11,0x55,0x33
	len dw 5
.CODE 
MAIN PROC
	mov ax,@data
	mov ds,ax

	mov cx,len
	dec cx

outerloop:
	mov si,0
	mov dx,cx
innerloop:
	mov ah,N[si]
	mov al,N[si+1]
	cmp ah,al
	jc carry
	mov N[si],al
	mov N[si+1],ah
carry:
	inc si
	dec dx
	jnz innerloop
	loop outerloop
	
	;exit
	mov ah,0x4c
	int 0x21
	MAIN ENDP
END