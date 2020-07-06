; Function Calls using Base pointer ( ebp )
; Nested calls would lead to errors 

global _start

_start:
    call func           ; func()
    mov eax, 1          ; sys_exit with exit status 0
    mov ebx, 0
    int 0x80

func:
    mov ebp, esp                ; transferring current stack top to ebp
    
    sub esp, 3                  ; allocating 3 bytes on stack
    mov [esp], byte 'H'
    mov [esp + 1], byte 'y'
    mov [esp + 2], byte 0x0a

    mov eax, 4                  ; print system call
    mov ebx, 1              
    mov ecx, esp
    mov edx, 3
    int 0x80
 
    mov esp, ebp                ; effectively deallocating the stack frame
                                ; thus returning to the original state when function was called 
    ret 
