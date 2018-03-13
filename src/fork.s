[BITS 64]

global fork

fork:
	sub rsp, 8
	mov edi, 57
	mov eax, 0
	syscall
	add rsp, 8
	ret