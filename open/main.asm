section .data
	filetoopen db 'hello.txt'
section .bss
	fileContents resb 1024
section .text
	global main
main:
	mov rax, 2
	mov rdi, filetoopen
