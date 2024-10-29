
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;1.Write an assemly program to find the number 1 in an 8-bit
;hexadecimal number. 

.data 
res db 0h 

.code
mov bl, 11h

call findone
ret


findone proc near
    mov cx, 02h
    loop1:
        mov al, bl
        mov bh, 10h
        div bh
        cmp ah, 01h
        je find
        back:
        mov bl, al
        mov ah, 0h
        loop loop1
    ret
findone endp
        
        
    
 

find:
    inc res
    jmp back


