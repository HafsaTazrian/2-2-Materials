org 100h

.data
a dw 50 dup(?)
sum dw 0h

.code
lea si, a
mov cx, 1

outer:
    mov ax, cx
    push cx
    mov cx, 3h
    inner:
        mov bl, 0Ah
        div bl
        push ax
        mov al, ah
        mov bl, ah
        mov ah, 0h
        mul bl
        mul bl
        add sum, ax
        back_to_inner:
            mov ax, 0h
            pop ax
            mov ah, 0h
            loop inner
     
     pop cx       
     cmp sum, cx
     je is_armstrong
     back_to_outer:
        inc cx
        mov sum, 0h
        cmp cx, 10
        je return
        jmp outer
    
ret
   
is_armstrong:
    mov dx, sum
    mov [si], dx
    inc si
    inc si
    jmp back_to_outer
         
return:
    ret