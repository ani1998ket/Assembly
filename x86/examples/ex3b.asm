global _start

_start:
    mov ecx, 100    ; set ecx value
    mov ebx, 0      ; exit status
    mov eax, 1      ; sys_exit
    cmp ecx, 100    ; update flags
    jl skip         ; jump if cmp result was less than
    mov ebx, 1 

skip:
    int 0x80        ; perform system call

; use echo $? to view exit status
; if ecx is less than 100 return status 0 else 1

; cmp updates the flag register based on comparison

; More conditional commands
; je    ==
; jne   !=
; jl    <
; jle   <=
; jg    >
; jge   >=


