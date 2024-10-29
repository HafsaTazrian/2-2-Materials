
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data

str db 'amazama'
len equ ($-str)
two dw 02h
res dw ?


.code

mov ax, len
div two
mov cx, ax
mov si, offset str
mov di, offset str
add di, len 
dec di
call function
ret



function proc near:

lup:
mov al, [si]
mov ah, [di]
cmp al, ah
jne notfound
inc si
dec di
loop lup

mov res, 'y'
back:
ret

notfound:
mov res, 'n'
jmp back

function endp



















ret




