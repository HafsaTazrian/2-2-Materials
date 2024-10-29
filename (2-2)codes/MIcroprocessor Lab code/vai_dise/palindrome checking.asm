
org 100h
lea si,string1
mov di,last
mov cx,len1

checking:
        mov dl,[si]
        cmp dl,[di]
        jne endl
        inc si
        dec di
        loop checking

mov result, 'Y'
jmp ending
        
        
        
        
endl:
    mov result, 'N'
    
ending:
       ret


string1 db 'madsam'
len equ ($-string1)
len1 equ (len/2+1)
last equ ($-1)
result db dup(0)

ret




