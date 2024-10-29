org 100h

mov ah, 01h     
mov al, 08h
mov bh, 00h
mov bl, 07h
mov ch, 00h
mov cl, 07h
mov dh, 07h 
mov dl, 00h

cmp ah,00h
je second
cmp dl,ah  
jb first 

second: 
        cmp al,00h
        je fourth
        cmp dl,al  
        jb third     

fourth: 
        cmp bh,00h
        je sixth
        cmp dl,bh
        jb fifth
          

sixth:  
        cmp bl,00h
        je eighth
        cmp dl,bl  
        jb seventh  

eighth: 
        cmp ch,00h
        je tenth
        cmp dl,ch  
        jb ninth

tenth:  
        cmp cl,00h
        je twelveth
        cmp dl,cl  
        jb eleventh  

twelveth:
        cmp dh,00h
        je fourteenth
        cmp dl,dh  
        jb thirteenth 

jmp fourteenth 


   
   

first:
    mov dl, ah  
    jmp second  
      
 
third:
    mov dl, al  
    jmp fourth 

fifth:
    mov dl, bh  
    jmp sixth 

seventh:
    mov dl, bl  
    jmp eighth   
      
ninth:
    mov dl, ch  
    jmp tenth 

eleventh:
    mov dl, cl 
    jmp twelveth 

thirteenth:
    mov dl, dh 

fourteenth:



;Finding minimum value
mov ah, 01h     
mov al, 08h
mov bh, 00h
mov bl, 07h
mov ch, 00h
mov cl, 07h
mov dh, dl 

cmp ah,00h
je second1
cmp dh,ah  
jg first1 

second1:cmp al,00h
        je fourth1
        cmp dh,al  
        jg third1     

fourth1:
        cmp bh,00h
        je sixth1
        cmp dh,bh
        jg fifth1
          

sixth1: cmp bl,00h
        je  eighth1
        cmp dh,bl  
        jg seventh1  

eighth1:
        cmp ch,00h
        je tenth1
        cmp dh,ch  
        jg ninth1

tenth1: 
        cmp cl,00h
        je fourteenth1
        cmp dh,cl  
        jg eleventh1  

jmp fourteenth1 


   
   

first1:
    mov dh, ah  
    jmp second1  
      
 
third1:
    mov dh, al  
    jmp fourth1 

fifth1:
    mov dh, bh  
    jmp sixth1 

seventh1:
    mov dh, bl  
    jmp eighth1   
      
ninth1:
    mov dh, ch  
    jmp tenth1 

eleventh1:
    mov dh, cl

fourteenth1: 
    ret;