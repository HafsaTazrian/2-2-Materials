org 100h

call ASCIItoBCD
ret

ASCIItoBCD proc near
    mov al, '5'
    mov bl, '9'
    and al, 0Fh
    and bl, 0Fh
    rol al, 04h
    or al, bl
    ;rol bl, 04h
    ;or al, bl
    ret
ASCIItoBCD endp


