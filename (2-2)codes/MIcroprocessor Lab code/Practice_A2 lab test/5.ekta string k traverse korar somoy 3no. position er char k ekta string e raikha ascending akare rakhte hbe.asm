
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data

str db 'abcabcabcabcabc'
len equ ($-str)
three dw 3h 
res db len dup(0)
len1 dw 0h
temp db ?



.code
mov ax, len
div three
mov cx, ax

back:
mov si, offset str
add si, len
dec si
dec si
dec si
mov di, offset res

lup:
mov al, [si]
mov [di], al
inc len1
dec si
dec si
dec si
inc di
loop lup


mov cx, len1
dec cx

outer:
push cx
lea si, res

inner:
mov di, si
inc di
mov al, [si]
mov ah, [di]
cmp al, ah
ja swap
back1:
inc si
loop inner

pop cx
loop outer








ret

swap:
mov temp, al
mov al, ah
mov ah, temp
mov [si], al
mov [di], ah
jmp back1       

