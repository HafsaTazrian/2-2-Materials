
org 100h
lea si,input
mov ax,0001h
mov bx,si

outer_loop:
            cmp ax,len
            je endl
            mov cx,len
            sub cx,ax
            inner_loop:
            
                      mov dl,[si]
                      cmp dl,[si+1]
                      jb not_sort
                      sort:
                            mov dh,[si+1]
                            mov [si+1],dl
                            mov [si],dh
                      not_sort:
                            inc si;
                            loop inner_loop
            inc ax
            mov si,bx 
            jmp outer_loop
                            
            
endl:
    
    
lea si,input
mov cx,len
looping:
        

input db 01h,08h,00h,07h,00h,07h,07h
len equ ($-input)

ret




