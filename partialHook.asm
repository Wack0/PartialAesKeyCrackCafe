use64
org 0x14004b000
; fix up index
mov rdx, [rcx+8]
xor rax,rax
mov [rcx+8],rax
; fix up initial key
mov r8, [rcx+0x20]
mov r9d, [r8]
test r9d, r9d
jz done

mov rax, rdx
shr al, 2

test al, al
jz zero
cmp al, 1
jz one
cmp al, 2
jz two
jmp three

zero:
mov eax, [r8+8]
mov [r8+0xC], eax

one:
mov eax, [r8+4]
mov [r8+8], eax

two:
mov eax, [r8]
mov [r8+4], eax

three:
xor eax, eax
mov [r8], eax

done:
jmp 0x140012390
