	global strlen:function

strlen:
	push rbp
	mov rbp , rsp
	xor rax, rax
	
_loop:
	cmp byte [rdi], 0
	je _return
	inc rdi
	inc rax
	jmp _loop
	
_return:
	pop rbp
	ret
