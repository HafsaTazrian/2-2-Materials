
org 100h
mov al,num1
call BCD_to_BIN
mov bl,02h
jmp endl
BCD_to_BIN proc near:
    
        pushf
        push bx
        push cx
        
        mov bl,al  ;56
        and bl,0fh ;6
        and al,0f0h;50
        ror al,04h ;05
        mov cl,0ah ;10
        mul cl     ;50
        add al,bl
        
          
        pop cx
        pop bx
        popf
        ret
        BCD_to_BIN endp
endl:
    ret
num1 db 64h





