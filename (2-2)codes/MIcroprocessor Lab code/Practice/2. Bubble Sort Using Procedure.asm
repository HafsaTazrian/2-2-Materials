
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
.data 
arr db 07h, 06h, 01h, 09h, 03h
len equ ($-arr)
temp db ?


.code
mov cx, len
dec cx
cmp cx, 0h
je return  

call BubbleSort

ret



BubbleSort proc near
    loop1:
    lea si, arr
    push cx
    loop2:
        mov di, si
        inc di
        mov al, [si]
        mov ah, [di]
        cmp al, ah
        ja swap
        backtoloop:
            inc si
            inc di
        loop loop2
        pop cx
loop loop1
ret
BubbleSort endp
           

return:
     ret
swap:
    mov temp, al
    mov al, ah
    mov ah, temp
    mov [si], al
    mov [di], ah
    jmp backtoloop



