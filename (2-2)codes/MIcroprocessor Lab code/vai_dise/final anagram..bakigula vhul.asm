
org 100h
lea si,string1

call bubble_sort
lea si,string2
call bubble_sort
lea si ,string1
lea di,string2
mov cx,len1
cld
repe cmpsb
jne endd
mov result, 'y'
jmp endd

bubble_sort proc near
    pushf
    push ax
    push bx
    push dx
    push cx
    mov ax,0001h
    mov bx,si
    outer_loop:
                cmp ax,len1
                je exit
                mov cx,len1
                sub cx,ax
                inner_loop:
                        mov dl,[si]
                        cmp dl,[si+1]
                        ja swap
                        jmp non_swap
                        
                        swap:
                            mov dh,[si+1]
                            mov [si+1],dl
                            mov [si],dh
                        non_swap:
                            inc si
                            loop inner_loop
                inc ax
                mov si,bx
                jmp outer_loop    
                          
               
    exit:
   
    pop cx
    pop dx
    pop bx
    pop ax
    popf
    ret
    bubble_sort endp
    
    
 endd:
      ret


string1 db 'asdc'

len1 equ ($-string1) 
string2 db 'casd'
len2 equ ($-input)
result db 1 dup ('n') 





