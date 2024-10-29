
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.data

str db 'dgiys'
len equ ($-str)
ref db 'gi'
lenf equ ($-ref)

res dw ?


.code

lea bx, str
mov cx, len
loop1:
push cx
mov si, bx
lea di, ref 
mov cx, lenf

;loop2:
;mov al, [si]
;mov ah, [di]
;cmp al, ah
;jne back
;inc si
;inc di
;loop loop2
;jmp found


cld
repe cmpsb
je found


back:
pop cx
inc bx
loop loop1

mov res, 'n'
ret

found:
mov res, 'y'
pop cx    
ret




