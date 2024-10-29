
org 100h

mov al,0ah
mov ah,02h
mov bl,00h
mov bh,04h
mov cl,01h
mov ch,06h
mov dh,07h
mov dl,00h

;finding maximum value

cmp al,00h
je level2
cmp al,dl
ja level1
level2:
       cmp ah,00h
       je level4
       cmp ah,dl
       ja level3
level4: 
       cmp bl,00h
       je level6
       cmp bl,dl
       ja level5
       
level6: 
       cmp bh,00h
       je level8
       cmp bh,dl
       ja level7
       
level8: 
       cmp cl,00h
       je level10
       cmp cl,dl
       ja level9
level10: 
       cmp ch,00h
       je level12
       cmp ch,dl
       ja level11
level12: 
       cmp dh,00h
       je  endl
       cmp dh,dl
       ja level13
jmp endl







level1:
        mov dl,al
        jmp level2
level3:
        mov dl,ah
        jmp level4
level5:
        mov dl,bl
        jmp level6
level7:
        mov dl,bh
        jmp level8
level9:
        mov dl,cl
        jmp level8
level11:
        mov dl,ch
        jmp level10
level13:
        mov dl,dh        

endl: 

;finding minimum value

cmp al,00h
je Alevel2
cmp al,dl
jb Alevel1
Alevel2:
       cmp ah,00h
       je Alevel4
       cmp ah,dl
       jb Alevel3
Alevel4: 
       cmp bl,00h
       je Alevel6
       cmp bl,dl
       jb Alevel5
       
Alevel6: 
       cmp bh,00h
       je Alevel8
       cmp bh,dl
       jb Alevel7
          
Alevel8: 
       cmp cl,00h
       je Alevel10
       cmp cl,dl
       jb Alevel9
Alevel10: 
       cmp ch,00h
       je Alevel12
       cmp ch,dl
       jb Alevel11
Alevel12: 
       cmp dh,00h
       je  end
       cmp dh,dl
       jb Alevel13
jmp end







Alevel1:
        mov dl,al
        jmp Alevel2
Alevel3:
        mov dl,ah
        jmp Alevel4
Alevel5:
        mov dl,bl
        jmp Alevel6
Alevel7:
        mov dl,bh
        jmp Alevel8
Alevel9:
        mov dl,cl
        jmp Alevel8
Alevel11:
        mov dl,ch
        jmp Alevel10
Alevel13:
        mov dl,dh        

end:
    ret




