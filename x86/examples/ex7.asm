; Function Calls
; Exit status must be 42

global _start

_start:
    call func       
    mov eax, 1
    int 0x80

func:
    mov ebx, 42
    ret            


; call is equivalent to
;
; push (eip + 4)
; jump func
; 
; Since eip can't be read or write through user level instruction we must use call 


; ret is equivalent to 
;
; pop eax
; jmp eax
;
; But this overwrites the eax register

; Since ret jumps to the address in the top of the stack pushing variables will lead to errors
