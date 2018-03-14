[BITS 64]

global strcspn

strcspn:
	mov rax, rdi
.L4:
	lea r9, [rax+1]
	movzx r8d, BYTE [r9-1]
	mov rdx, rsi
.L3:
	add rdx, 1
	movzx ecx, BYTE [rdx-1]
	cmp r8b, cl
	je .L7
	test cl, cl
	jne .L3
	mov rax, r9
	jmp .L4
.L7:
	sub rax, rdi
	ret