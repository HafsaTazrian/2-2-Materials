
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


;3.Suppose you have a string "hy7hdsf9h88k", now separete
;the character and number and store it in different 
;memory location. (done)


.data

str db 'hy7hdsf9h88k'
len equ ($-str)

ref db '1234567890'
lenf equ ($-ref)

num db len dup(0)
char db len dup(0)


.code

mov si, offset num
mov di, offset char

mov cx, len
lea bx, str
loop1:
mov al, [bx]
push cx
push bx
mov cx, lenf
lea bx, ref
    loop2:
    mov ah, [bx]
    cmp al, ah
    je numberfound 
    inc bx
    loop loop2
mov [di], al
inc di
back:
pop bx
pop cx
inc bx
loop loop1

ret    
   
    



numberfound:
mov [si], al
inc si
jmp back    

ret




