
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
                
mov cx, len
lea si, str1
lea di, str2

cld
rep movsb                

                
ret
str1 db "rifat"
str2 db 5 dup(0)
len equ ($-str1)



