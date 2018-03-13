[BITS 64]

global strchr
	
strchr:
	mov edx, esi
	movzx eax, BYTE [rdi]
	cmp sil, al
	je .L5
	test al, al
	je .L8
.L3:
	add rdi, 1
	movzx eax, BYTE [rdi]
	cmp al, dl
	je .L9
	test al, al
	jne .L3
	mov eax, 0
	ret
.L9:
	mov rax, rdi
	ret
.L5:
	mov rax, rdi
	ret
.L8:
	mov eax, 0
	ret