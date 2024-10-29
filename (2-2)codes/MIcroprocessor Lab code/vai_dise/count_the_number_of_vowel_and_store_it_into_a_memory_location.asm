org 100h


mov cx, len 
 
lea si, string 
mov bx, 0000h

for: 
    
    cmp [si], 'a' 
    je count
    cmp [si], 'e'
    je count
    cmp [si], 'i'
    je count
    cmp [si], 'o'
    je count
    cmp [si], 'u'
    je count
    
    jmp x :
    count: inc bx 
   
    x: inc si
       loop for
    
 
    mov num, bx
 
z: ret



string db 'kuet cse batch eighteen'
len equ ($-string)
num dw ?
