
org 100h
mov al,num1
call bcd_Binaray
jmp exit
bcd_Binaray proc near:
    pushf
    push bx
    push cx
    push dx
    
   
    mov dl,0ah    ;10
   
    
    
    div dl
    mov bl,ah
    rol al,04h
    or al,bl
    
    
    
    
    
    
    
    
    
    
    
    
    pop dx
    pop cx
    pop bx
    popf
    bcd_Binaray endp





exit:
ret

num1 db 40h


ret




