	global strcasecmp:function

strcasecmp:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
	xor rax, rax
	xor rbx, rbx
_loop:
	mov al, [rdi + rcx]
	call _is_maj_first
	mov bl, [rsi + rcx]
	call _is_maj_second
	cmp al, bl
	jne _return
	cmp al, 0
	je _return
	cmp bl, 0
	je _return
	inc rcx
	jmp _loop

_is_maj_first:
	cmp al, 65
	jl _quit_subroutine
	cmp al, 90
	jg _quit_subroutine
	add al, 32
	ret

_is_maj_second:
	cmp bl, 65
	jl _quit_subroutine
	cmp bl, 90
	jg _quit_subroutine
	add bl, 32
	ret

_quit_subroutine:
	ret

_return:
	sub al, bl
	pop rbp
	ret
