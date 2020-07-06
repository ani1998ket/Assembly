; Exit status of the code should be 0

global _start

_start:
    push 1000
    push 32
    push 42
    push 0
    pop  ebx

exit:
    mov eax, 1
    int 0x80


; push 10 command is equivalent to subtracting 4 in esp and moving content
;   sub esp, 4
;   mov [esp], dword 10

; pop eax command is equivalent to moving content and adding 4
;   mov eax, dword [esp]
;   add esp, 4
