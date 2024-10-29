
org 100h

;finding minimum
mov si,offset roll
mov cx,len
mov al,[si]
minimum:
        cmp [si],00h
        je step_for_minimum
        cmp [si],al
        jae step_for_minimum
        mov al,[si]
        
        
step_for_minimum:
                inc si
                loop minimum 
                
                
;finding maximum
mov si,offset roll
mov cx,len
mov bl,[si]
maximum:
        cmp [si],00h
        je step_for_maximum
        cmp [si],bl
        jbe step_for_maximum
        mov bl,[si]       
       
step_for_maximum:
                inc si
                loop maximum
ret;
roll db 01h,08h,00h,07h,00h,07h,07h
len equ ($-roll)




