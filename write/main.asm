section .data
	message db "Hello, World!", 10
section .bss
section .text
	global main
main:
	mov rax, 1       ; write
	mov rdi, 1
	mov rsi, message
	mov rdx, 14
	syscall
	mov rax, 60      ; exit
	mov rdi, 0
	syscall
