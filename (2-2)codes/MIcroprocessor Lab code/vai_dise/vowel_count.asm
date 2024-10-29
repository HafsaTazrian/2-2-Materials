
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h



lea si, str
mov cx, len
mov bx, 000h
L1:

   mov al, [si] 
   cmp al, 61h
   
   
   je count
   
   cmp al, 65h
   je count
   
   cmp al, 69h
   je count
   
   cmp al, 6Fh
   je count
   cmp al, 75h
   je count
   
   jmp below
   
   count: 
        inc bx


   below: 
         inc si
         loop L1





ret




str db 'aeiou'
len equ ($-str)