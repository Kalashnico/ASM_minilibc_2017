[BITS 64]

global memset

memset:
	mov rax, rdi
	test rdx, rdx
	je .L2
	mov r8d, 0
	mov ecx, 0
.L3:
	mov BYTE [rax+rcx], sil
	add r8d, 1
	movsx rcx, r8d
	cmp rcx, rdx
	jb .L3
.L2:
	rep ret