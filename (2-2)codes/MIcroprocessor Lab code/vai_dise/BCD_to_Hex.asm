
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


mov dx, 4563h

mov ax, dx 
and ax, 000Fh
mov bl, 01h
mul bl
mov cx, ax 


mov ax, dx 
and ax, 00f0h
ror ax, 04h 
mov bl, 0Ah
mul bl
add cx, ax 


mov ax, dx
and ax, 0f00h
ror ax, 08h
mov bl, 64h 
mul bl
add cx, ax 


mov ax, dx
and ax, 0f000h
ror ax, 0Ch
mov bx, 03E8h 
mul bx
add cx, ax 



ret




