;
;Input two number, compare them and display the smaller one and vice versa. 
;
;-----------------------------+
;@author  : dev-frog          |
;@company : FrogHunter        |
;-----------------------------+  
.MODEL SMALL
.STACK 0x100
.DATA
    msg_1 db "Enter the number [0...9] $"
    msg_2 db "Enter the A number : $"
    msg_3 db "Enter the B number : $"
    msg_4 db "The Smaller one : $"
    msg_5 db "The biger One : $"
    msg_6 db "The number is equal $"
   
.CODE

    MAIN PROC
        mov ax,@DATA
        mov ds,ax
        
        ;print 1 messsge
        lea dx,msg_1
        mov ah,9
        int 0x21
        
        ;new line
        mov ah,2
        mov dl,0x0d
        int 0x21
        mov dl,0xa
        int 0x21
        
        ;print 2 message
        lea dx,msg_2
        mov ah,9
        int 0x21
        
        ;input first number
        mov ah,1
        int 0x21
        mov bl,al
        
        ;new line
        mov ah,2
        mov dl,0x0d
        int 0x21         
        mov dl,0xa
        int 0x21
        
        ;print 3 message
        lea dx,msg_3
        mov ah,9
        int 0x21
        ;input second number
        mov ah,1
        int 0x21
        mov bh,al
        cmp bl,bh
        jb less
        ja big
equal:
    ;print 1 messsge
        lea dx,msg_6
        mov ah,9
        int 0x21
        jmp exit 
        
big:
    ;new line
    mov ah,2
    mov dl,0x0d
    int 0x21         
    mov dl,0xa
    int 0x21
    
    ;print 1 messsge
    lea dx,msg_5
    mov ah,9
    int 0x21 
    
    mov ah,2
    mov dl,bl
    int 0x21
    
    ;new line
    mov ah,2
    mov dl,0x0d
    int 0x21         
    mov dl,0xa
    int 0x21
    
    lea dx,msg_4
    mov ah,9
    int 0x21
    mov ah,2
    mov dl,bh
    int 0x21
    jmp exit
    
less:
     ;new line
    mov ah,2
    mov dl,0x0d
    int 0x21         
    mov dl,0xa
    int 0x21
    
    ;print 1 messsge
    lea dx,msg_5
    mov ah,9
    int 0x21 
    
    mov ah,2
    mov dl,bh
    int 0x21
    
    ;new line
    mov ah,2
    mov dl,0x0d
    int 0x21         
    mov dl,0xa
    int 0x21
    
    lea dx,msg_4
    mov ah,9
    int 0x21
    mov ah,2
    mov dl,bl
    int 0x21
    jmp exit 

exit:
    mov ah,0x4c
    int 0x21
    MAIN ENDP
END MAIN
    
    
    
    
    
    
    
    
      