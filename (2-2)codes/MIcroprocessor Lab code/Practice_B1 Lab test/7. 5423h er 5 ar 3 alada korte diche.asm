
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data

; 5432h er jaygay 2435 h
ekok db ?
doshok db ?


.code
mov dx, 0ABCDh

; find ekok and doshok
mov bx, dx
push bx
mov ax, 000fh
and bx, ax
mov ekok, bl

pop bx    
mov ax, 0f000h
and bx, ax
rol bx, 04h
mov doshok, bl 

; rebuild dx
mov cx, 0fff0h
and dx, cx

mov cx, 0fffh
and dx, cx


mov bl, ekok
mov bh,doshok
mov cl, dl
add cl, bh
mov dl, cl

rol bl, 04h
add bl, dh
mov dh, bl









ret




