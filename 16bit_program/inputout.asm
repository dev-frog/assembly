.MODEL SMALL
.STACK 0x100
.CODE 

MAIN PROC
    mov ah,1
    int 0x21
    mov bl,al 
    
    mov ah,2
    mov dl,0xa
    int 0x21
    mov dl,0x0d
    int 0x21
    
    mov ah,2
    mov dl,bl
    int 0x21
    
    ;exit
    mov ah,0x4c
    int 0x21
    
    MAIN ENDP
END MAIN
    