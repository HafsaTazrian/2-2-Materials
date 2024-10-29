

org 100h

mov si, last  
lea dx, str1
dec si 

lea di, str2 


x:  
   
   mov ax, [si] 
   mov [di], ax 
   inc di 
   dec si
   dec si
   


    
   cmp dx, si 
   jg z 
   jmp x


z: ret


str1 db 'abcde'   
last dw $
str2 db 5 dup(?)


