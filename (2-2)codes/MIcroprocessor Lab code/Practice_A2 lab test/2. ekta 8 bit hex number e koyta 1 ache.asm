
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


mov bx, 0h
mov al, 12h
mov ah, 12h
mov cl, 0fh
mov ch, 0f0h

and al, cl
and ah, ch
ror ah, 04h

cmp al,01h
je incr1
x:
cmp ah,01h
je incr2


incr1:
inc bx
jmp x

incr2:
inc bx
ret


