[BITS 64]

global memcpy

memcpy:
	mov rax, rdi
	test rdx, rdx
	je .L2
	mov r8d, 0
	mov ecx, 0
.L3:
	movzx r9d, BYTE [rsi+rcx]
	mov BYTE [rax+rcx], r9b
	add r8d, 1
	movsx rcx, r8d
	cmp rcx, rdx
	jb .L3
.L2:
	rep ret