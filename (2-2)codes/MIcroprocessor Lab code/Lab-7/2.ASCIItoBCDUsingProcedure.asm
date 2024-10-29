
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
 
call ASCIItoBCD
ret

ASCIItoBCD proc near
    pushf
    mov al, '5'
    mov ah, '9'
    
    and al, 0fh
    and ah, 0fh
    
    rol al, 04h
    
    or al, ah
    popf
    ret
ASCIItoBCD endp
    



