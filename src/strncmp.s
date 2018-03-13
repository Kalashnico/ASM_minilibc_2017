[BITS 64]

global strncmp

strncmp:
	mov eax, 0
	test rdx, rdx
	je .L1
	add rdx, rdi
.L4:
	movzx eax, BYTE [rdi]
	add rsi, 1
	movzx ecx, BYTE [rsi-1]
	cmp al, cl
	jne .L8
	add rdi, 1
	test al, al
	je .L6
	cmp rdi, rdx
	jne .L4
	mov eax, 0
	ret
.L8:
	movzx eax, al
	movzx ecx, cl
	sub eax, ecx
	ret
.L6:
	mov eax, 0
.L1:
	rep ret
