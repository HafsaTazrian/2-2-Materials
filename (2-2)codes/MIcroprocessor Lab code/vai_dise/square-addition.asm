
org 100h

mov bx,0000h
mov cx,0001h
mov si,05h
addition:
        mov ax,cx
        mul ax
        add bx,ax
        inc cx
        dec si
        jnz addition
ret




