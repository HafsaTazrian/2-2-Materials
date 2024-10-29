
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data

arr db 1h, 2h, 3h, 4h, 5h, 1h, 2h, 4h, 9h
len equ ($-arr)
ans db 10 dup(0)



.code
lea si, arr


mov cx, len
loop1:
    lea di, ans
    mov ax, 0000h
    mov al, [si]
    sub al, 01h
    add di,ax
    mov bl, [di]
    inc bl
    mov [di], bl
    inc si
    loop loop1
        









ret




