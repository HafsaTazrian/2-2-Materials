org 100h 

mov cx,n
lea si,str

count:
     mov al,[si]
     sub al,'0'
     lea di,a
     add di,ax
     inc [di]
     inc si
     loop count

mov cx,10
lea si,a 
lea di,ans 
mov dx,0
insert:
    mov al,[si]
    cmp al,0h
    je back_to_insert
    cmp al,3
    jne put 
    back_to_insert:
        inc si
        inc dx
        loop insert
ret

 put:
    push cx 
    mov ah,0
    mov cx,ax
    inner:
        mov [di],dx
        inc di
        loop inner
    pop cx
    jmp back_to_insert



str db '12233344444'
n equ $-str
a db 10 dup(0)
ans db n dup(0)