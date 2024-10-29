org 100h

.data
a db 1h, 3h, 4h, 1h, 2h, 4h
n equ ($-a)
b db n dup(0)
count db 0h

.code
mov cx, n
lea si, a
lea bx, b
outer:
    lea di, a
    push cx
    mov cx, n
    inner:
        mov al, [si]
        mov dl, [di]
        cmp al, dl
        je inc_count
        back_to_inner:
            inc di
            loop inner
            
     cmp count, 1h
     je unique_number
     back_to_outer:
        mov count, 0h
        pop cx
        inc si
        loop outer
        
ret

inc_count:
    inc count
    jmp back_to_inner
    
unique_number:
    mov [bx], al
    inc bx
    jmp back_to_outer      