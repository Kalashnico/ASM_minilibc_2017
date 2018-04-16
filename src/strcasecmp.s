[BITS 64]

global strcasecmp

strcasecmp:
	xor eax, eax
	cmp rdi, rsi
	jne .L3
	jmp .L12
.L6:
	add rdi, 1
	test cl, cl
	je .L1
.L3:
	movzx eax, BYTE [rdi]
	lea r8d, [rax-65]
	lea edx, [rax+32]
	mov ecx, eax
	cmp r8d, 26
	cmovb eax, edx
	add rsi, 1
	movzx edx, BYTE [rsi-1]
	lea r9d, [rdx-65]
	lea r8d, [rdx+32]
	cmp r9d, 26
	cmovb edx, r8d
	sub eax, edx
	je .L6
.L1:
	rep ret
.L12:
	rep ret
toLower:
	lea edx, [rdi-65]
	lea eax, [rdi+32]
	cmp edx, 26
	cmovnb eax, edi
	ret
