; Using code from the C language
; calling printf function 

; Use GCC as the linker instead of ld
; gcc -m32 ex10.o -o ex10

global main             ; _start has been already defined in c
extern printf           ; external symbol

section .data
    msg db "Testing %i ...", 0x0a, 0x00    ; char *msg = "Testing %i ..." "\n" "\0"
                                           ; null terminator is needed by printf to know the end of string
    
main:
    push ebp
    mov ebp, esp

    push 123
    push msg
    call printf                             ; printf( msg, 123 )
    
    mov eax, 0                              ; return value 0 
    mov esp, ebp
    pop ebp
    ret                                     ; return 0
    
