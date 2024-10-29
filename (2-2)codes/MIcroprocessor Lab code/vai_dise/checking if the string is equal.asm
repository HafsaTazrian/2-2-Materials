
org 100h

lea si,str1
lea di,str2
mov cx,len1
cmp cx,len2
jne endl
cld
repe cmpsb
jne endl
mov result,'Y'
jmp below




endl:
    mov result,'N'
below:
    ret


str1 db 'kuet'
len1 equ ($-str1)
str2 db 'kuel'
len2 equ ($-str2)
result db 1 dup (0)





