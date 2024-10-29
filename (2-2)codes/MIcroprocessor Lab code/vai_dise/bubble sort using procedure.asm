
org 100h
lea si,input
mov ax,0001h
mov bx,si
call bubble_sort
jmp exit
bubble_sort proc near
    pushf
    push cx
    push dx
outer_loop:
           cmp ax,len
           je endl
           mov cx,len
           sub cx,ax
           inner_loop:
                     mov dh,[si]
                     cmp dh,[si+1]
                     ja swap
                     jmp below
                     
                     
                     swap:
                        mov dl,[si+1]
                        mov [si+1],dh 
                        mov [si],dl
                     below:
                           inc si
                           loop inner_loop
          inc ax
          mov si,bx
          jmp outer_loop   
           
           
           
           
endl:
    pop dx
    pop cx
    popf


bubble_sort endp 


exit:
ret




    

input db 'rakib Mahmud'
;output db 'car'
len equ ($-input) 








