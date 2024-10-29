
org 100h
lea si,roll
mov ax,0001h
mov bx,si
outer_loop:
           cmp ax,len
           je last
           mov cx,len
           sub cx,ax
           inner_loop:
                     mov dl,[si]
                     cmp dl,[si+1]
                     jb non_swap
                     swap:
                        mov dh,[si+1]
                        mov [si+1],dl
                        mov [si],dh  
                     non_swap:
                              inc si
                              loop inner_loop
                      
          inc ax
          mov si,bx
          loop outer_loop 

last:
    ret           

roll db 01h,08h,00h,07h,00h,07h,07h
len equ ($-roll)






