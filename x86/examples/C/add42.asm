; global keyword is used to make add42 accessible to the linker
; else the function will be private to the file

global add42

add42:
    push ebp
    mov ebp, esp
    
    mov eax, [esp + 8]
    add eax, 42

    mov esp, ebp
    pop ebp
    ret
