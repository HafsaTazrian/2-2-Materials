
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, '5'
mov bl, '9' 

and al, 0fh
and bl, 0fh 

rol al, 04h 

or al, bl            

ret




