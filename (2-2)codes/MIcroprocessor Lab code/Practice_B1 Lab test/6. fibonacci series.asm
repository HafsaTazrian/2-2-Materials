
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data

arr db 10 dup(0)
len db 0h


.code

mov al, 0h
mov ah, 1h
lea si, arr
mov [si], al
inc si
mov [si], ah
inc si


mov cx, 05h
loop1:
    mov bh, ah
    add bh, al
    mov [si], bh
    mov al, ah
    mov ah, bh
    inc si
    
    loop loop1









ret




