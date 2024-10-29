org 100h

.data

array db 8h, 1h, 3h, 5h, 6h
len equ ($ - a)
temp db 0h

.code

mov cx, len
dec cx

cmp cx, 0
je return

outerLoop:
    lea si, array
    push cx  
    innerLoop:
        mov di, si
        inc di
        mov al, [si]
        mov bl, [di]
        cmp al, bl
        ja swap
        BackToInner:
            inc si
            inc di
            loop innerLoop
    pop cx
    loop outerLoop
        
jmp return 
      
swap:
    mov temp, al
    mov al, bl
    mov bl, temp
    mov [si], al
    mov [di], bl
    jmp BackToInner
    
return:
    ret
