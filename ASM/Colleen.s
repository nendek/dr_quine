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
.str db "global _main%2$cextern _printf%2$c;comment1%2$csection .text%2$c_func:%2$cxor rax, rax%2$cret%2$c_main:%2$c;comment2%2$cpush rbp%2$cmov rbp, rsp%2$ccall _func%2$cmov rcx, 34%2$cmov rdx, 10%2$clea rsi, [rel s.str]%2$clea rdi, [rel s.str]%2$ccall _printf%2$cmov rsp, rbp%2$cpop rbp%2$cret%2$csection .data%2$cs:%2$c.str db %3$c%1$s%3$c%2$c"
