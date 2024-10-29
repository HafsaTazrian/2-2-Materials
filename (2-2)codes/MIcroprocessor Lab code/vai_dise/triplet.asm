
org 100h
lea si,input
mov cx,len1
count:
       mov al,[si]
       sub al,'0'
       lea di,string1
       add di,ax
       inc [di]
       inc di
       inc si
       loop count
lea si,string1
lea di,ans
mov cx,0ah
mov bx,00h
looping:
        cmp [si],00h
        je level
        cmp [si],03h
        je level
        mov [di],bx
        dec [si]
        inc di
        cmp [si],00h
        je level
        loop looping
        
        level:
            inc si
            inc bx
            loop looping

ret
input db '12333224444'
len1 equ ($-input)
string1 db 10 dup (0)
ans db 10 dup (0)






