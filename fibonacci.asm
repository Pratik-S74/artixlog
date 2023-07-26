section .bss
	fib resq 1 ;reserve 8 bytes for result

section .text
	global main
%define N 4

main:
	cmp N, 0
	je fib_zero
	cmp N, 1
	je fib_one
	;for n=0 and n=1
	mov rax, 0
	mov rbx, 1

	;calculate the nth fibonaaci num
	mov rcx, N ;counter for loop
	#cmp rcx, 2
	#jbe fib_done
	#dec rcx

fib_loop:
	add rax, rbx
	xchg rax, rbx
	dec rcx
	jnz fib_loop
fib_done:
	mov [fib], rbx

;exiting progran
	mov rax, 60
	xor rdi, rdi
	syscall
fib_zero:
	mov qword [fib], 0
	mov rax, 60
	xor rdi, rdi
	syscall
fib_one:
	mov qword [fib], 1
	mov rax, 60
	xor rdi, rdi
	syscall
