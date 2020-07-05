global _start

_start:
    mov ebx, 0      ; exit status
    mov eax, 1      ; sys_exit system call
    jmp skip        ; unconditional jump to 'skip' label
    mov ebx, 1      
    
skip:
    int 0x80        ; perform system call

; use echo $? to view return status
; if jump occured return status will be 0 else 1
