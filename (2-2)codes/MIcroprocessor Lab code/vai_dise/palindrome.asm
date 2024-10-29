
org 100h
lea si,input
mov di,len1
mov cx,(len/2)+1
looping:
       mov al,[si]
       cmp al,[di]
       jne below
       inc si
       dec di
       loop looping
mov result ,'Y'
jmp endl 
below:
    mov result,'N'        
endl:
    ret
input db 'madem'
len equ ($-input)
len1 equ ($-1)
result db 1 dup (0)

ret




