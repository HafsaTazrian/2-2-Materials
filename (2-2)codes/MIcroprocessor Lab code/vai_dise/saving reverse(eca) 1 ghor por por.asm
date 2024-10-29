
org 100h 
lea si,input
lea di,output
mov cx,len1
add di,len1
sub di,01h
looping:
        mov al,[si]
        mov [di],al
        inc si
        inc si
        dec di
        loop looping


input db 'abcde'
len equ ($-input)
len1 equ (len/2)+1
output db 6 dup (0)

ret




