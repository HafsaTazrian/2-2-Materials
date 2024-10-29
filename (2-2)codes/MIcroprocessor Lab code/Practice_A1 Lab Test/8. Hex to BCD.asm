
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

mov bl, 0afh
mov al, 01h

l1:
add al, 01h
daa
cmp al, 00h
je increase
back:
dec bx
jnz l1
sub al, 01h

ret
increase:
    inc ah
    jmp back
    