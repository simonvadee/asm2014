	global strcmp:function

strcmp:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
	xor rax, rax
	xor rbx, rbx
	
_loop:
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
