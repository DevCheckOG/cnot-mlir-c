	.file	"cnot-c.c"
	.text
	.globl	complex_add                     # -- Begin function complex_add
	.p2align	4
	.type	complex_add,@function
complex_add:                            # @complex_add
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1                # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1                # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	complex_add, .Lfunc_end0-complex_add
	.cfi_endproc
                                        # -- End function
	.globl	complex_sub                     # -- Begin function complex_sub
	.p2align	4
	.type	complex_sub,@function
complex_sub:                            # @complex_sub
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1                # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1                # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	complex_sub, .Lfunc_end1-complex_sub
	.cfi_endproc
                                        # -- End function
	.globl	complex_mult                    # -- Begin function complex_mult
	.p2align	4
	.type	complex_mult,@function
complex_mult:                           # @complex_mult
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1                # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2                # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3                # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-48(%rbp), %xmm3                # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm2                # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1                # xmm1 = mem[0],zero
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	complex_mult, .Lfunc_end2-complex_mult
	.cfi_endproc
                                        # -- End function
	.globl	complex_scale                   # -- Begin function complex_scale
	.p2align	4
	.type	complex_scale,@function
complex_scale:                          # @complex_scale
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1                # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1                # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	complex_scale, .Lfunc_end3-complex_scale
	.cfi_endproc
                                        # -- End function
	.globl	complex_abs_squared             # -- Begin function complex_abs_squared
	.p2align	4
	.type	complex_abs_squared,@function
complex_abs_squared:                    # @complex_abs_squared
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm2                # xmm2 = mem[0],zero
	movsd	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero
	mulsd	-8(%rbp), %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	complex_abs_squared, .Lfunc_end4-complex_abs_squared
	.cfi_endproc
                                        # -- End function
	.globl	init_state                      # -- Begin function init_state
	.p2align	4
	.type	init_state,@function
