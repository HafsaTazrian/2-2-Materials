
org 100h

mov si,offset string1
mov di,offset string2
mov cx,len
cld
rep movsb
ret
string1 db 'abc'
len equ ($-string1)
string2 db 3 dup(0)

ret




