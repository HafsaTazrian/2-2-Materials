
org 100h
lea si, string1
lea di, string2
mov ah,len1
mov bh,len2
cmp ah,bh
jne below
mov cx,len1
loop1:
    mov al,[si]
    mov bl,[di]
    cld
    repe cmpsb
    jne below
mov result,'y'
jmp endl    
    
below:
      mov result,'n'
endl:
    ret


string1 db 'kuet cse'
len1 equ ($-string1)
string2 db 'kust cse'
len2 equ ($-string2)
result db dup(0) 

ret




