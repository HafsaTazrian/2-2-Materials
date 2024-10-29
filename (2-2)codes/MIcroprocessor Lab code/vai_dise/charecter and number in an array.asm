
org 100h
lea si,input
lea di,result1
mov cx,len
looping: 
        mov al,[si]
        cmp al,'0'
        je below
         cmp al,'1'
        je below
         cmp al,'2'
        je below
         cmp al,'3'
        je below
         cmp al,'4'
        je below
         cmp al,'5'
        je below
         cmp al,'6'
        je below
         cmp al,'7'
        je below
         cmp al,'8'
        je below
         cmp al,'9'
        je below
        mov [di],al
        inc si
        inc di
        loop looping 
        
        
        
        
        
        
        
        
below:
     
      inc si
      loop looping
      
 
lea si,input
lea di,result2
mov cx,len
looping1: 
        mov al,[si]
        cmp al,'0'
        je below1
         cmp al,'1'
        je below1
         cmp al,'2'
        je below1
         cmp al,'3'
        je below1
         cmp al,'4'
        je below1
         cmp al,'5'
        je below1
         cmp al,'6'
        je below1
         cmp al,'7'
        je below1
         cmp al,'8'
        je below1
         cmp al,'9'
        je below1
        inc si
       
        loop looping1 
        
        
        
        
        
        
        
        
below1:
     
      mov [di],al
      inc si
      inc di
      loop looping1     



input db 'k6h4u2ln9a7'
len equ ($-input)
result1 db len dup (0)
result2 db len dup (0)

ret




