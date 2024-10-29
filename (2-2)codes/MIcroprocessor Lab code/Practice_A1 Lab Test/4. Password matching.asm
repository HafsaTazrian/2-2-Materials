
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
mov cx, len
mov si, offset str
mov di, offset var

cld
repe cmpsb       
jne x

mov ax, 0000h
jmp y
x: mov ax, 0001h
y: ret




str db 'ABC'
len equ ($-str)
var db 3 dup(0)





