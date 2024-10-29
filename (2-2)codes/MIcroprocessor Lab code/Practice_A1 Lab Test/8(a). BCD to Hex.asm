
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 56h
mov bl, al
and bl, 00Fh ; bl = 06h
and al, 0F0h ; al = 50h
ror al, 04h  ; al = 05h
mov cl, 0Ah 
mul cl       ; al = 32h
add al, bl   ; al = 38h

ret



