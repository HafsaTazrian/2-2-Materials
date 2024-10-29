
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx, 0ah
mov si, 01h
mov bx, 00h

lup:
mov ax, si
mul ax
add bx, ax
inc si
loop lup
ret




