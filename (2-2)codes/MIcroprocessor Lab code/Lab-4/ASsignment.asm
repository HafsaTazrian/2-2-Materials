
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

mov si, offset input
mov cx, length  




mov bl, 0ah  ;for minimum, let bl = 0ah
mov bh, 00h  ;for maximum, let bh = 0h 
mov ah, 00h  ;Assigning ah = 00h

;loop
x:
mov al, [si]   
cmp al, ah
jne MinMax     
jmp Increase 
ret


MinMax:
cmp al, bl
jb  min
cmp al, bh
jg  max   
jmp Increase     
              
              
              

min: mov bl, al
max: mov bh, al
Increase:
inc si
loop x                       
                       
                       
                       
input db 01h, 08h, 00h, 07h
length dw ($-input)        





