[BITS 64]

global strpbrk

strpbrk:
	mov rax, rdi
.L2:
	lea rdi, [rax+1]
	movsx r8d, BYTE [rdi-1]
	test r8d, r8d
	je .L7
	mov rdx, rsi
.L5:
	add rdx, 1
	movsx ecx, BYTE [rdx-1]
	test ecx, ecx
	je .L8
	cmp r8d, ecx
	jne .L5
	rep ret
.L8:
	mov rax, rdi
	jmp .L2
.L7:
	mov eax, 0
	ret