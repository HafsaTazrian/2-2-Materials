
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;1(a).Write an assemly program to find the number 1 in an 16-bit
;hexadecimal number. 

.data 
res db 0h
ten dw 10h 

.code
mov bx, 1011h

call findone
ret


findone proc near
    mov cx, 04h
    loop1:
        mov ax, bx
        div ten
        cmp dx, 01h
        je find
        back:
        mov bx, ax
        mov dx, 0h
        loop loop1
    ret
findone endp
        
        
    
 

find:
    inc res
    jmp back


