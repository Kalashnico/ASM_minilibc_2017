[BITS 64]

global fork

fork:
	  mov edi, 57
	  xor eax, eax
	  syscall