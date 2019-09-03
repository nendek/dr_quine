global _main
extern _printf
;comment1

section .text

_func:
xor rax, rax
ret

_main:
;comment2
push rbp
mov rbp, rsp
call _func
mov rcx, 34
mov rdx, 10
lea rsi, [rel s.str]
lea rdi, [rel s.str]
call _printf
mov rsp, rbp
pop rbp
ret

section .data
s:
.str db ""

