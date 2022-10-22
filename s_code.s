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
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi # переменная mas функции masin
	mov	DWORD PTR -28[rbp], esi # переменная n функции masin
	mov	DWORD PTR -4[rbp], 0 # переменная i функции masin
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip] # передача аргументов в scanf
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT  # scanf
	add	DWORD PTR -4[rbp], 1 # инкремент i
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L3
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	masin, .-masin
	.section	.rodata
.LC1:
	.string	"%d "
	.text
	.globl	masout
	.type	masout, @function
masout:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi # переменная mas функции masout
	mov	DWORD PTR -28[rbp], esi # переменная n функции masout
	mov	DWORD PTR -4[rbp], 0 # переменная i функции masout
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rax, .LC1[rip] # передача аргументов в printf
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT # printf
	add	DWORD PTR -4[rbp], 1 # инкремент i
.L5:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L6
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	masout, .-masout
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 3952
	mov	rax, QWORD PTR fs:40 
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -8032[rbp], 0 # переменная pos функции main
	mov	DWORD PTR -8028[rbp], 0 # переменная neg функции main
	lea	rax, -8036[rbp]  # передача аргументов в scanf
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT  # scanf
	mov	edx, DWORD PTR -8036[rbp]
	lea	rax, -8016[rbp]  # передача аргументов в masin
	mov	esi, edx
	mov	rdi, rax
	call	masin # masin
	mov	DWORD PTR -8024[rbp], 0  # переменная i в первом цикле функции main
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
	add	DWORD PTR -8024[rbp], 1 # инкремент i
.L8:
	mov	eax, DWORD PTR -8036[rbp]
	cmp	DWORD PTR -8024[rbp], eax
	jl	.L11
	mov	DWORD PTR -8020[rbp], 0  # переменная i во втором цикле функции main
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
	add	DWORD PTR -8020[rbp], 1 # инкремент i
.L12:
	mov	eax, DWORD PTR -8036[rbp]
	cmp	DWORD PTR -8020[rbp], eax
	jl	.L15
	mov	edx, DWORD PTR -8036[rbp]
	lea	rax, -4016[rbp]
	mov	esi, edx  # передача аргументов в masout
	mov	rdi, rax
	call	masout  # masout
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
