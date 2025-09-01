section .data
    hello db 'Hello, World!', 0    ; The string to print

section .text
    global main                    ; The entry point for the program
    extern printf                  ; External function declaration for printf

main:
    sub rsp, 28h                   ; Align the stack for printf
    lea rcx, [hello]               ; Load the address of the string into RCX (first argument to printf)
    call printf                    ; Call the printf function
    add rsp, 28h                   ; Clean up the stack
    ret                            ; Return from the function
