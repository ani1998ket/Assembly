global _start

_start:
    mov eax, 1      ; system call code ( here system exit call )
    mov ebx, 42     ; ebx = 42
    sub ebx, 2      ; ebx = ebx - 2
    int 0x80        ; calling interrupt handler for system calls

