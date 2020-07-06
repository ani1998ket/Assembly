; Using the stack pointer( esp )
; stack moves from high address to low address
; for push ( sub esp, {byte_count} )
; for pop  ( add esp, {byte_count} )

global _start

_start:
    sub esp, 5                  ; esp -= 5
    mov [esp], byte 'H'         ; *esp = 'H'
    mov [esp + 1], byte 'e'     ; *(esp + 1) = 'e'
    mov [esp + 2], byte 'y'     ; *(esp + 2) = 'y'
    mov [esp + 3], byte '!'     ; *(esp + 3) = '!'
    mov [esp + 4], byte 0x0a    ; *(esp + 4) = '\n'
print:
    mov eax, 4
    mov ebx, 1
    mov ecx, esp        ; memory address to be printed from
    mov edx, 5
    int 0x80
exit:
    mov eax, 1
    mov ebx, 0
    int 0x80
