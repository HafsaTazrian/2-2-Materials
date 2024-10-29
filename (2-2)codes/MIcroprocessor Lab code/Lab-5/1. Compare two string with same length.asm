
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; compare two string with same length
                
lea si, str1
lea di, str2
mov cx, len1
cld ; increment si and di autometically 1
repe cmpsb   

jne Not_equal
mov res, 'y'  
ret

Not_equal:
mov res, 'n'
ret

  

str1 db 'Rifat Arefin' ;source string
str2 db 'Rifat Arefin' ;destination string
len1 equ ($-str1)
len1 equ ($-str2)
res dw ?


