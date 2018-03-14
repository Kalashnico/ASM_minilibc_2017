[BITS 64]

global rindex

rindex:
	movzx edx, BYTE [rdi]
	test dl, dl
	je .L5
	mov eax, 0
.L4:
	movsx edx, dl
	cmp edx, esi
	cmove rax, rdi
	add rdi, 1
	movzx edx, BYTE [rdi]
	test dl, dl
	jne .L4
	rep ret
.L5:
	mov eax, 0
	ret