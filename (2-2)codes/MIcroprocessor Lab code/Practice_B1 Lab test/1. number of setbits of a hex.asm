
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;setbits


.data
cnt db 0h




.code
mov al, 1fh
mov bl, 01h 

mov cx, 08h
lup:
mov ah, al
and ah, bl
cmp ah, 01h
je found
back:
shr al, 01h
loop lup
ret








found:
inc cnt
jmp back









ret




