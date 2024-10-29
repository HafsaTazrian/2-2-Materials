
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;DIV
;4 types of DIV can be performed.
;
;1. byte by byte
;2. word by word
;3. word by byte
;4. double word by word
;
;
;**Byte by Byte:
;
;Destiation: AL
;Quotient  : AL
;Reminder  : AH
;
;****code:
;mov al, 0fh
;mov bl, 0ffh
;div bl
;****  
;
;
;**Word by Word:
;
;Destiation: AX
;Quotient  : AX
;Reminder  : DX
;
;****code:
;mov ax, 0ffffh
;mov bx, 1234h
;div bx 
;****
;
;
;**Word by Byte:
;     
;Word / Byte
;Numerator  : AX (Word)
;Denominator: 8 bit register / memory address (Byte)
;Destiation : AX
;Quotient   : AL
;Reminder   : AH
;
;****code:
;mov ax, 1234h
;mov bl, 34h
;div bl 
;****
;
;
;**Double Word by Word:
;     
;Word / Byte
;Numerator  : DX-AX (Double Word)
;Denominator: 16 bit register / memory address (Word)
;Destiation : DX-AX
;Quotient   : AX
;Reminder   : DX
;
;****code:
;mov dx, 1234h
;mov ax, 5678h
;mov bx, 2222h
;div bx 
;****
; 
;*****Divided Error/ Overflow Error:*******  
;
;1. When Denominator is 0
;
;2. In case when (Byte by Byte) or (Word by Byte) is Qoutient is 
;   GREATER than FFh
;*****Example:*****
;mov ax, 0ffffh
;mov bl, 0ffh
;div bl (To overcome this we may take BX instead of BL)
;
;3. In case when (Word by Word) or (DoubleWord by Word) is Qoutient is 
;   GREATER than FFFFh
;*****Example:*****
;mov dx, 0ffffh
;mov ax, 1234h
;mov bx, 4534h
;div bx
;
ret