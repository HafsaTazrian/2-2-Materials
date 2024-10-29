
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;2.Suppose you have a string "kuet cse batch eighteen". Now
;count the vowel and store it into a memory location.
  
.data

str db 'kuet cse batch eighteen'
len equ ($-str)
count db 0h
ref db 'AEIOUaeiou'
lenr equ ($-ref)


.code  
mov cx, len


lea si, str
loop1:
    push cx
    lea di, ref
    mov cx, lenr
    loop2:
        mov al, [si]
        mov bl, [di]
        cmp al, bl
        je find
        inc di
        loop loop2
    back:
    inc si
    pop cx
loop loop1
ret    
    
        
        
        
        
        
        
find:
    inc count
    jmp back        
     
 
  
ret




