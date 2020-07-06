; Function call with nested call support

global _start

_start:
    call func
    mov eax, 1
    mov ebx, 0
    int 0x80

func:
    push ebp                    ; saving base pointer of the caller function
    mov ebp, esp                ; assigning new base pointer to ebp

    call print                  ; nested function call

    mov esp, ebp                ; deallocating the callee stack frame
    pop ebp                     ; resetting ebp to its original state when it entered callee
    ret                         ; esp contains the return address


print:
    push ebp                    ; PROLOGUE 
    mov ebp, esp                ; 

    sub esp, 3                  ; allocating 3 bytes on stack
    mov [esp], byte 'B'
    mov [esp + 1], byte 'y'
    mov [esp + 2], byte 0x0a

    mov eax, 4                  ; print system call
    mov ebx, 1              
    mov ecx, esp
    mov edx, 3
    int 0x80

    mov esp, ebp                ; EPILOGUE
    pop ebp                     ;
    ret                         ;


; Caller is the one which called the function
; Callee is the one which was called

; Prologue can be replaced with enter command
; Epilogue can be replaced with leave command
