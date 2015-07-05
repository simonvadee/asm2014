	global rindex:function

rindex:
	push rbp
	mov rbp, rsp
	xor rax, rax
	xor rcx, rcx
	xor rdx, rdx
	mov rdx, rsi

_loop:
	cmp byte [rdi + rcx], dl
	je _store_ptr
	cmp byte [rdi + rcx], 0
	je _return
	inc rcx
	jmp _loop

_store_ptr:
	mov rax, rdi
	add rax, rcx
	inc rcx
	jmp _loop

_return:
	pop rbp
	ret
