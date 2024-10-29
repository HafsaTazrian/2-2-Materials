org 100h



 
mov bx, 0000h

for1:
     
        lea di, str2
        lea si, str1
        mov cx, len2

        for2:
             mov ah, [di]
             cmp ah, [si+bx] 
             jne y
             
             inc si
             inc di
        
        
        
        
        loop for2
        
        
        mov var, 'y' 
        jmp z:
    

   y:
    
    inc bx
    cmp bx,len1
    je z

    jmp for1


z: ret


str1 db 'kuet cse' 
len1 equ ($-str1)

str2 db 'uet'
len2 equ ($-str2) .
var db 'n'