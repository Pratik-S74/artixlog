section .text
	global main
main:
	mov rax,5
	add rax ,48
	
	mov rax,60
	xor rax,rax
	syscall
