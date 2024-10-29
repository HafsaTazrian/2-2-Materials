

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si, num
mov cx, len
mov bh, [si]  ; mx
mov bl, [si]  ; 2ndMx


for: 

    cmp bh, [si] 
      
    jg x 
    
  ;  max: 
    
    mov bh, [si]
        
    
      
          
     x: inc si
     
       loop for 
         
  
 

;-----  2nd MAX ------ 
lea si, num
mov cx, len

for1: 

    cmp bl, [si] 
    jg y 
    
    cmp [si], bh
    je y
    
    mov bl, [si]
    
    
    y: inc si 
    
       loop for1  

ret



num db 01h, 02h, 07h, 04h, 0Ah, 09h
len equ ($-num)


