
org 100h
lea si,string1
lea di,string2
mov cx,len
cld
repe movsb
ret

string1 db 'madam'
len equ ($-string1)
string2 db 5 dup (0)






