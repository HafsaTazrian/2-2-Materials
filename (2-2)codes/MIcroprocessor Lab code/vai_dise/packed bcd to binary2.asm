
org 100h
mov al,num
mov bl,al

mov al,'1'
mov bl,'2'
and al,0fh
and bl,0fh
rol al,04h
or al,bl

db num,0ch

ret




