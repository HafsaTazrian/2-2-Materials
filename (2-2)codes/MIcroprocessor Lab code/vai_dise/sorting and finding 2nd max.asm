
org 100h
lea si,input
mov bx,0000h
mov ax,si
outer_loop:
          cmp bx,len
          je exit
          mov cx,len
          sub cx,bx
          inner_loop:
                    mov dl,[si]
                    cmp dl,[si+1]
                    ja swap
                    jmp not_swap
                    
                    
                    swap:
                        mov dh,[si+1]
                        mov [si+1],dl
                        mov [si],dh
                    not_swap:
                        inc si
                        loop inner_loop
          inc bx
          mov si,ax
          jmp outer_loop

exit:
;finding 2nd max
   
                       
   lea si,input
   lea di,len1
   mov ax,[di]
   mov cx,len
   mov bl,00h
   looping:
           cmp al,[si]
           je below
           cmp [si],bl
           jb below
           mov bl,[si]
           
           
           
           
           below:
                inc si
                loop looping
          
   



        
ret
input db 01h,08h,00h,07h,00h,07h,07h
len equ ($-input)
len1 equ ($-1)





