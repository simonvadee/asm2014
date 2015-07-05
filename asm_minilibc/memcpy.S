	global memcpy:function

memcpy:
	push rbp
	mov rbp, rsp
	xor rbx, rbx
	xor rcx, rcx
_loop:
	cmp rdx, rcx
	je _return
	mov bl, [rsi + rcx]
	mov [rdi + rcx], bl
	inc rcx
	jmp _loop

_return:
	mov rax, rdi
	pop rbp
	ret
