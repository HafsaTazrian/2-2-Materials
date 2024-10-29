
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
arr db 1h, 5h, 3h, 4h, 5h, 3h, 4h, 1h
len equ ($-arr)
res db len dup(0)
cnt db ?


.code
lea bx, res
lea si, arr
mov cx, len


outer:
push cx
lea di, arr
mov cx, len
mov al, [si]
mov cnt, 0h
    inner:
    mov ah, [di]
    cmp al, ah
    je count
    back:
    inc di
    loop inner
cmp cnt, 01
je find
back2:    
pop cx
inc si
loop outer
ret




count:
inc cnt
jmp back

find:
mov [bx], al
inc bx
jmp back2    
    







