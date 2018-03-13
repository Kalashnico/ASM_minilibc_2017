[BITS 64]

global read

read:
	sub rsp, 8
	mov rcx, rdx
	mov rdx, rsi
	mov esi, edi
	mov edi, 0
	mov eax, 0
	syscall
	add rsp, 8
	ret
