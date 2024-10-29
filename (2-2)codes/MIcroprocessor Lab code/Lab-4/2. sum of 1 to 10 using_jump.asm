
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx, 0ah
mov ax, 01h
mov dx, 00h

X:
add dx, ax
inc ax
dec cx
cmp cx, 00h
jne X
ret




