global _start

_start:
    mov eax, 1      ; system call code ( here system exit call )
    mov ebx, 42     ; ebx = 42
    sub ebx, 2      ; ebx = ebx - 2
    int 0x80        ; calling interrupt handler for system calls



; Arithmetic instructions
; operation operands, ...

; mov eax, 100      eax = 100
; mov eax, ebx      eax = ebx
; add ebx, ecx      ebx += ecx
; add ebx, 2        ebx += 2
; sub ebx, edx      ebx -= ecx
; sub ebx, 2        ebx -= 2
; 
; mul ebx           eax *= ebx
; div ebx           eax /= ebx
