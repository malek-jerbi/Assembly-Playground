default rel
section .rodata
	THIRD: dd 0.333333   ; define quadword (double precision)
	PI: dd 3.1415
section .text
global volume

volume:
	mulss	xmm0, xmm0
	mulss	xmm0, [THIRD]
	mulss	xmm0, xmm1
	mulss	xmm0,	[PI]


 	ret
