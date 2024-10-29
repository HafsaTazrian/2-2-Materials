
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
  
  
;1807117

org 100h

mov bl, 01h
mov bh, 08h
mov cl, 00h
mov ch, 07h  
        
        

mov dh, 00h      
mov al, 0ah

;Find Smallest Number
c1:
mov ah, bl
cmp dh, ah
je c2 
cmp al, ah
jge w
   
c2:   
mov ah, bh 
cmp dh, ah
je c3
cmp al, ah
jge x

c3:
mov ah, cl 
cmp dh, ah
je c4
cmp al, ah
jge y 

c4:
mov ah, ch 
cmp dh, ah
je c5
cmp al, ah
jge z
  
c5:
mov dl, al






;Find Larger Number
mov al, 00h 

a1:
mov ah, bl 
cmp dh, ah
je a2
cmp al, ah
jbe p
   
a2:   
mov ah, bh
cmp dh, ah
je a3 
cmp al, ah
jbe q

a3:
mov ah, cl 
cmp dh, ah
je a4
cmp al, ah
jbe r 

a4:
mov ah, ch 
cmp dh, ah
je a5
cmp al, ah
jbe s
  
a5:
mov dh, al



;Find Average

add dl, dh
mov dh, 0h  
mov ax, dx
mov bl, 2h
div bl  
mov b
ret





w: mov al, ah 
jmp c2 

x: mov al, ah 
jmp c3   

y: mov al, ah 
jmp c4   

z: mov al, ah 
jmp c5




p: mov al, ah 
jmp a2 

q: mov al, ah 
jmp a3   

r: mov al, ah 
jmp a4   

s: mov al, ah 
jmp a5



















