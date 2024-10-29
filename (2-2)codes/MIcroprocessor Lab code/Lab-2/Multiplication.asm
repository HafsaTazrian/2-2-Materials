
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;MUL:

;syntex: mul source
;3 types of multiplication happens
;
;1. byte by byte
;2. word by word
;3. byte by word
;
;
;1. byte by byte:*********
;
;destination: al
;result     : ax
;****code:
mov al, 0ffh
mov bl, 0ffh
mul bl 
;;****


;2. word by word:*********
;
;destination: ax
;result     : dx-ax
;****code:
mov ax, 0ffffh
mov bx, 0ffffh
mul bx 
;****
        

;3. byte by word:*********
;
;destination: al/ah
;result     : dx-ax 
;**note**: Here the dest. register is 8-bit register and the other part (8-bit) of gp register
;          should be filled with zero(0). For instance, if we keep some value in AH then AL should
;          be zero(0) 
;****code1:
mov al, 0ffh   
mov ah, 0h
mov bx, 0ffffh
mul bx 
;****
;****code1:
mov ah, 0ffh
mov al, 0h
mov bx, 0ffffh
mul bx 
;****



ret




