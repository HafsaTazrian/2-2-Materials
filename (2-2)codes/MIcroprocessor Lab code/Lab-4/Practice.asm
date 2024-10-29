
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
mov cx, len
lea si, roll

mov bl, 0ah; initializing minimum digit
mov bh, 00h; initializing maximum digit 
mov ah, 00h; zero


lup:
mov al, [si]     
cmp al, ah
je Next
X: 
cmp al, bl
jb Min
Y:
cmp al, bh
jg Max
               
jmp Next




Min:
mov bl, al
jmp Y
Max:
mov bh, al       
jmp Next 
 
Next:
inc si
loop lup
ret 
       
roll db 01h, 08h, 0h, 07h, 01h, 01h, 07h
len equ ($-roll)




