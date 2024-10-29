
org 100h
lea si,string1
mov bx,len
mov cx,len
looping:
        cmp [si],'a'
        je count
        cmp [si],'e'
        je count
        cmp [si],'i'
        je count
        cmp [si],'o'
        je count
        cmp [si],'u'
        je count
        jmp below
        
        
        
        count:
              dec bx
        below:
              inc si
              loop looping

ret
string1 db 'aeou'
len equ ($-string1)

ret




