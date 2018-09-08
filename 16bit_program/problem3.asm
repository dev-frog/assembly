;
;Display all alphabet characters. 
;
;-----------------------------+
;@author  : dev-frog          |
;@company : FrogHunter        |
;-----------------------------+    

.MODEL SMALL
.STACK 0x100
.DATA
    meg_1 db "THe Upper Case Letter from A to Z : $"
.CODE 

MAIN PROC
    mov ax,@DATA
    mov ds,ax
    
    lea dx,meg_1
    mov ah,9
    int 0x21
    
    mov cx,26
    mov ah,2
    mov dl,65
    
    @loop:
        int 0x21
        inc dl
        dec cx     
    jnz @loop
     
    ;exit 
    mov ah,0x4c
    int 0x21
    MAIN ENDP
END MAIN