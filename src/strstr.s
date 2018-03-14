[BITS 64]

global strstr

strstr:
	movzx r8d, BYTE [rsi]
	mov rax, rdi
	test r8b, r8b
	je .L1
	movzx edx, BYTE [rdi]
	test dl, dl
	je .L8
	mov r9d, r8d
	jmp .L6
.L3:
	add rdi, 1
	movzx edx, BYTE [rdi]
	test dl, dl
	je .L11
.L6:
	cmp r8b, dl
	jne .L3
	mov rdx, rsi
	mov ecx, r9d
.L4:
	add rax, 1
	add rdx, 1
	cmp BYTE [rax-1], cl
	jne .L3
	movzx ecx, BYTE [rdx]
	test cl, cl
	jne .L4
	mov rax, rdi
.L1:
	rep ret
.L11:
	mov eax, 0
	ret
.L8:
	mov eax, 0
	ret