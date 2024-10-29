
org 100h 

lea si,num
lea di,result
mov cx,len
outer_loop:



mov dl,[si]
mov bl,02h
cmp dl,bl
jb Notprime
looping:
        cmp dl,02h
        je prime
        cmp dl,03h
        je prime
        cmp dl,bl
        je prime
        mov ah,00h
        mov al,dl
        div bl
        cmp ah,00h
        je Notprime
        inc bl
        jmp looping
        
        
        
        
        
        
prime:
    mov bh,[si]
    mov [di],bh
    inc si
    inc di
    loop outer_loop
    jmp exit


Notprime:
    inc si
    loop outer_loop 
    
exit:
    ret

num db 01h,03h,04h,06h,07h
len equ ($-num)
result db 5 dup(0)


ret




