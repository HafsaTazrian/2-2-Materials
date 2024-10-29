
org 100h

mov al,11h
mov cl,00h
mov bl,al
and al,0fh
cmp al,01h
jne step
inc cl


step:
    and bl,0f0h
    rol bl,04h
    cmp bl,01h
    jne exit
    inc cl
    
    
exit:
    ret


ret




