
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

.data

str db "kuet cse batch eighteen"
len equ ($-str)
cnt db 0h

ref db 'aeiouAEIOU'
lenref equ ($-ref)



.code

mov cx, len
mov si, offset str
loop1:
    
    loop2:
    







ret




