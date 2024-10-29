
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
str db 'abcabac123'
len equ ($-str)

char db len dup(0)
len1 db 0h
num db len dup(0)

count db 0h


.code

lea di, num


lea si, str
lea di, char
mov al, [si]
mov [di], al
inc si
inc di
inc len1

mov cx, len
outer:
push cx
mov cx, 0000h
mov cl, len1
mov al, [si]
lea di, char
 
inner:
    mov ah, [di]
    cmp al, ah
    je found
    inc di
    loop inner 
    
mov [di], al
inc di
inc len1
back:
pop cx
inc si
loop outer





; find the frequency
lea si, char
lea bx, num

mov cx, 0000h
mov cl, len1


loop1: 
push cx
mov al, [si];.............char
mov count, 0h          
mov cx, len

lea di, str
loop2:
mov ah, [di];..............str
cmp al, ah
je countfind
back1:
inc di
loop loop2
     
pop cx     
mov al, count
mov [bx], al
inc si
inc bx
loop loop1

ret

countfind:
inc count
jmp back1    
    
found:
jmp back
    












