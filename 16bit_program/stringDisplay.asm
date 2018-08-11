.MODEL SMALL
.STACK 0x100
.DATA
    msg1 db 'Wello wordl! $'
    msg2 db 'Hello assembly $'
    
.CODE

MAIN PROC
    mov ax,@DATA
    mov ds,ax
    
    ;message 1 print
    lea dx,msg1     ;load effective address
    mov ah,9
    int 0x21
    ;new line
    mov ah,2
    mov dl,0x0d
    int 0x21
    mov dl,0xa
    int 0x21
    ;message 2 print
    lea dx,msg2
    mov ah,9
    int 0x21
    ;exit
    mov ah,0x4c
    int 0x21
    MAIN ENDP
END MAIN
        
