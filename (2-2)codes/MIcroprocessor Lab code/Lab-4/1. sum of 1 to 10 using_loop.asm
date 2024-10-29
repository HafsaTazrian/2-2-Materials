
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;program for 1+2+3+....+10 using loop= ?
mov cx, 0ah
mov dx, 00h
mov ax, 01h

lup:
add dx, ax
inc ax
loop lup
ret








