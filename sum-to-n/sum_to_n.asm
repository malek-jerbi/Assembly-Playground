section .text
global sum_to_n
sum_to_n:
	xor 	  rax, rax
start_of_loop:
	cmp 	  rdi, 0				  ; is our loop iteration number equal to the argument?
	je		  return				  ; if so, jump to return
	add		  rax, rdi
	dec 	  rdi				  	  ; 
	jmp 	  start_of_loop
return:
	ret