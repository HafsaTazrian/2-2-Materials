org 100h

.data
a db 11
b db 11
gcd db ?

.code
mov ah, 0h
mov al, a
mov bl, b

calculate:
    div bl
    cmp ah, 0h
    je found
    mov al, bl
    mov bl, ah
    mov ah, 0h
    jmp calculate

found:
    mov gcd, bl
ret