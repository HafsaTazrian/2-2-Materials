
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h
mov ax, 0013h
mov dx, ax
mov bl,02h
mov cx,ax
dec cx
dec cx

for: 

    div bl
    cmp ah,00h
    je z
    
    inc bl
    mov ax,dx
    loop for
    ret
    
    z:
    mov var, 'n'
    ret

 
 
ret
var db 'y'