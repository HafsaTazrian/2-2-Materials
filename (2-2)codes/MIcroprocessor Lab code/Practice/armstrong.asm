
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here   

.data   

res dw 10 dup(0)
ten dw 10d
rem dw ?
temp dw ?
sum dw ?

.code

mov cx, 365d
mov si, offset res

loop1: 
    push cx
    jmp label
    back: 
    cmp cx, 375
    je return
    loop loop1 
    inc cx
    jmp loop1   
ret

label:  
mov sum, 0h 
mov temp, cx 
mov cx, 3h
    loop2:
        mov ax, temp
        div ten
        mov temp, ax
        mov ax, dx
        mov rem, dx
        mul rem
        mul rem
        add sum, ax
    loop loop2
    pop cx
    cmp cx, sum
    je incre
    jmp back
  
        
        

incre:
    mov [si], cx 
    inc si
    inc si
    jmp back
return:

ret




