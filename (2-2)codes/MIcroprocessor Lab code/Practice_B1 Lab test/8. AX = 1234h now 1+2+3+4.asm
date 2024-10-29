
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data


sum dw 0h


.code

mov ax, 1234h

push ax
mov bx, 0fh
and ax, bx
add sum, ax
pop ax

push ax
mov bx, 0f0h
and ax, bx
ror ax, 04h
add sum, ax
pop ax

push ax
mov bx, 0f00h
and ax, bx 
ror ax, 08h
add sum, ax
pop ax


push ax
mov bx, 0f000h
and ax, bx
ror ax, 0ch
add sum, ax
pop ax








ret




