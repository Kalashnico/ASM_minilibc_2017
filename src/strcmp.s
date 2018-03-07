[BITS 64]

global strcmp

strcmp:
  push rbp
  mov rbp, rsp
  mov QWORD [rbp-24], rdi
  mov QWORD [rbp-32], rsi
.L3:
  mov rdx, QWORD [rbp-24]
  mov rax, QWORD [rbp-8]
  add rax, rdx
  movzx edx, BYTE [rax]
  mov rcx, QWORD [rbp-32]
  mov rax, QWORD [rbp-8]
  add rax, rcx
  movzx eax, BYTE [rax]
  cmp dl, al
  jne .L2
  mov rdx, QWORD [rbp-24]
  mov rax, QWORD [rbp-8]
  add rax, rdx
  movzx eax, BYTE [rax]
  test al, al
  je .L2
  mov rdx, QWORD [rbp-32]
  mov rax, QWORD [rbp-8]
  add rax, rdx
  movzx eax, BYTE [rax]
  test al, al
  je .L2
  add QWORD [rbp-8], 1
  jmp .L3
.L2:
  mov rdx, QWORD [rbp-24]
  mov rax, QWORD [rbp-8]
  add rax, rdx
  movzx eax, BYTE [rax]
  test al, al
  jne .L4
  mov rdx, QWORD [rbp-32]
  mov rax, QWORD [rbp-8]
  add rax, rdx
  movzx eax, BYTE [rax]
  test al, al
  jne .L4
  mov eax, 0
  jmp .L5
.L4:
  mov rdx, QWORD [rbp-24]
  mov rax, QWORD [rbp-8]
  add rax, rdx
  movzx eax, BYTE [rax]
  movsx edx, al
  mov rcx, QWORD [rbp-32]
  mov rax, QWORD [rbp-8]
  add rax, rcx
  movzx eax, BYTE [rax]
  movsx eax, al
  sub edx, eax
  mov eax, edx
.L5:
  pop rbp
  ret
