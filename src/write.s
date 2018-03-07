[BITS 64]

global write

write:
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov DWORD [rbp-4], edi
  mov QWORD [rbp-16], rsi
  mov QWORD [rbp-24], rdx
  mov rcx, QWORD [rbp-24]
  mov rdx, QWORD [rbp-16]
  mov eax, DWORD [rbp-4]
  mov esi, eax
  mov edi, 1
  mov eax, 0
  syscall
  leave
  ret
