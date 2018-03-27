[BITS 64]

global write

write:
	  mov rcx, rdx
	  xor eax, eax
	  mov rdx, rsi
	  mov esi, edi
	  mov edi, 1
	  syscall
