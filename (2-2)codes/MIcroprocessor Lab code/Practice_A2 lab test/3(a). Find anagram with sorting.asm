
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data 

str1 db 'mama'
len1 equ ($-str1)

str2 db 'axma'
len2 equ ($-str2) 

temp db ? 
res dw ?

.code

lea si, str1
mov cx, len1
dec cx
mov bx, si
call function1

lea si, str2
mov cx, len2
dec cx 
mov bx, si
call function1

mov si, offset str1
mov di, offset str2
mov cx, len1 
call function2
ret           

function1 proc near: 
    
    outerloop:
    mov si, bx
    push cx  
        innerlup:
        mov di, si
        inc di
        mov al, [si]
        mov ah, [di]
        cmp al, ah
        ja swap
        back:
        inc si
        loop innerlup
    pop cx
    loop outerloop
ret
function1 endp
                
swap:
mov temp, al
mov al, ah
mov ah, temp
mov [si], al
mov [di], ah
jmp back


function2 proc near:
    lup: 
    mov al, [si]
    mov ah, [di]
    cmp al,ah
    jne notfound
    inc si
    inc di
    loop lup
    mov res, 'y'
    ret
    
notfound:
mov res, 'n'
ret    
        
        
            





