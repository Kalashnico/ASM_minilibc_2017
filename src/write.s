[BITS 64]

global write

write:
	sub rsp, 8
	mov rcx, rdx
	mov rdx, rsi
	mov esi, edi
	mov edi, 1
	mov eax, 0
	syscall
	add rsp, 8
	ret