init_state:                             # @init_state
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -88(%rbp)
	movsd	%xmm2, -96(%rbp)
	movsd	%xmm3, -104(%rbp)
	movsd	%xmm4, -112(%rbp)
	movsd	%xmm5, -120(%rbp)
	movsd	%xmm6, -128(%rbp)
	movsd	%xmm7, -136(%rbp)
	movsd	-80(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-88(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movups	-24(%rbp), %xmm0
	movups	%xmm0, (%rdi)
	movsd	-96(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-104(%rbp), %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movups	-40(%rbp), %xmm0
	movups	%xmm0, 16(%rdi)
	movsd	-112(%rbp), %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-120(%rbp), %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movups	-56(%rbp), %xmm0
	movups	%xmm0, 32(%rdi)
	movsd	-128(%rbp), %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	-136(%rbp), %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movups	-72(%rbp), %xmm0
	movups	%xmm0, 48(%rdi)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_2
# %bb.1:
	movq	-144(%rbp), %rax                # 8-byte Reload
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	init_state, .Lfunc_end5-init_state
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function is_normalized
.LCPI6_0:
	.quad	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
.LCPI6_2:
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_1:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
	.text
	.globl	is_normalized
	.p2align	4
	.type	is_normalized,@function
is_normalized:                          # @is_normalized
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1                  # xmm1 = mem[0],zero
	callq	complex_abs_squared
	addsd	-8(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_1
.LBB6_4:
	movsd	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	subsd	%xmm0, %xmm1
	movaps	.LCPI6_1(%rip), %xmm0           # xmm0 = [NaN,NaN]
	pand	%xmm0, %xmm1
	movsd	.LCPI6_0(%rip), %xmm0           # xmm0 = [1.0E-10,0.0E+0]
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	is_normalized, .Lfunc_end6-is_normalized
	.cfi_endproc
                                        # -- End function
	.globl	apply_matrix                    # -- Begin function apply_matrix
	.p2align	4
	.type	apply_matrix,@function
apply_matrix:                           # @apply_matrix
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -96(%rbp)
	movq	%rsi, -104(%rbp)
	leaq	-72(%rbp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset@PLT
	movl	$0, -108(%rbp)
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	cmpl	$4, -108(%rbp)
	jge	.LBB7_8
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -112(%rbp)
.LBB7_3:                                #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -112(%rbp)
	jge	.LBB7_6
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=2
	leaq	-72(%rbp), %rax
	movslq	-108(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	leaq	-72(%rbp), %rax
	movslq	-108(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movq	-104(%rbp), %rcx
	movslq	-108(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, %rcx
	movslq	-112(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movq	-96(%rbp), %rax
	movslq	-112(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movsd	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	movsd	8(%rcx), %xmm1                  # xmm1 = mem[0],zero
	movsd	(%rax), %xmm2                   # xmm2 = mem[0],zero
	movsd	8(%rax), %xmm3                  # xmm3 = mem[0],zero
	callq	complex_mult
	movq	-144(%rbp), %rax                # 8-byte Reload
	movsd	%xmm0, -128(%rbp)
	movsd	%xmm1, -120(%rbp)
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1                  # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2               # xmm2 = mem[0],zero
	movsd	-120(%rbp), %xmm3               # xmm3 = mem[0],zero
	callq	complex_add
	movq	-136(%rbp), %rax                # 8-byte Reload
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm1, -80(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-80(%rbp), %rcx
	movq	%rcx, 8(%rax)
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_3
.LBB7_6:                                #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                #   in Loop: Header=BB7_1 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_1
.LBB7_8:
	movq	-96(%rbp), %rax
	movups	-72(%rbp), %xmm0
	movups	-56(%rbp), %xmm1
	movups	-40(%rbp), %xmm2
	movups	-24(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB7_10
# %bb.9:
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_10:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end7:
	.size	apply_matrix, .Lfunc_end7-apply_matrix
	.cfi_endproc
                                        # -- End function
	.globl	apply_cnot                      # -- Begin function apply_cnot
	.p2align	4
	.type	apply_cnot,@function
apply_cnot:                             # @apply_cnot
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp                      # imm = 0x130
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -280(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -304(%rbp)               # 16-byte Spill
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -272(%rbp)
	movabsq	$4607182418800017408, %rax      # imm = 0x3FF0000000000000
	movq	%rax, -272(%rbp)
	movq	%rax, -192(%rbp)
	movq	%rax, -96(%rbp)
	movq	%rax, -48(%rbp)
	movq	-280(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	callq	apply_matrix
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_2
# %bb.1:
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end8:
	.size	apply_cnot, .Lfunc_end8-apply_cnot
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function apply_hadamard_q1
.LCPI9_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI9_1:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	apply_hadamard_q1
	.p2align	4
	.type	apply_hadamard_q1,@function
apply_hadamard_q1:                      # @apply_hadamard_q1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp                      # imm = 0x170
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -344(%rbp)
	movsd	.LCPI9_1(%rip), %xmm0           # xmm0 = [2.0E+0,0.0E+0]
	callq	sqrt@PLT
	movaps	%xmm0, %xmm1
	movsd	.LCPI9_0(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -352(%rbp)
	movsd	-352(%rbp), %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-352(%rbp), %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-352(%rbp), %xmm0               # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-352(%rbp), %xmm0               # xmm0 = mem[0],zero
	movq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, -32(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	leaq	-336(%rbp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx                      # imm = 0x100
	callq	memset@PLT
	movl	$0, -356(%rbp)
.LBB9_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	cmpl	$2, -356(%rbp)
	jge	.LBB9_8
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$0, -360(%rbp)
.LBB9_3:                                #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -360(%rbp)
	jge	.LBB9_6
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=2
	movslq	-356(%rbp), %rcx
	leaq	-336(%rbp), %rax
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-360(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-356(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-360(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movl	-356(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	leaq	-336(%rbp), %rax
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	-360(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-356(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-360(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
# %bb.5:                                #   in Loop: Header=BB9_3 Depth=2
	movl	-360(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -360(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_7
.LBB9_7:                                #   in Loop: Header=BB9_1 Depth=1
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
	jmp	.LBB9_1
.LBB9_8:
	movq	-344(%rbp), %rdi
	leaq	-336(%rbp), %rsi
	callq	apply_matrix
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB9_10
# %bb.9:
	addq	$368, %rsp                      # imm = 0x170
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_10:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end9:
	.size	apply_hadamard_q1, .Lfunc_end9-apply_hadamard_q1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function apply_x_q2
.LCPI10_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	apply_x_q2
	.p2align	4
	.type	apply_x_q2,@function
apply_x_q2:                             # @apply_x_q2
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp                      # imm = 0x160
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -344(%rbp)
	leaq	-80(%rbp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset@PLT
	movsd	.LCPI10_0(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	movsd	%xmm0, -64(%rbp)
	movsd	.LCPI10_0(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	movsd	%xmm0, -48(%rbp)
	leaq	-336(%rbp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx                      # imm = 0x100
	callq	memset@PLT
	movl	$0, -348(%rbp)
.LBB10_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	cmpl	$2, -348(%rbp)
	jge	.LBB10_8
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	movl	$0, -352(%rbp)
.LBB10_3:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -352(%rbp)
	jge	.LBB10_6
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=2
	movslq	-348(%rbp), %rcx
	leaq	-336(%rbp), %rax
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	-352(%rbp), %ecx
	movl	-348(%rbp), %edx
	shll	%edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-348(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-352(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movl	-348(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	leaq	-336(%rbp), %rax
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	-352(%rbp), %ecx
	movl	-348(%rbp), %edx
	addl	$1, %edx
	shll	%edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-348(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-352(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=2
	movl	-352(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -352(%rbp)
	jmp	.LBB10_3
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               #   in Loop: Header=BB10_1 Depth=1
	movl	-348(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -348(%rbp)
	jmp	.LBB10_1
.LBB10_8:
	movq	-344(%rbp), %rdi
	leaq	-336(%rbp), %rsi
	callq	apply_matrix
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_10
# %bb.9:
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_10:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end10:
	.size	apply_x_q2, .Lfunc_end10-apply_x_q2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function apply_z_q1
.LCPI11_0:
	.quad	0xbff0000000000000              # double -1
.LCPI11_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	apply_z_q1
	.p2align	4
	.type	apply_z_q1,@function
apply_z_q1:                             # @apply_z_q1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp                      # imm = 0x160
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -344(%rbp)
	leaq	-80(%rbp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset@PLT
	movsd	.LCPI11_1(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	movsd	%xmm0, -80(%rbp)
	movsd	.LCPI11_0(%rip), %xmm0          # xmm0 = [-1.0E+0,0.0E+0]
	movsd	%xmm0, -32(%rbp)
	leaq	-336(%rbp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx                      # imm = 0x100
	callq	memset@PLT
	movl	$0, -348(%rbp)
.LBB11_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	cmpl	$2, -348(%rbp)
	jge	.LBB11_8
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	movl	$0, -352(%rbp)
.LBB11_3:                               #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -352(%rbp)
	jge	.LBB11_6
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=2
	movslq	-348(%rbp), %rcx
	leaq	-336(%rbp), %rax
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-352(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-348(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-352(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movl	-348(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	leaq	-336(%rbp), %rax
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	-352(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-348(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-352(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
# %bb.5:                                #   in Loop: Header=BB11_3 Depth=2
	movl	-352(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -352(%rbp)
	jmp	.LBB11_3
.LBB11_6:                               #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               #   in Loop: Header=BB11_1 Depth=1
	movl	-348(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -348(%rbp)
	jmp	.LBB11_1
.LBB11_8:
	movq	-344(%rbp), %rdi
	leaq	-336(%rbp), %rsi
	callq	apply_matrix
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB11_10
# %bb.9:
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_10:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end11:
	.size	apply_z_q1, .Lfunc_end11-apply_z_q1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function measure_state
.LCPI12_0:
	.quad	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	measure_state
	.p2align	4
	.type	measure_state,@function
measure_state:                          # @measure_state
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$4, -68(%rbp)
	jge	.LBB12_4
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movq	-104(%rbp), %rax                # 8-byte Reload
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1                  # xmm1 = mem[0],zero
	callq	complex_abs_squared
	movslq	-68(%rbp), %rax
	movsd	%xmm0, -48(%rbp,%rax,8)
# %bb.3:                                #   in Loop: Header=BB12_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB12_1
.LBB12_4:
	callq	rand@PLT
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI12_0(%rip), %xmm1          # xmm1 = [2.147483647E+9,0.0E+0]
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	$0, -92(%rbp)
.LBB12_5:                               # =>This Inner Loop Header: Depth=1
	cmpl	$4, -92(%rbp)
	jge	.LBB12_10
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=1
	movslq	-92(%rbp), %rax
	movsd	-48(%rbp,%rax,8), %xmm0         # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-80(%rbp), %xmm1                # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm0                # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB12_8
# %bb.7:
	movl	-92(%rbp), %ecx
	andl	$2, %ecx
	sarl	%ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-92(%rbp), %ecx
	andl	$1, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB12_11
.LBB12_8:                               #   in Loop: Header=BB12_5 Depth=1
	jmp	.LBB12_9
.LBB12_9:                               #   in Loop: Header=BB12_5 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB12_5
.LBB12_10:
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movq	-64(%rbp), %rax
	movl	$1, (%rax)
.LBB12_11:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB12_13
# %bb.12:
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB12_13:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end12:
	.size	measure_state, .Lfunc_end12-measure_state
	.cfi_endproc
                                        # -- End function
	.globl	print_state                     # -- Begin function print_state
	.p2align	4
	.type	print_state,@function
print_state:                            # @print_state
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	.L__const.print_state.basis(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	.L__const.print_state.basis+8(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	.L__const.print_state.basis+16(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	.L__const.print_state.basis+24(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -52(%rbp)
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$4, -52(%rbp)
	jge	.LBB13_4
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp,%rcx,8), %rcx
	movq	%rcx, -88(%rbp)                 # 8-byte Spill
	movslq	-52(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rcx
	addq	%rdx, %rcx
	movsd	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)                # 8-byte Spill
	movslq	-52(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rcx
	addq	%rdx, %rcx
	movsd	8(%rcx), %xmm0                  # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)                # 8-byte Spill
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1                  # xmm1 = mem[0],zero
	callq	complex_abs_squared
	movq	-88(%rbp), %rsi                 # 8-byte Reload
	movsd	-80(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	movsd	-72(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	.L.str.4(%rip), %rdi
	movb	$3, %al
	callq	printf@PLT
# %bb.3:                                #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB13_1
.LBB13_4:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	is_normalized
	testl	%eax, %eax
	leaq	.L.str.6(%rip), %rax
	leaq	.L.str.7(%rip), %rsi
	cmovneq	%rax, %rsi
	leaq	.L.str.5(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	printf@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB13_6
# %bb.5:
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_6:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end13:
	.size	print_state, .Lfunc_end13-print_state
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI14_0:
	.quad	0x3ff0000000000000
	.text
	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -148(%rbp)
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time@PLT
	movl	%eax, %edi
	callq	srand@PLT
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	leaq	-72(%rbp), %rdi
	movsd	.LCPI14_0(%rip), %xmm0
	xorps	%xmm7, %xmm7
	movaps	%xmm7, %xmm1
	movaps	%xmm7, %xmm2
	movaps	%xmm7, %xmm3
	movaps	%xmm7, %xmm4
	movaps	%xmm7, %xmm5
	movaps	%xmm7, %xmm6
	callq	init_state
	leaq	-72(%rbp), %rdi
	callq	apply_hadamard_q1
	leaq	-72(%rbp), %rdi
	callq	apply_cnot
	leaq	.L.str.9(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movups	-72(%rbp), %xmm0
	movups	-56(%rbp), %xmm1
	movups	-40(%rbp), %xmm2
	movups	-24(%rbp), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	print_state
	leaq	.L.str.10(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -152(%rbp)
.LBB14_1:
	cmpl	$10, -152(%rbp)
	jge	.LBB14_4
# %bb.2:
	movups	-72(%rbp), %xmm0
	movups	-56(%rbp), %xmm1
	movups	-40(%rbp), %xmm2
	movups	-24(%rbp), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	leaq	-140(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	measure_state
	movl	-152(%rbp), %esi
	addl	$1, %esi
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %ecx
	leaq	.L.str.11(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.3:
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB14_1
.LBB14_4:
	leaq	.L.str.12(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	leaq	-136(%rbp), %rdi
	movsd	.LCPI14_0(%rip), %xmm0
	xorps	%xmm7, %xmm7
	movaps	%xmm7, %xmm1
	movaps	%xmm7, %xmm2
	movaps	%xmm7, %xmm3
	movaps	%xmm7, %xmm4
	movaps	%xmm7, %xmm5
	movaps	%xmm7, %xmm6
	callq	init_state
	leaq	-136(%rbp), %rdi
	callq	apply_x_q2
	leaq	-136(%rbp), %rdi
	callq	apply_hadamard_q1
	leaq	-136(%rbp), %rdi
	callq	apply_cnot
	leaq	-136(%rbp), %rdi
	callq	apply_z_q1
	leaq	.L.str.9(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movups	-136(%rbp), %xmm0
	movups	-120(%rbp), %xmm1
	movups	-104(%rbp), %xmm2
	movups	-88(%rbp), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	print_state
	leaq	.L.str.10(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -156(%rbp)
.LBB14_5:
	cmpl	$10, -156(%rbp)
	jge	.LBB14_8
# %bb.6:
	movups	-136(%rbp), %xmm0
	movups	-120(%rbp), %xmm1
	movups	-104(%rbp), %xmm2
	movups	-88(%rbp), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	leaq	-140(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	measure_state
	movl	-156(%rbp), %esi
	addl	$1, %esi
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %ecx
	leaq	.L.str.11(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.7:
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB14_5
.LBB14_8:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB14_10
# %bb.9:
	xorl	%eax, %eax
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_10:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end14:
	.size	main, .Lfunc_end14-main
	.cfi_endproc

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"|00>"
	.size	.L.str, 5

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"|01>"
	.size	.L.str.1, 5

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"|10>"
	.size	.L.str.2, 5

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"|11>"
	.size	.L.str.3, 5

	.type	.L__const.print_state.basis,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const.print_state.basis:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.size	.L__const.print_state.basis, 32

	.type	.L.str.4,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"%s: %.3f + %.3fi (prob: %.3f)\n"
	.size	.L.str.4, 31

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"Normalized: %s\n"
	.size	.L.str.5, 16

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"Yes"
	.size	.L.str.6, 4

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"No"
	.size	.L.str.7, 3

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"Example 1: Generate entangled state (|00> + |11>)/sqrt(2)\n"
	.size	.L.str.8, 59

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"Final state:\n"
	.size	.L.str.9, 14

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"Measurement (10 trials):\n"
	.size	.L.str.10, 26

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"Trial %d: q1=%d, q2=%d\n"
	.size	.L.str.11, 24

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"\nExample 2: Circuit with X, H, CNOT, Z\n"
	.size	.L.str.12, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym complex_add
	.addrsig_sym complex_mult
	.addrsig_sym complex_abs_squared
	.addrsig_sym init_state
	.addrsig_sym is_normalized
	.addrsig_sym apply_matrix
	.addrsig_sym apply_cnot
	.addrsig_sym apply_hadamard_q1
	.addrsig_sym sqrt
	.addrsig_sym apply_x_q2
	.addrsig_sym apply_z_q1
	.addrsig_sym measure_state
	.addrsig_sym rand
	.addrsig_sym print_state
	.addrsig_sym printf
	.addrsig_sym srand
	.addrsig_sym time
	.addrsig_sym __stack_chk_fail
