
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data 
arr db 'hy7hdsf9h88k'
len equ ($-arr)   
   
ref db '0123456789'
lenref equ ($-ref)   
   
num db len dup(0)  ; number
char db len dup(0)  ;  






.code
    
mov si, offset num
mov di, offset char
mov bx, offset arr 
mov cx, len 
  
loop1:    
    mov al, [bx]
    inc bx
    push bx 
    push cx  
    
    mov bx, offset ref
    mov cx, lenref
    loop2:            
        mov ah, [bx]
        cmp ah, al
        je addnumber
        inc bx
        loop loop2
        jmp addchar    
ret    




addnumber:
    mov [si], al
    inc si
    pop cx 
    pop bx
    loop loop1 
    
    
addchar:
    mov [di], al
    inc di  
    pop cx 
    pop bx
    loop loop1   




