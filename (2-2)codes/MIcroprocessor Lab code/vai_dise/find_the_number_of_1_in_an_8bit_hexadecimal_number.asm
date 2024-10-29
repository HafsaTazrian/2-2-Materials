org 100h


mov cl, 00h
 
mov bl, 01h 


mov al, bl 

and al, 0fh

cmp al, 01h 
jne x:

inc cl
 
x: 

mov al, bl 

and al, 0f0h

rol al, 04h 

cmp al, 01h 

jne z:

inc cl 

z: ret