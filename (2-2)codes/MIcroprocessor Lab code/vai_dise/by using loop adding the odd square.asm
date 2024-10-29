
org 100h
mov si,offset input
mov cx,(len/2)+1
mov al,00h
mov bl,00h
looping:
        mov al,[si]
        mul [si]
        add bl,al
        inc si
        inc si
        loop looping
endl:
ret
input db 01h,02h,03h,04h,05h
len equ ($-input)






