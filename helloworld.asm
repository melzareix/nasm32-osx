extern printf
section .text
global main
main:
  push ebp
  mov ebp, esp

  mov eax, 5

  push eax
  push str
  call printf


  mov esp, ebp
  pop ebp
  ret

section .data
str: db "var=%d",10,0 ; to use escape sequences, use backticks
strlen equ $ - str
