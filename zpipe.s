	.file	"zpipe.c"
	.text
	.section	.rodata
.LC0:
	.string	"1.2.11"
.LC1:
	.string	"zpipe.c"
.LC2:
	.string	"ret != Z_STREAM_ERROR"
.LC3:
	.string	"strm.avail_in == 0"
.LC4:
	.string	"ret == Z_STREAM_END"
	.text
	.globl	def
	.type	def, @function
def:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32928, %rsp
	movq	%rdi, -32904(%rbp)
	movq	%rsi, -32912(%rbp)
	movl	%edx, -32916(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movl	-32916(%rbp), %esi
	leaq	-128(%rbp), %rax
	movl	$112, %ecx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	deflateInit_@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L2
	movl	-4(%rbp), %eax
	jmp	.L13
.L2:
	movq	-32904(%rbp), %rdx
	leaq	-16512(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16384, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movl	%eax, -120(%rbp)
	movq	-32904(%rbp), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L4
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	deflateEnd@PLT
	movl	$-1, %eax
	jmp	.L13
.L4:
	movq	-32904(%rbp), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L5
	movl	$4, %eax
	jmp	.L6
.L5:
	movl	$0, %eax
.L6:
	movl	%eax, -8(%rbp)
	leaq	-16512(%rbp), %rax
	movq	%rax, -128(%rbp)
.L10:
	movl	$16384, -96(%rbp)
	leaq	-32896(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-8(%rbp), %edx
	leaq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	deflate@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-2, -4(%rbp)
	jne	.L7
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx
	movl	$68, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L7:
	movl	-96(%rbp), %edx
	movl	$16384, %eax
	subl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-32912(%rbp), %rcx
	leaq	-32896(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	-12(%rbp), %edx
	cmpq	%rdx, %rax
	jne	.L8
	movq	-32912(%rbp), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L9
.L8:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	deflateEnd@PLT
	movl	$-1, %eax
	jmp	.L13
.L9:
	movl	-96(%rbp), %eax
	testl	%eax, %eax
	je	.L10
	movl	-120(%rbp), %eax
	testl	%eax, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx
	movl	$75, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	__assert_fail@PLT
.L11:
	cmpl	$4, -8(%rbp)
	jne	.L2
	cmpl	$1, -4(%rbp)
	je	.L12
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx
	movl	$79, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	__assert_fail@PLT
.L12:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	deflateEnd@PLT
	movl	$0, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	def, .-def
	.globl	inf
	.type	inf, @function
inf:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32912, %rsp
	movq	%rdi, -32904(%rbp)
	movq	%rsi, -32912(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	leaq	-128(%rbp), %rax
	movl	$112, %edx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	inflateInit_@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L15
	movl	-4(%rbp), %eax
	jmp	.L29
.L15:
	movq	-32904(%rbp), %rdx
	leaq	-16512(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16384, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movl	%eax, -120(%rbp)
	movq	-32904(%rbp), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L17
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	inflateEnd@PLT
	movl	$-1, %eax
	jmp	.L29
.L17:
	movl	-120(%rbp), %eax
	testl	%eax, %eax
	je	.L30
	leaq	-16512(%rbp), %rax
	movq	%rax, -128(%rbp)
.L26:
	movl	$16384, -96(%rbp)
	leaq	-32896(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	inflate@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-2, -4(%rbp)
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx
	movl	$126, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L20:
	cmpl	$-3, -4(%rbp)
	jg	.L21
	cmpl	$-4, -4(%rbp)
	jge	.L22
	jmp	.L23
.L21:
	cmpl	$2, -4(%rbp)
	jne	.L23
	movl	$-3, -4(%rbp)
.L22:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	inflateEnd@PLT
	movl	-4(%rbp), %eax
	jmp	.L29
.L23:
	movl	-96(%rbp), %edx
	movl	$16384, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movq	-32912(%rbp), %rcx
	leaq	-32896(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	-8(%rbp), %edx
	cmpq	%rdx, %rax
	jne	.L24
	movq	-32912(%rbp), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L25
.L24:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	inflateEnd@PLT
	movl	$-1, %eax
	jmp	.L29
.L25:
	movl	-96(%rbp), %eax
	testl	%eax, %eax
	je	.L26
	cmpl	$1, -4(%rbp)
	jne	.L15
	jmp	.L19
.L30:
	nop
.L19:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	inflateEnd@PLT
	cmpl	$1, -4(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L29
.L27:
	movl	$-3, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	inf, .-inf
	.section	.rodata
.LC5:
	.string	"zpipe: "
.LC6:
	.string	"error reading stdin\n"
.LC7:
	.string	"error writing stdout\n"
.LC8:
	.string	"invalid compression level\n"
	.align 8
.LC9:
	.string	"invalid or incomplete deflate data\n"
.LC10:
	.string	"out of memory\n"
.LC11:
	.string	"zlib version mismatch!\n"
	.text
	.globl	zerr
	.type	zerr, @function
zerr:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$7, %edx
	movl	$1, %esi
	leaq	.LC5(%rip), %rdi
	call	fwrite@PLT
	movl	-4(%rbp), %eax
	addl	$6, %eax
	cmpl	$5, %eax
	ja	.L41
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L34(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L34(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L34:
	.long	.L38-.L34
	.long	.L41-.L34
	.long	.L37-.L34
	.long	.L36-.L34
	.long	.L35-.L34
	.long	.L33-.L34
	.text
.L33:
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L39
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	leaq	.LC6(%rip), %rdi
	call	fwrite@PLT
.L39:
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L42
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	movl	$1, %esi
	leaq	.LC7(%rip), %rdi
	call	fwrite@PLT
	jmp	.L42
.L35:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	leaq	.LC8(%rip), %rdi
	call	fwrite@PLT
	jmp	.L32
.L36:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	leaq	.LC9(%rip), %rdi
	call	fwrite@PLT
	jmp	.L32
.L37:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rdi
	call	fwrite@PLT
	jmp	.L32
.L38:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	leaq	.LC11(%rip), %rdi
	call	fwrite@PLT
	jmp	.L41
.L42:
	nop
.L32:
.L41:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	zerr, .-zerr
	.section	.rodata
.LC12:
	.string	"-d"
	.align 8
.LC13:
	.string	"zpipe usage: zpipe [-d] < source > dest\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L44
	movq	stdout(%rip), %rcx
	movq	stdin(%rip), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	def
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L45
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	zerr
.L45:
	movl	-4(%rbp), %eax
	jmp	.L46
.L44:
	cmpl	$2, -20(%rbp)
	jne	.L47
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L47
	movq	stdout(%rip), %rdx
	movq	stdin(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	inf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L48
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	zerr
.L48:
	movl	-4(%rbp), %eax
	jmp	.L46
.L47:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	movl	$1, %esi
	leaq	.LC13(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 4
__PRETTY_FUNCTION__.1:
	.string	"def"
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 4
__PRETTY_FUNCTION__.0:
	.string	"inf"
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
