
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h         
mov bx, 0h
mov cx, 0h



mov al, 55d
            
                
mov bl, 80d
cmp al, bl
jge p
    
    
    
    
mov bl, 75d
cmp al, bl
jge q  

      
mov bl, 70d
cmp al, bl
jge r  
      
      

mov bl, 65d
cmp al, bl
jge s    



mov bl, 60d
cmp al, bl
jge t    



mov bl, 55d
cmp al, bl
jge u   



mov bl, 50d
cmp al, bl
jge v   
        
        
        
mov bl, 45d
cmp al, bl
jge w
         
         
mov bl, 40d
cmp al, bl
jge x
         
         


mov dl, 0fh
ret



p: 
mov dl, 0a1h
ret
 
q:    
mov dl, 0ah
ret

r:    
mov dl, 0a0h
ret

s:    
mov dl, 0b1h
ret

t:    
mov dl, 0bh
ret

u:    
mov dl, 0b0h
ret


v:    
mov dl, 0c1h
ret

w:    
mov dl, 0ch
ret

x:    
mov dl, 0dh
ret




ret




