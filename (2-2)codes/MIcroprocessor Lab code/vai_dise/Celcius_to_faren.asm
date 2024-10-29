
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h



mov ax, cel

mov bx, 0009h 

mul bx
mov bx, 0005h 

div bx

add ax, 0020h


ret




cel dw 0034h 
