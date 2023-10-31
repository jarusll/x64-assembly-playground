section .data
	filetoopen db 'hello.txt'
section .bss
	fileContents resb 20
section .text
	global main
main:
	mov  rax, 2          ; open
	mov  rdi, filetoopen
	mov  rsi, 0          ; readonly
	syscall
	push rax

	mov rax, 0
	pop rdi               ; get fd of file
	mov rsi, fileContents ; read in fileContents
	mov rdx, 14           ; 13 characters to read
	syscall

	mov rax, 1            ; write
	mov rdi, 1            ; stdout
	mov rsi, fileContents
	mov rdx, 14
	syscall

	mov rax, 3   ; close
	mov rdi, rax ; file to close
	syscall

	mov rax, 60 ; exit
	mov rdi, 0
	syscall
