
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
             

mov ax, len
mov bx, 02h 
div bx
mov cx, ax  
   
   
lea si, str 
lea di, str
add di, len
dec di


lup:
mov bl, [si]
mov bh, [di]
cmp bl, bh
jne notEqual  
inc si
dec di
dec cx
cmp cx, 0h
jne lup

mov res, 'y'
ret


notEqual:
mov res, 'n'
ret

             
ret
str db 'amma' 
len equ ($-str)
res db ?


