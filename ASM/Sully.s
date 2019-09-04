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
sub rsp, 0x40
mov rax, 5
%ifdef VAR
dec rax
%endif
mov [rbp - 0x38], rax
mov rax, 0
cmp [rbp - 0x38], rax
jl end
mov rdx, [rbp - 0x38]
lea rsi, [rel s.name_exec]
lea rdi, [rbp - 0x8]
call _asprintf
cmp rax, 0
jl end
mov rdx, [rbp - 0x38]
lea rsi, [rel s.name_s]
lea rdi, [rbp - 0x10]
call _asprintf
cmp rax, 0
jl end
mov rdx, [rbp - 0x38]
lea rsi, [rel s.name_o]
lea rdi, [rbp - 0x18]
call _asprintf
cmp rax, 0
jl end
mov rcx, [rbp - 0x18]
mov rdx, [rbp - 0x10]
lea rsi, [rel s.compile_asm]
lea rdi, [rbp - 0x20]
call _asprintf
cmp rax, 0
jl end
mov rcx, [rbp - 0x8]
mov rdx, [rbp - 0x18]
lea rsi, [rel s.compile]
lea rdi, [rbp - 0x28]
call _asprintf
cmp rax, 0
jl end
mov rdx, [rbp - 0x8]
lea rsi, [rel s.exec]
lea rdi, [rbp - 0x30]
call _asprintf
cmp rax, 0
jl end
mov rdx, 644o
mov rsi, 0x601
mov rdi, [rbp - 0x10]
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
mov rax, [rbp - 0x38]
mov [rsp], rax
call _dprintf
mov rdi, r12
call _close
mov rdi, [rbp - 0x20]
call _system
cmp rax, -1
je end
mov rdi, [rbp - 0x28]
call _system
cmp rax, -1
je end
mov rdi, [rbp - 0x30]
call _system
cmp rax, -1
je end
mov rdi, [rbp - 0x8]
call _free
mov rdi, [rbp - 0x10]
call _free
mov rdi, [rbp - 0x18]
call _free
mov rdi, [rbp - 0x20]
call _free
mov rdi, [rbp - 0x28]
call _free
mov rdi, [rbp - 0x30]
call _free
mov rax, 0
mov [rbp - 0x8], rax
mov [rbp - 0x10], rax
mov [rbp - 0x18], rax
mov [rbp - 0x20], rax
mov [rbp - 0x28], rax
mov [rbp - 0x30], rax
end:
mov rsp, rbp
pop rbp
ret
section .data
s:
.name_exec db "Sully_%d", 0
.name_s db "Sully_%d.s", 0
.name_o db "Sully_%d.o", 0
.compile_asm db "nasm -f macho64 -D VAR %s -o %s", 0
.compile db "gcc %s -o %s", 0
.exec db "./%s", 0
.string db "global _main%2$cextern _open%2$cextern _close%2$cextern _asprintf%2$cextern _dprintf%2$cextern _free%2$cextern _system%2$csection .text%2$c_main:%2$cpush rbp%2$cmov rbp, rsp%2$cand rsp, 0xFFFFFFFFFFFFFFF0%2$csub rsp, 0x40%2$cmov rax, %5$d%2$c%3$cifdef VAR%2$cdec rax%2$c%3$cendif%2$cmov [rbp - 0x38], rax%2$cmov rax, 0%2$ccmp [rbp - 0x38], rax%2$cjl end%2$cmov rdx, [rbp - 0x38]%2$clea rsi, [rel s.name_exec]%2$clea rdi, [rbp - 0x8]%2$ccall _asprintf%2$ccmp rax, 0%2$cjl end%2$cmov rdx, [rbp - 0x38]%2$clea rsi, [rel s.name_s]%2$clea rdi, [rbp - 0x10]%2$ccall _asprintf%2$ccmp rax, 0%2$cjl end%2$cmov rdx, [rbp - 0x38]%2$clea rsi, [rel s.name_o]%2$clea rdi, [rbp - 0x18]%2$ccall _asprintf%2$ccmp rax, 0%2$cjl end%2$cmov rcx, [rbp - 0x18]%2$cmov rdx, [rbp - 0x10]%2$clea rsi, [rel s.compile_asm]%2$clea rdi, [rbp - 0x20]%2$ccall _asprintf%2$ccmp rax, 0%2$cjl end%2$cmov rcx, [rbp - 0x8]%2$cmov rdx, [rbp - 0x18]%2$clea rsi, [rel s.compile]%2$clea rdi, [rbp - 0x28]%2$ccall _asprintf%2$ccmp rax, 0%2$cjl end%2$cmov rdx, [rbp - 0x8]%2$clea rsi, [rel s.exec]%2$clea rdi, [rbp - 0x30]%2$ccall _asprintf%2$ccmp rax, 0%2$cjl end%2$cmov rdx, 644o%2$cmov rsi, 0x601%2$cmov rdi, [rbp - 0x10]%2$ccall _open%2$ccmp rax, 0%2$cjl end%2$cmov r12, rax%2$cmov r9, 34%2$cmov r8, 37%2$cmov rcx, 10%2$clea rdx, [rel s.string]%2$clea rsi, [rel s.string]%2$cmov rdi, r12%2$cmov rax, [rbp - 0x38]%2$cmov [rsp], rax%2$ccall _dprintf%2$cmov rdi, r12%2$ccall _close%2$cmov rdi, [rbp - 0x20]%2$ccall _system%2$ccmp rax, -1%2$cje end%2$cmov rdi, [rbp - 0x28]%2$ccall _system%2$ccmp rax, -1%2$cje end%2$cmov rdi, [rbp - 0x30]%2$ccall _system%2$ccmp rax, -1%2$cje end%2$cmov rdi, [rbp - 0x8]%2$ccall _free%2$cmov rdi, [rbp - 0x10]%2$ccall _free%2$cmov rdi, [rbp - 0x18]%2$ccall _free%2$cmov rdi, [rbp - 0x20]%2$ccall _free%2$cmov rdi, [rbp - 0x28]%2$ccall _free%2$cmov rdi, [rbp - 0x30]%2$ccall _free%2$cmov rax, 0%2$cmov [rbp - 0x8], rax%2$cmov [rbp - 0x10], rax%2$cmov [rbp - 0x18], rax%2$cmov [rbp - 0x20], rax%2$cmov [rbp - 0x28], rax%2$cmov [rbp - 0x30], rax%2$cend:%2$cmov rsp, rbp%2$cpop rbp%2$cret%2$csection .data%2$cs:%2$c.name_exec db %4$cSully_%3$cd%4$c, 0%2$c.name_s db %4$cSully_%3$cd.s%4$c, 0%2$c.name_o db %4$cSully_%3$cd.o%4$c, 0%2$c.compile_asm db %4$cnasm -f macho64 -D VAR %3$cs -o %3$cs%4$c, 0%2$c.compile db %4$cgcc %3$cs -o %3$cs%4$c, 0%2$c.exec db %4$c./%3$cs%4$c, 0%2$c.string db %4$c%1$s%4$c, 0%2$c", 0
