section .data
section .bss
	input resb 10
section .text
	global main
main:
	mov     rax, 0     ; read
	mov     rdi, 0
	mov     rsi, input
	mov     rdx, 10
	syscall            ; input call
	mov     rax, 1     ; write
	mov     rdi, 1
	mov     rsi, input
	mov     rdx, 10
	syscall            ; write call
	mov     rax, 60
	mov     rdi, 0
	syscall
