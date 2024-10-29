
org 100h
lea si,string1
mov bx,0000h
mov cx,len
looping:
        mov dl,02h;
        mov al,[si]
        div dl
        cmp ah,0001h
        jne below
        
        
        
        count:
            inc bx
        below:
            inc si
            loop looping
ret;

string1 db 'abcdefg'
len equ ($-string1)


ret




