
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;ekta string ulta kore one interval e print korte hbe
 

.data
str db 'rifatarefin' 
len equ ($-str)
res db len dup(0)


.code 
lea si, str
lea di, res

add si, len
dec si

mov ax, len
mov bx, 02h
div bx
mov cx, ax
cmp dx, 01h
je increment 
outer:
mov al, [si]
mov [di], al
dec si
dec si
inc di
loop outer
 
ret

increment:
inc cx
jmp outer




