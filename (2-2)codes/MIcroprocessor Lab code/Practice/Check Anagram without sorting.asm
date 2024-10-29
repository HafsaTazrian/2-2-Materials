
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
              
              
org 100h      

.data
arr1 db 26 dup(0) 
arr2 db 26 dup(0)

str1 db 'aabb'
str2 db 'bxaa' 

res db ?

; add your code here
          
.code
lea si, arr1
lea di, str1

mov cx, 04h

lup:
    mov al, [di]
    sub al, 'a'
    add si, ax
    mov bl, [si]
    inc bl
    mov [si], bl
    lea si, arr1
    inc di
    loop lup
    

lea si, arr2
lea di, str2
mov cx, 04h

lup1:
    mov al, [di]
    sub al, 'a'
    add si, ax
    mov bl, [si]
    inc bl
    mov [si], bl
    lea si, arr2
    inc di
    loop lup1
    


lea si, arr1
lea di, arr2

mov cx, 26d
lup2:
    mov al, [si]
    mov ah, [di]
    cmp al, ah
    jne result
    inc si
    inc di
    loop lup2
    
mov res, 'y'
ret



result:
mov res, 'n'
ret
