
org 100h

mov ax,4h
cmp ax,80h
jb gradeA
mov dx,0a1h
jmp endl
       

gradeA:
        cmp  ax,75h
        jb gradeA_minus
         mov dx,0a2h
        jmp endl
       
gradeA_minus:
        cmp ax,70h
        jb gradeB_plus
        mov dx,0a3h
        jmp endl
       
gradeB_plus:
        cmp ax,65h
        jb gradeB
         mov dx,0b1h
        jmp endl
        
gradeB:
       cmp ax,60h
       jb gradeB_minus
       mov dx,0b2h
       jmp endl
gradeB_minus:
        cmp ax,55h
        jb gradeC_plus
        mov dx,0b3h
       jmp endl
gradeC_plus:
        cmp ax,50h
        jb gradeC
        mov dx,0c1h
       jmp endl
gradeC:
        cmp ax,45h
        jb gradeD
        mov dx,0c2h
       jmp endl
gradeD:
        cmp ax,40h
        jb gradeF
        mov dx,0dh
       jmp endl
gradeF:
        mov dx,0fh
        
        
endl:        

ret




