
org 100h
mov si,offset string1
mov di,offset string2
mov cx,len
add di,len
sub di,01h
level:
    mov al,[si]
    mov [di],al
    inc si
    dec di
    loop level
ret
string1 db 01h,02h,03h
len equ ($-string1)
string2 db 4 dup (0)






