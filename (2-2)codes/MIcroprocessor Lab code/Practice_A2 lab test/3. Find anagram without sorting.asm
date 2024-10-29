
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data 
str1 db 'abba'
len1 equ ($-str1)
str2 db 'bbaa'
len2 equ ($-str2)     
     
arr1 db 26 dup(0)
arr2 db 26 dup(0) 

res dw ?

.code

lea si, str1
mov cx, len1
mov ah, 0h  

lup1: 
lea di, arr1
mov al, [si]
sub al, 'a' 
add di, ax
mov bl, [di]
inc bl
mov [di], bl 
inc si
loop lup1  


mov cx, len2
lea si, str2
lup2:
lea di, arr2
mov al, [si]
sub al, 'a'
mov ah, 0h
mov bx, ax
add di, bx
mov bl, [di]
inc bl
mov [di], bl
inc si
loop lup2   


mov cx, 26d
lea si, arr1
lea di, arr2
lup3:
mov al, [si]
mov bl, [di]
cmp al, bl
jne notfound
inc si
inc di
loop lup3
mov res, 'y'
ret




notfound:
mov res, 'n'
ret
