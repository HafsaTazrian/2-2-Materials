
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data

str db 'abcdefga'
len equ ($-str)



.code
mov cx, len
lea si, str
loop1:
    mov al, [si]
    sub al, 20h
    mov [si], al
    inc si
    loop loop1
    







ret




