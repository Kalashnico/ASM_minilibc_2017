[BITS 64]

global strcasecmp

strcasecmp:
	mov eax, 0
	cmp rdi, rsi
	je .L7
	push rbp
	push rbx
	sub rsp, 8
	mov rbp, rdi
	mov rbx, rsi
	call __ctype_tolower_loc
	mov rdx, QWORD [rax]
.L3:
	movzx esi, BYTE [rbp+0]
	add rbx, 1
	movsx rax, sil
	movsx rcx, BYTE [rbx-1]
	mov eax, DWORD [rdx+rax*4]
	sub eax, DWORD [rdx+rcx*4]
	jne .L1
	add rbp, 1
	test sil, sil
	jne .L3
.L1:
	add rsp, 8
	pop rbx
	pop rbp
	ret
.L7:
	rep ret