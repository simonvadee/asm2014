	global memset:function

memset:
	push rbp
	mov rbp , rsp
	mov rbx, rsi
	xor rcx, rcx

_loop:	
	cmp rcx, rdx
	je _return
	mov byte [rdi + rcx], bl
	inc rcx
	jmp _loop

_return:
	mov rax, rdi
	pop rbp
	ret
