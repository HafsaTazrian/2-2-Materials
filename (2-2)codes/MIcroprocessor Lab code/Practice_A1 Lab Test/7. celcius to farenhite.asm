
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  
     
; F = (9C + 160)/ 5

mov al, 39d
mov bl, 9d
mul bl
add al, 160d
mov bl, 5d
div bl

ret




