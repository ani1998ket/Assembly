global _start

section .data
    msg db "Hello, World!", 0x0a    ; string msg = "Hello, World!" + "\n";
                                    ; db = define byte
                                    ; msg stores the address of the memory of text

    len equ $ - msg                 ; #define len end(msg) - begin(msg)
                                    ; equ = equate
                                    ; No memory required , stores in symbol table

                                    ; $  - current address
                                    ; $$ - address of start of current section

section .text
_start:
    mov eax, 4      ; sys_write system call
    mov ebx, 1      ; stdout file descriptor
    mov ecx, msg    ; bytes to write
    mov edx, len    ; number of bytes to write
    int 0x80        ; performs system call

    mov eax, 1      ; sys_exit system call
    mov ebx, 0      ; exit status set to 0
    int 0x80        ; performs system call
    
