; Implementing loop to calculate 2^6
; Check return status for result ( echo $? )

global _start

_start:
    mov ebx, 1      ; set initial value to 1
    mov ecx, 6      ; number of iterations

_loop:
    add ebx, ebx    ; ebx += ebx
    dec ecx         ; ecx--  ( use inc for ++ )
    cmp ecx, 0      ; compare ecx and 0
    jg _loop        ; jump to label ecx > 0

    jmp exit

exit:
    mov eax, 1
    int 0x80
