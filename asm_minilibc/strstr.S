	global strstr:function

strstr:
	push rbp
	mov rbp, rsp
	xor rcx, rcx

_loop:
	mov rax, rdi
	xor r8, r8
	mov cl, byte [rsi]
	cmp byte [rdi], cl
	je _loop_second
	cmp byte [rdi], 0
	je _return_failure
	inc rdi
	jmp _loop

_loop_second:
	inc rdi
	inc r8
	mov cl , [rsi + r8]
	cmp byte [rsi + r8], 0
	je _return_success
	cmp byte [rdi], cl
	je _loop_second
	jmp _loop

_return_failure:
	xor rax, rax
	pop rbp
	ret

_return_success:
	pop rbp
	ret
