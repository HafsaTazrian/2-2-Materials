
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;find 2nd and 1st max number from array

.data

arr db 1h, 4h, 5h, 2h, 9h
len equ ($-arr)
max db ?
temp db ?



.code
lea si, arr
mov al, [si]
mov max, al
mov temp, 0h
mov cx, len
dec cx
inc si

outer:
mov al, [si]
cmp al, max
ja find
back:
inc si
loop outer
ret





find:
mov ah, max
mov temp, ah
mov max, al
jmp back




ret




