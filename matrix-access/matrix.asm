section .text
global index
	
index:
	; rdi: matrix
	; esi: rows
	; edx: cols
	; ecx: rindex
	; r8d: cindex
	; matrix + 4 ( cols * rindex + colindex )
	imul	edx, ecx
	add		edx, r8d
	mov 	rax, [rdi + 4 * rdx]
	ret
