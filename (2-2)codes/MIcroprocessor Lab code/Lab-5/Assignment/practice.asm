
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.data

array db 3h, 4h, 1h, 6h, 8h
len equ ($-array)
temp db ?

     
     
.code

mov cx, len 
dec cx
cmp cx, 0h
je return





outL:
lea si, array
push cx
    inL:
    mov al, [si]
    mov di, si 
    inc di
    mov bl, [di]
    cmp al, bl
    ja swap
    bToinL:
        inc si
        inc di
        loop inL
    pop cx
    loop outL
jmp return


 
 
 
 
swap:
mov temp, al
mov al, bl
mov bl,temp
mov [si], al
mov [di], bl
jmp bToinL
     
     
     
return:
ret


