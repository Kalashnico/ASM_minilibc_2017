[BITS 64]

global strcmp

strcmp:
.L4:
	add rdi, 1
	movzx eax, BYTE [rdi-1]
	add rsi, 1
	movzx edx, BYTE [rsi-1]
	test al, al
	je .L6
	cmp al, dl
	je .L4
	movzx eax, al
	movzx edx, dl
	sub eax, edx
	ret
.L6:
	movzx eax, dl
	neg eax
	ret
