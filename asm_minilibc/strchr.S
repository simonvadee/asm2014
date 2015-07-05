	global strchr:function

strchr:
	push rbp
	mov rbp, rsp
	xor rax, rax
	mov rbx, rsi
	xor r8, r8
	
_loop:
	cmp byte [rdi + r8], bl
	je _return_success
	cmp byte [rdi + r8], 0
	je _return_failure
	inc r8
	jmp _loop

_return_success:
	add rdi, r8
	mov rax, rdi
	pop rbp
	ret

_return_failure:
	pop rbp
	ret
