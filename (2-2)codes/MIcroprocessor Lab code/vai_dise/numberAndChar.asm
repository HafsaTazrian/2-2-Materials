org 100h


mov cx,len
lea si,string
lea di,char
lea bx,number


for:


cmp [si],'0'
je numberArray

cmp [si],'1'
je numberArray

cmp [si],'2'
je numberArray

cmp [si],'3'
je numberArray

cmp [si],'4'
je numberArray

cmp [si],'5'
je numberArray

cmp [si],'6'
je numberArray

cmp [si],'7'
je numberArray

cmp [si],'8'
je numberArray

cmp [si],'9'
je numberArray



 
mov dl, 00h
mov  dl, [si]
mov [di], dl
inc di
jmp y



numberArray:
 
mov dh,00h
mov dh, [si]
mov [bx], dh
inc bx
jmp y 

y:

  inc si 
  
  loop for

m:
ret





ret



string db 'k6u2ln12'

len equ ($-string)

char db len dup(?)

number db len dup(?)