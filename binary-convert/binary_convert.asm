section .text
global binary_convert
binary_convert:
	xor eax, eax
.loop
	movzx ecx, byte [rdi]
	cmp ecx, 0
	je .end
	shl eax,1
	and ecx, 1
	add eax, ecx
	inc	rdi
	jmp .loop
.end:
	ret
