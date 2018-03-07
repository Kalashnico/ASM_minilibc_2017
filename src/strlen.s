[BITS 64]

global strlen

strlen:
  push rbp
  mov rbp, rsp
  mov QWORD [rbp-24], rdi
  cmp QWORD [rbp-24], 0
  jne .L2
  mov eax, 0
  jmp .L3
.L2:
  mov QWORD [rbp-8], 0
jmp .L4

.L5:
  add QWORD [rbp-8], 1
.L4:
  mov rdx, QWORD [rbp-24]
  mov rax, QWORD [rbp-8]
  add rax, rdx
  movzx eax, BYTE [rax]
  test al, al
  jne .L5
  mov rax, QWORD [rbp-8]
.L3:
  pop rbp
  ret
