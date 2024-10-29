
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; find maximum and minimum

.data
arr db 11h, 22h, 50h, 90h, 20h
len equ ($-arr)
max db ?
min db ?


.code

mov cx, len
lea si, arr
mov al, [si]
mov max, al
mov min, al
dec cx
inc si
loop1:
    mov al, [si]
    cmp al, max
    ja maxfound
    x:
    cmp al, min
    jb minfound
    y:
    inc si
    loop loop1
    
ret    
maxfound:
mov max, al
jmp x

minfound:
mov min, al
jmp y




