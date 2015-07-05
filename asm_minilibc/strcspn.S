	global strcspn:function

strcspn:
	push rbp
	mov rbp , rsp
	xor rax, rax
	xor r9, r9
	mov rdx, rdi
	mov rdi, rsi
	
_loop:
	xor rsi, rsi
	mov rsi, [rdx]
	call my_strchr
	cmp rax, 0
	jne _return
	cmp byte [rdx], 0
	je _return
	inc rdx
	inc r9
	jmp _loop

_return:
	mov rax, r9
	pop rbp
	ret

my_strchr:
	push rbp
	mov rbp, rsp
	mov rbx, rsi
	xor rax, rax
	xor r8, r8
	
_loop_strchr:
	cmp byte [rdi + r8], bl
	je success
	cmp byte [rdi + r8], 0
	je failure
	inc r8
	jmp _loop_strchr

success:
	mov rax, rdx
	pop rbp
	ret

failure:
	mov rax, 0
	pop rbp
	ret
