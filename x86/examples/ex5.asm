; Reading and writing data using pointer/address

global _start

section .data

    addr db "Yellow", 0x0a              ; char *addr = "Yellow" + "\n"

section .text

_start:
    mov [ addr ], byte 'H'               ; *(addr) = 'H'
    mov [ addr + 5 ], byte '!'           ; *(addr + 5) = '!'

    mov eax, 4      ; sys_write system call
    mov ebx, 1      ; stdout file descriptor
    mov ecx, addr    ; ecx stores the address to which msg pointed
    mov edx, 7      ; length to print
    int 0x80
    
exit:
    mov eax, 1
    mov ebx, 0
    int 0x80


; Common Data types

; section .data

; db ( define 1 byte )
; name1 db "string"
; name2 db 0xff
; name3 db 100

; dw ( define word[2 byte] )
; name4 dw 0x1234
; name5 dw 1000

; dd ( define double word[4 byte] ) 
; name6 dd 0x12345678
; name7 dd 100000
