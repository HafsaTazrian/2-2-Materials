
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; armstrong number 
    
    
.data
ten dw 10d    
rem dw ?    
sum dw 0h
res dw 10 dup(0)

.code  


mov cx, 500d
mov si, offset res

outer:  
mov sum, 0h
mov bx, cx
push cx
push bx
mov cx, 3h

    inner:    
    mov ax, bx
    div ten
    mov rem, dx
    mov bx, ax
    mov ax, rem
    mul rem
    mul rem
    add sum, ax
    loop inner
    
pop bx
pop cx
cmp sum, bx
je find
back:
loop outer

ret



find:
mov [si], bx
inc si
inc si
jmp back
 






ret




