section .data
    msg db "Result: ", 0
    newline db 10

section .bss
    result resb 2

section .text
    global _start

_start:
    ; Arithmetic Operations
    mov al, 5
    add al, 3
    sub al, 2

    ; Logical Operations
    or al, 1
    and al, 7
    xor al, 2

    ; Convert to ASCII
    add al, '0'
    mov [result], al

    ; Print message
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 8
    syscall

    ; Print result
    mov rax, 1
    mov rdi, 1
    mov rsi, result
    mov rdx, 1
    syscall

    ; Print newline
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall

    ; Exit
    mov rax, 60
    xor rdi, rdi
    syscall
