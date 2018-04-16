[BITS 64]

global strstr

strstr:
	movzx ecx, BYTE [rsi]
	mov rax, rdi
	test cl, cl
	je .L1
	movzx eax, BYTE [rdi]
	test al, al
	je .L14
.L6:
	cmp cl, al
	je .L15
.L3:
	add rdi, 1
	movzx eax, BYTE [rdi]
	test al, al
	jne .L6
.L14:
	xor eax, eax
	ret
.L15:
	mov edx, ecx
	xor eax, eax
.L4:
	cmp BYTE [rdi+rax], dl
	jne .L3
	add rax, 1
	movzx edx, BYTE [rsi+rax]
	test dl, dl
	jne .L4
	mov rax, rdi
.L1:
	rep ret
