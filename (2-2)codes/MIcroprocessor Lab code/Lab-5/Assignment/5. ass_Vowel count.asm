
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
       
.data
str db 'amar'
n equ ($ - str)

vow db 'aeiou'
m equ ($ - vow)
    
    
vowels db 0h
   
.code 

mov cx, n
lea si, str

loop1: 
    mov dx, m
    lea di, vow       
    loop2:  
        mov al,[si]
        mov bl, [di]
        cmp al, bl
        je inc_vowel
        inc di    
        dec dx
        cmp dx, 0h
        jne loop2
    inc si
loop loop1
ret





inc_vowel:
inc vowels
inc si
loop loop1