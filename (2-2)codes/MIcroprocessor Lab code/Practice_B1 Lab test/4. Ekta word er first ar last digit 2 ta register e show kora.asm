
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data





.code
mov dx, 0abcdh
mov cx, dx

mov bx, 0000fh
and cx, bx


mov bx, 0f000h
and dx, bx
ror dx, 0ch


mov al, 0h
label1:
add al, 01h
daa
dec cx
cmp cx, 0h
jne label1
mov bl, al
    
    
    
mov al, 0h
label2:
add al, 01h
daa
dec dx
cmp dx, 0h
jne label2
mov bh, al





ret



