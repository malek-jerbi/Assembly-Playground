section .text
global fib
fib:
	xor		rbx, rbx	; stack counter initialized to zero
recfib:
	mov 	rax, rdi	; base case
	cmp 	rdi, 1		; if n<= 1
	jle		.ret		; return with n in rax

	dec		rdi
	push	rdi			; push n-1 to the stack
	call	recfib		; call recursive fib with n-1
	mov		rcx, rax
	pop		rdi			; pop n-1 off the stack

	push	rcx			; push first result to stack cuz rcx is gonna be used

	dec		rdi		
	push	rdi			; push n-2 to the stack
	call	recfib		; call recfib with n-2
	mov		rdx, rax
	pop		rdi			; pop n-2 off the stack 

	pop		rcx			; pop first result from stack

	add		rcx, rdx		
	mov		rax, rcx
.ret:
	ret
	