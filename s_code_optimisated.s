	.file	"c_code.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	masin
	.type	masin, @function
masin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L3
	nop
	nop
	leave
	ret
	.size	masin, .-masin
	.section	.rodata
.LC1:
	.string	"%d "
	.text
	.globl	masout
	.type	masout, @function
masout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
.L5:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L6
	nop
	nop
	leave
	ret
	.size	masout, .-masout
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 3952
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -8032[rbp], 0
	mov	DWORD PTR -8028[rbp], 0
	lea	rax, -8036[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -8036[rbp]
	lea	rax, -8016[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	masin
	mov	DWORD PTR -8024[rbp], 0
	jmp	.L8
.L11:
	mov	eax, DWORD PTR -8024[rbp]
	cdqe
	mov	eax, DWORD PTR -8016[rbp+rax*4]
	test	eax, eax
	jle	.L9
	mov	eax, DWORD PTR -8024[rbp]
	cdqe
	mov	eax, DWORD PTR -8016[rbp+rax*4]
	add	DWORD PTR -8032[rbp], eax
	jmp	.L10
.L9:
	mov	eax, DWORD PTR -8024[rbp]
	cdqe
	mov	eax, DWORD PTR -8016[rbp+rax*4]
	add	DWORD PTR -8028[rbp], eax
.L10:
	add	DWORD PTR -8024[rbp], 1
.L8:
	mov	eax, DWORD PTR -8036[rbp]
	cmp	DWORD PTR -8024[rbp], eax
	jl	.L11
	mov	DWORD PTR -8020[rbp], 0
	jmp	.L12
.L15:
	mov	eax, DWORD PTR -8020[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L13
	mov	eax, DWORD PTR -8020[rbp]
	cdqe
	mov	edx, DWORD PTR -8032[rbp]
	mov	DWORD PTR -4016[rbp+rax*4], edx
	jmp	.L14
.L13:
	mov	eax, DWORD PTR -8020[rbp]
	cdqe
	mov	edx, DWORD PTR -8028[rbp]
	mov	DWORD PTR -4016[rbp+rax*4], edx
.L14:
	add	DWORD PTR -8020[rbp], 1
.L12:
	mov	eax, DWORD PTR -8036[rbp]
	cmp	DWORD PTR -8020[rbp], eax
	jl	.L15
	mov	edx, DWORD PTR -8036[rbp]
	lea	rax, -4016[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	masout
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
