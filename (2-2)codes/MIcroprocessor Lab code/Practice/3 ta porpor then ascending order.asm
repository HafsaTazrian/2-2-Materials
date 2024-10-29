
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h     

.data
str db 'kuttachodasadikhankima'
len equ (($-str))
res db len dup(0)
                               

.code
; add your code here                             ;k a k h d a h t k
lea si, str
add si, len
dec si

lea di, res

mov dx , (len%3)
mov cx, (len/3)
cmp dx, 0000h
jne incrs  

start:
mov bx, cx

lup:    
    mov al, [si]
    mov [di], al
    dec si
    dec si
    dec si
    inc di
    loop lup

mov cx, bx
dec cx


Loop1:
    lea si, res
    push cx
    Loop2:
        mov di, si
        inc di
        mov al, [si]
        mov bl, [di]
        cmp al, bl
        ja swap
        backToloop:
        inc si
        inc di
        loop Loop2
        pop cx
        loop Loop1    

ret

incrs:
inc cx
jmp start 


swap:  
mov [si], bl
mov [di], al
jmp backToloop 


