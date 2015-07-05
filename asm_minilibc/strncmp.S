	global strncmp:function

strncmp:
	push rbp
	mov rbp, rsp
	xor rcx, rcx

_loop:
	xor rax, rax
	xor rbx, rbx
	cmp rdx, rcx
	je _return_equal
	mov al, [rdi + rcx]
	mov bl, [rsi + rcx]
	cmp al, bl
	jne _return
	cmp al, 0
	je _return
	cmp bl, 0
	je _return
	inc rcx
	jmp _loop

_return:
	sub al, bl
	pop rbp
	ret

_return_equal:
	xor rax, rax
	pop rbp
	ret
