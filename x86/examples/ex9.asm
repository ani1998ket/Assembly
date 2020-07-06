; Function with arguments passed onto stack
; Use echo $? to view the result

global _start:

_start:
    push 21                 ; argument passed to times2
    call times2             ; call()
    mov ebx, eax            ; copying returned value from eax to ebx as exit status
    mov eax, 1              ; sys_exit
    int 0x80            

times2:
    push ebp                ; prologue
    mov ebp, esp
    
    mov eax, [ebp + 8]      ; ebp + 8 is start of address of arguments pushed onto stack
    add eax, eax            ; eax stores the return value of function( 2 * argument )
    
    mov esp, ebp            ; epilogue
    pop ebp
    ret


; Remember to pop off the arguments from the stack in the caller instruction
; Passing return value in the eax register is a convention to follow
