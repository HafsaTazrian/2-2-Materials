
org 100h

mov dl,num
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
    mov result,'Y'
    jmp exit



Notprime:
    mov result,'N' 
    
exit:
    ret

num db 1Dh
result db 1 dup(0)


ret




