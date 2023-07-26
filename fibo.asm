section .text
	global _start
_start:
	mov rax, 0 ; fib1 is 0
	mov rbx, 1 ; fib2 is 1
	mov r8, 3 ; counter i=3 because fib1 and fib2 is done
	mov r9, 4 ; nth element we want to find
	mov r10,0  ; fibn=0
fib1:
	cmp r9, 1
	jnz fib2
	mov r10, 0
	jmp exit
fib2:
	cmp r9, 2
	jnz con
	mov r10, 1
	jmp exit
con:
forall:
	cmp r8,r9
	jg con1
	add rax, rbx
	mov r10, rax
	mov rax, rbx
	mov rbx, r10
	add r8, 1
	jmp forall
con1:
exit:
	mov rax, 1
	int 0x80
	
