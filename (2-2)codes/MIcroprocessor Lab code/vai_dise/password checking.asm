
org 100h
lea si,string1
lea di,string2
mov cx,len
cld
repe cmpsb
jne level
mov ax,0000h
jmp endl


level:
   mov ax,0001h;
   
endl:
ret

string1 db 'abc'
len equ ($-string1)
string2 db 3 dup(0)

ret




