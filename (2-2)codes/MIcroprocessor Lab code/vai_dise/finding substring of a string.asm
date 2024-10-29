
org 100h
lea si,str1
lea di,substring
mov ax,si
mov bx,0000h


outer_loop:
         
          cmp bx,len
          je exit
          mov cx,len1
          inner_loop:
                    mov dl,[si+bx]
                    mov dh,[di]
                    cmp dl,dh
                    jne below
                    inc si
                    inc di
                    loop inner_loop
          mov result,'Y'
          jmp exit 
                    
          below:
            inc bx
            mov si,ax
            jmp outer_loop

        
          
exit:
    ret



str1 db 'kuet Cse'
len equ ($-str1)
substring db 'Cse'
len1 equ ($-substring)
result db 1 dup ('N')

ret




