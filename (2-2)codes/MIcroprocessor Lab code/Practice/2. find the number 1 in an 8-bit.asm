
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
mov ax, 1212h


call find
ret


find proc near
    mov cx, 04h
    lab:
        mov bx, 10h
        div bx
        cmp dx, 01h
        je incr
        lab2:
        mov dx, 0h
        loop lab
ret
find endp
        
               
        
incr:
    inc res
    jmp lab2             



res db 0h


