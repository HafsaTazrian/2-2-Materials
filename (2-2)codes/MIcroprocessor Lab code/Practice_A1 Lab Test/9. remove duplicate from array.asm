
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
arr db 1h, 5h, 4h, 3h, 1h, 4h
len equ ($-arr)
res db len dup(0)
lenr dw 00h


.code

mov cx, len
mov si, offset arr
mov di, offset res
mov al, [si]
mov [di], al
inc lenr
dec cx
inc si

outer:
mov al, [si]
push cx
lea di, res
mov cx, lenr
inner:
    mov ah, [di]
    cmp al, ah
    je backtoouter
    inc di
    loop inner
    mov [di], al
    inc lenr

backtoouter:
inc si
pop cx
loop outer    


ret




