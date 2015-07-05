

	global my_strcmp

my_strcmp:
	push rbp
	mov rbp, rsp
	xor rax, rax
	xor r8, r8
	mov rcx, rsi
	mov rbx, rdi

_loop:
	cmp cl, bl
	je _inc
	add rbx, r8
	sub bl, cl
	mov rax, [rbx]
	jmp _return
	
_inc:
	cmp bl, 0
	je _return
	inc r8
	inc rbx
	inc rcx
	jmp _loop

_return:
	pop rbp
	ret
