;
;Accept a string from keyboard and display the string in reverse order 
;
;-----------------------------+
;@author  : dev-frog          |
;@company : FrogHunter        |
;-----------------------------+    

.MODEL SMALL
.STACK 0x50
.DATA
    msg_1 db "Enter a Staring : $"
    msg_2 db "Reverse order of you string : $"

.CODE
MAIN PROC
    mov ax,@DATA
    mov ds,ax
    
    lea dx,msg_1 
    mov ah,9
    int 0x21
    
    mov cl,00
    mov ah,1
    
    read:
        int 0x21
        mov bl,al
        push bx
        inc cx
        cmp al,0x0d
        jz display
        jmp read
   
    display:

        lea dx,msg_2
        mov ah,9
        int 0x21
        
        ;new line
        mov ah,2
        mov dl,0x0d
        int 0x21
        mov dl,0xa
        int 0x21
               
    answer:      
        mov ah,2
        pop bx
        mov dl,bl
        int 0x21
        loop answer
    
    ;exit
    mov ah,0x4c
    int 0x21
    MAIN ENDP
END MAIN
    
    
    
    
    
    
    