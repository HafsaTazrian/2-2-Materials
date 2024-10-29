
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;lab 01
;Add and Sub instruction



;add/sub numbers   
;
;format: add/sub destination, source
;source: intermidate number, register, memory location
;dest. : register, memory location
;**note**: source and destination can't be both memory location at a time
;**note**: source and destination must be in same type (byte type or word type)
;for example, 
;           add/sub al, bl (valid)
;           add/sub ax, bx (valid)
;           add/sub al, bx (invalid)  
;**note**: If we want to add a byte to word then we first copy the byte 
;          to a word location and fill the upper byte of word with zero(0) 


mov ax, 15h
mov bx, 16h
add ax, bx
sub ax, bx

;but,
;   mov ax, 15h
;   mov bl, 16h
;   add ax, bl
;   sub ax, bl
;this is wrong 


ret