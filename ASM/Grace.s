;comment
%define STRING ";comment%2$c%3$cdefine STRING %4$c%1$s%4$c%2$c%3$cdefine M _main%2$c%3$cmacro FUNC 0%2$cM:%2$cpush rbp%2$cmov rbp, rsp%2$cmov rsi, 0x601%2$clea rdi, [rel s.filename]%2$ccall _open%2$ccmp rax, 0%2$cjle end%2$cmov r12, rax%2$cmov r9, 34%2$cmov r8, 37%2$cmov rcx, 10%2$clea rdx, [rel s.string]%2$clea rsi, [rel s.string]%2$cmov rdi, r12%2$ccall _dprintf%2$ccall _close%2$cxor rax, rax%2$cend:%2$cmov rsp, rbp%2$cpop rbp%2$cret%2$c%3$cendmacro%2$cglobal _main%2$cextern _open%2$cextern _dprintf%2$cextern _close%2$csection .text%2$cFUNC%2$csection .data%2$cs:%2$c.filename db %4$cGrace_kid.s%4$c, 0%2$c.string db STRING, 0%2$c"
%define M _main
%macro FUNC 0
M:
push rbp
mov rbp, rsp
mov rsi, 0x601
lea rdi, [rel s.filename]
call _open
cmp rax, 0
jle end
mov r12, rax
mov r9, 34
mov r8, 37
mov rcx, 10
lea rdx, [rel s.string]
lea rsi, [rel s.string]
mov rdi, r12
call _dprintf
call _close
xor rax, rax
end:
mov rsp, rbp
pop rbp
ret
%endmacro
global _main
extern _open
extern _dprintf
extern _close
section .text
FUNC
section .data
s:
.filename db "Grace_kid.s", 0
.string db STRING, 0
