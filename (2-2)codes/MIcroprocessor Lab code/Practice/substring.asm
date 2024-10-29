
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
;babababababcab

;abc
 
 
 
.data 

str db 'bac'
len equ ($-str)

substr db 'abc'
len1 equ ($-substr)


flag db 0h
ans db ?


.code

mov si, offset str
mov cx, len
sub cx, len1
add cx, 01h 

loop1:
    push si
    push cx
    lea di, substr
    mov cx, len1
    loop2:
        mov al, [si]
        mov bl, [di]
        cmp al, bl
        jne back
        inc si
        inc di
    loop loop2
    jmp found    

            



back:
    pop cx
    pop si  
    inc si
    loop loop1

ret

found: 
    pop cx
    pop si 
    mov flag, 01h
    ret

 
ret




