[BITS 64]

global rindex

rindex:
	movsx edx, BYTE [rdi]
	xor eax, eax
	test dl, dl
	je .L5
.L4:
	cmp edx, esi
	cmove rax, rdi
	add rdi, 1
	movsx edx, BYTE [rdi]
	test dl, dl
	jne .L4
	rep ret
.L5:
	rep ret
