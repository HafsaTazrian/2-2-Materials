
org 100h

call ascii_bcd
jmp exit
ascii_bcd proc near:
    pushf
    push bx
    push cx
    push dx
    
    mov al,'5'
    mov bl,'9'
    and al,0fh  ;5
    and bl,0fh  ;9
    rol al,04h  ;50
    or al,bl    ;59
    
    
    mov cl,al
    and al,0fh ;9
    and bl,0f0h;50
    ror bl,04h
    rol al,04h
    or al,bl
    
    
    ;ret
    pop dx
    pop cx
    pop bx
    popf
   
    ascii_bcd endp





exit:
ret




