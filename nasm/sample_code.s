BITS 64

xor rax, rax
test rdi, rdi
jz end

loop:
cmp byte [rdi], 0
jz end

xor rbx, rbx
mov bl, byte [rdi]
cmp bl, 0x5a
ja loop_end

push rax
push rdi
mov rdi, rbx
mov rax, 0x403000
call rax
pop rdi
mov byte [rdi], al
pop rax
inc rax

loop_end:
inc rdi
jmp loop

end:
ret
