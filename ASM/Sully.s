global _main
extern _open
extern _close
extern _asprintf
extern _dprintf
extern _free
extern _system
section .text
_main:
push rbp
mov rbp, rsp
and rsp, 0xFFFFFFFFFFFFFFF0
sub rsp, 0x80
mov rax, 5
mov [rbp - 0x80], rax
%ifdef VAR
dec [rbp - 0x80]
%endif
mov rax, 0
cmp [rbp - 0x80], rax
jl end
mov rdx, [rbp - 0x80]
lea rsi, [rel s.name_exec]
lea rdi, [rbp - 0x8]
call _asprintf
cmp rax, 0
jl end
mov rdx, [rbp - 0x80]
lea rsi, [rel s.name_s]
lea rdi, [rbp - 0x16]
call _asprintf
cmp rax, 0
jl end
mov rdx, [rbp - 0x80]
lea rsi, [rel s.name_o]
lea rdi, [rbp - 0x24]
call _asprintf
cmp rax, 0
jl end
mov rcx, [rbp - 0x24]
mov rdx, [rbp - 0x16]
lea rsi, [rel s.compile_asm]
lea rdi, [rbp - 0x32]
call _asprintf
cmp rax, 0
jl end
mov rcx, [rbp - 0x8]
mov rdx, [rbp - 0x24]
lea rsi, [rel s.compile]
lea rdi, [rbp - 0x40]
call _asprintf
cmp rax, 0
jl end
mov rdx, [rbp - 0x8]
lea rsi, [rel s.exec]
lea rdi, [rbp - 0x48]
call _asprintf
cmp rax, 0
jl end
mov rdx, 644o
mov rsi, 0x601
mov rdi, [rbp - 0x16]
call _open
cmp rax, 0
jl end
mov r12, rax

mov r9, 34
mov r8, 37
mov rcx, 10
lea rdx, [rel s.string]
lea rsi, [rel s.string]
mov rdi, r12
mov rax, [rbp - 0x80]
push rax
mov rax, 1
call _dprintf

mov rdi, r12
call _close
mov rdi, [rbp - 0x32]
call _system
cmp rax, -1
jg end
mov rdi, [rbp - 0x40]
call _system
cmp rax, -1
jg end
mov rdi, [rbp - 0x48]
call _system
cmp rax, -1
jg end
mov rdi, [rbp - 0x8]
call _free
mov rdi, [rbp - 0x16]
call _free
mov rdi, [rbp - 0x24]
call _free
mov rdi, [rbp - 0x32]
call _free
mov rdi, [rbp - 0x40]
call _free
mov rdi, [rbp - 0x48]
call _free
mov rax, 0
mov [rbp - 0x8], rax
mov [rbp - 0x16], rax
mov [rbp - 0x24], rax
mov [rbp - 0x32], rax
mov [rbp - 0x40], rax
mov [rbp - 0x48], rax
end:
mov rsp, rbp
pop rbp
ret
section .data
s:
.name_exec db "Suly_%d", 0
.name_s db "Sully_%d.s", 0
.name_o db "Sully_%d.o", 0
.compile_asm db "nasm -f macho64 -D VAR %s -o %s", 0
.compile db "gcc %s -o %s", 0
.exec db "./%s", 0
.string db "COUCOU", 0
