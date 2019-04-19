	.file	"vir_tut1.C"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN4Base2f1Ei,"axG",@progbits,_ZN4Base2f1Ei,comdat
	.align 2
	.weak	_ZN4Base2f1Ei
	.type	_ZN4Base2f1Ei, @function
_ZN4Base2f1Ei:
.LFB971:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movl	%esi, -12(%rbp)	# a, a
	movq	-8(%rbp), %rax	# this, tmp62
	movl	8(%rax), %edx	# this_1(D)->b, D.20889
	movl	-12(%rbp), %eax	# a, tmp63
	addl	%edx, %eax	# D.20889, D.20888
	popq	%rbp	#
	ret
.LFE971:
	.size	_ZN4Base2f1Ei, .-_ZN4Base2f1Ei
	.section	.text._ZN4Base2f2Eii,"axG",@progbits,_ZN4Base2f2Eii,comdat
	.align 2
	.weak	_ZN4Base2f2Eii
	.type	_ZN4Base2f2Eii, @function
_ZN4Base2f2Eii:
.LFB972:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movl	%esi, -12(%rbp)	# i, i
	movl	%edx, -16(%rbp)	# j, j
	movq	-8(%rbp), %rax	# this, tmp63
	movl	8(%rax), %eax	# this_1(D)->b, D.20892
	movl	%eax, %edx	# D.20892, D.20893
	imull	-12(%rbp), %edx	# i, D.20893
	movl	-16(%rbp), %eax	# j, tmp64
	addl	%edx, %eax	# D.20893, D.20891
	popq	%rbp	#
	ret
.LFE972:
	.size	_ZN4Base2f2Eii, .-_ZN4Base2f2Eii
	.section	.text._ZN4Base2f3Ev,"axG",@progbits,_ZN4Base2f3Ev,comdat
	.align 2
	.weak	_ZN4Base2f3Ev
	.type	_ZN4Base2f3Ev, @function
_ZN4Base2f3Ev:
.LFB973:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	-8(%rbp), %rax	# this, tmp63
	movl	8(%rax), %edx	# this_1(D)->b, D.20896
	movq	-8(%rbp), %rax	# this, tmp64
	movl	8(%rax), %eax	# this_1(D)->b, D.20897
	imull	%edx, %eax	# D.20896, D.20895
	popq	%rbp	#
	ret
.LFE973:
	.size	_ZN4Base2f3Ev, .-_ZN4Base2f3Ev
	.section	.text._ZN2D12f1Ei,"axG",@progbits,_ZN2D12f1Ei,comdat
	.align 2
	.weak	_ZN2D12f1Ei
	.type	_ZN2D12f1Ei, @function
_ZN2D12f1Ei:
.LFB974:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movl	%esi, -12(%rbp)	# x, x
	movq	-8(%rbp), %rax	# this, tmp62
	movl	12(%rax), %edx	# this_1(D)->d1, D.20906
	movl	-12(%rbp), %eax	# x, tmp63
	addl	%edx, %eax	# D.20906, D.20905
	popq	%rbp	#
	ret
.LFE974:
	.size	_ZN2D12f1Ei, .-_ZN2D12f1Ei
	.section	.text._ZN2D22f2Eii,"axG",@progbits,_ZN2D22f2Eii,comdat
	.align 2
	.weak	_ZN2D22f2Eii
	.type	_ZN2D22f2Eii, @function
_ZN2D22f2Eii:
.LFB975:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movl	%esi, -12(%rbp)	# k, k
	movl	%edx, -16(%rbp)	# l, l
	movq	-8(%rbp), %rax	# this, tmp65
	movl	12(%rax), %edx	# this_1(D)->D.20764.d1, D.20900
	movq	-8(%rbp), %rax	# this, tmp66
	movl	16(%rax), %eax	# this_1(D)->d2, D.20901
	addl	%eax, %edx	# D.20901, D.20902
	movl	-12(%rbp), %eax	# k, tmp67
	addl	%eax, %edx	# tmp67, D.20903
	movl	-16(%rbp), %eax	# l, tmp68
	addl	%edx, %eax	# D.20903, D.20899
	popq	%rbp	#
	ret
.LFE975:
	.size	_ZN2D22f2Eii, .-_ZN2D22f2Eii
	.section	.text._ZN4BaseC2Ev,"axG",@progbits,_ZN4BaseC5Ev,comdat
	.align 2
	.weak	_ZN4BaseC2Ev
	.type	_ZN4BaseC2Ev, @function
_ZN4BaseC2Ev:
.LFB978:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	-8(%rbp), %rax	# this, tmp59
	movq	$_ZTV4Base+16, (%rax)	#, this_1(D)->_vptr.Base
	popq	%rbp	#
	ret
.LFE978:
	.size	_ZN4BaseC2Ev, .-_ZN4BaseC2Ev
	.weak	_ZN4BaseC1Ev
	.set	_ZN4BaseC1Ev,_ZN4BaseC2Ev
	.section	.text._ZN2D1C2Ev,"axG",@progbits,_ZN2D1C5Ev,comdat
	.align 2
	.weak	_ZN2D1C2Ev
	.type	_ZN2D1C2Ev, @function
_ZN2D1C2Ev:
.LFB981:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	-8(%rbp), %rax	# this, D.20992
	movq	%rax, %rdi	# D.20992,
	call	_ZN4BaseC2Ev	#
	movq	-8(%rbp), %rax	# this, tmp60
	movq	$_ZTV2D1+16, (%rax)	#, this_1(D)->D.20751._vptr.Base
	leave
	ret
.LFE981:
	.size	_ZN2D1C2Ev, .-_ZN2D1C2Ev
	.weak	_ZN2D1C1Ev
	.set	_ZN2D1C1Ev,_ZN2D1C2Ev
	.section	.text._ZN2D2C2Ev,"axG",@progbits,_ZN2D2C5Ev,comdat
	.align 2
	.weak	_ZN2D2C2Ev
	.type	_ZN2D2C2Ev, @function
_ZN2D2C2Ev:
.LFB984:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	-8(%rbp), %rax	# this, D.20993
	movq	%rax, %rdi	# D.20993,
	call	_ZN2D1C2Ev	#
	movq	-8(%rbp), %rax	# this, tmp60
	movq	$_ZTV2D2+16, (%rax)	#, this_1(D)->D.20764.D.20751._vptr.Base
	leave
	ret
.LFE984:
	.size	_ZN2D2C2Ev, .-_ZN2D2C2Ev
	.weak	_ZN2D2C1Ev
	.set	_ZN2D2C1Ev,_ZN2D2C2Ev
	.section	.rodata
.LC0:
	.string	"  "
.LC1:
	.string	" aa[ "
.LC2:
	.string	"]->f1( "
.LC3:
	.string	") = "
.LC4:
	.string	" bb[ "
	.text
	.globl	main
	.type	main, @function
main:
.LFB976:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	subq	$224, %rsp	#,
	movl	$16, -208(%rbp)	#, s1
	movl	$16, -204(%rbp)	#, s2
	movl	$24, -200(%rbp)	#, s3
	movl	-208(%rbp), %eax	# s1, tmp128
	movl	%eax, %esi	# tmp128,
	movl	$_ZSt4cout, %edi	#,
.LEHB0:
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20914,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-204(%rbp), %edx	# s2, tmp129
	movl	%edx, %esi	# tmp129,
	movq	%rax, %rdi	# D.20915,
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20916,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-200(%rbp), %edx	# s3, tmp130
	movl	%edx, %esi	# tmp130,
	movq	%rax, %rdi	# D.20917,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20918,
	call	_ZNSolsEPFRSoS_E	#
	leaq	-192(%rbp), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	_ZN4BaseC1Ev	#
	leaq	-176(%rbp), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	_ZN2D1C1Ev	#
	leaq	-160(%rbp), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	_ZN2D1C1Ev	#
	leaq	-144(%rbp), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	_ZN2D2C1Ev	#
	leaq	-112(%rbp), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	_ZN2D2C1Ev	#
	movl	$5, -184(%rbp)	#, b.b
	movl	$10, -168(%rbp)	#, dd1.D.20751.b
	movl	$11, -164(%rbp)	#, dd1.d1
	movl	$15, -152(%rbp)	#, dd12.D.20751.b
	movl	$16, -148(%rbp)	#, dd12.d1
	movl	$50, -136(%rbp)	#, dd2.D.20764.D.20751.b
	movl	$51, -132(%rbp)	#, dd2.D.20764.d1
	movl	$52, -128(%rbp)	#, dd2.d2
	movl	$60, -104(%rbp)	#, dd22.D.20764.D.20751.b
	movl	$61, -100(%rbp)	#, dd22.D.20764.d1
	movl	$62, -96(%rbp)	#, dd22.d2
	leaq	-192(%rbp), %rax	#, tmp136
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	_ZN4Base2f1Ei	#
	movl	%eax, -208(%rbp)	# tmp137, s1
	leaq	-192(%rbp), %rax	#, tmp138
	movl	$15, %edx	#,
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	_ZN4Base2f2Eii	#
	movl	%eax, -204(%rbp)	# tmp139, s2
	movl	-208(%rbp), %eax	# s1, tmp140
	movl	%eax, %esi	# tmp140,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20919,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-204(%rbp), %edx	# s2, tmp141
	movl	%edx, %esi	# tmp141,
	movq	%rax, %rdi	# D.20920,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20921,
	call	_ZNSolsEPFRSoS_E	#
	leaq	-176(%rbp), %rax	#, tmp142
	movl	$20, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	_ZN2D12f1Ei	#
	movl	%eax, -208(%rbp)	# tmp143, s1
	leaq	-176(%rbp), %rax	#, tmp144
	movl	$35, %edx	#,
	movl	$30, %esi	#,
	movq	%rax, %rdi	# tmp144,
	call	_ZN4Base2f2Eii	#
	movl	%eax, -204(%rbp)	# tmp145, s2
	movl	-208(%rbp), %eax	# s1, tmp146
	movl	%eax, %esi	# tmp146,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20922,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-204(%rbp), %edx	# s2, tmp147
	movl	%edx, %esi	# tmp147,
	movq	%rax, %rdi	# D.20923,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20924,
	call	_ZNSolsEPFRSoS_E	#
	leaq	-144(%rbp), %rax	#, tmp148
	movl	$40, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	_ZN2D12f1Ei	#
	movl	%eax, -208(%rbp)	# tmp149, s1
	leaq	-144(%rbp), %rax	#, tmp150
	movl	$100, %edx	#,
	movl	$50, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	_ZN2D22f2Eii	#
	movl	%eax, -204(%rbp)	# tmp151, s2
	movl	-208(%rbp), %eax	# s1, tmp152
	movl	%eax, %esi	# tmp152,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20925,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-204(%rbp), %edx	# s2, tmp153
	movl	%edx, %esi	# tmp153,
	movq	%rax, %rdi	# D.20926,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20927,
	call	_ZNSolsEPFRSoS_E	#
	movl	$0, -212(%rbp)	#, k
	leaq	-176(%rbp), %rax	#, tmp154
	movq	%rax, -48(%rbp)	# tmp154, aa
	leaq	-144(%rbp), %rax	#, tmp155
	movq	%rax, -40(%rbp)	# tmp155, aa
	leaq	-192(%rbp), %rax	#, tmp156
	movq	%rax, -32(%rbp)	# tmp156, aa
	leaq	-160(%rbp), %rax	#, tmp157
	movq	%rax, -24(%rbp)	# tmp157, aa
	leaq	-112(%rbp), %rax	#, tmp158
	movq	%rax, -16(%rbp)	# tmp158, aa
	jmp	.L15	#
.L16:
	movl	-212(%rbp), %eax	# k, tmp162
	cltq
	movq	-48(%rbp,%rax,8), %rax	# aa, D.20934
	movq	(%rax), %rax	# D.20934_43->_vptr.Base, D.20935
	movq	(%rax), %rax	# *D.20935_44, D.20936
	movl	-212(%rbp), %edx	# k, tmp164
	movslq	%edx, %rdx	# tmp164, tmp163
	movq	-48(%rbp,%rdx,8), %rdx	# aa, D.20937
	movl	-212(%rbp), %ecx	# k, tmp165
	movl	%ecx, %esi	# tmp165,
	movq	%rdx, %rdi	# D.20937,
	call	*%rax	# D.20936
	movl	%eax, -196(%rbp)	# D.20976, res
	movl	$.LC1, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-212(%rbp), %edx	# k, tmp166
	movl	%edx, %esi	# tmp166,
	movq	%rax, %rdi	# D.20938,
	call	_ZNSolsEi	#
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.20939,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-212(%rbp), %edx	# k, tmp167
	movl	%edx, %esi	# tmp167,
	movq	%rax, %rdi	# D.20940,
	call	_ZNSolsEi	#
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.20941,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-196(%rbp), %edx	# res, tmp168
	movl	%edx, %esi	# tmp168,
	movq	%rax, %rdi	# D.20942,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20943,
	call	_ZNSolsEPFRSoS_E	#
	addl	$1, -212(%rbp)	#, k
.L15:
	cmpl	$4, -212(%rbp)	#, k
	setle	%al	#, D.20931
	testb	%al, %al	# D.20931
	jne	.L16	#,
	leaq	-176(%rbp), %rax	#, tmp169
	movq	%rax, -80(%rbp)	# tmp169, bb
	leaq	-160(%rbp), %rax	#, tmp170
	movq	%rax, -72(%rbp)	# tmp170, bb
	leaq	-144(%rbp), %rax	#, tmp171
	movq	%rax, -64(%rbp)	# tmp171, bb
	leaq	-112(%rbp), %rax	#, tmp172
	movq	%rax, -56(%rbp)	# tmp172, bb
	movl	$0, -212(%rbp)	#, k
	jmp	.L17	#
.L18:
	movl	-212(%rbp), %eax	# k, tmp176
	cltq
	movq	-80(%rbp,%rax,8), %rax	# bb, D.20950
	movq	(%rax), %rax	# D.20950_65->D.20751._vptr.Base, D.20951
	movq	(%rax), %rax	# *D.20951_66, D.20952
	movl	-212(%rbp), %edx	# k, tmp178
	movslq	%edx, %rdx	# tmp178, tmp177
	movq	-80(%rbp,%rdx,8), %rdx	# bb, D.20953
	movl	-212(%rbp), %ecx	# k, tmp179
	movl	%ecx, %esi	# tmp179,
	movq	%rdx, %rdi	# D.20953,
	call	*%rax	# D.20952
	movl	%eax, -196(%rbp)	# D.20983, res
	movl	$.LC4, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-212(%rbp), %edx	# k, tmp180
	movl	%edx, %esi	# tmp180,
	movq	%rax, %rdi	# D.20954,
	call	_ZNSolsEi	#
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.20955,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-212(%rbp), %edx	# k, tmp181
	movl	%edx, %esi	# tmp181,
	movq	%rax, %rdi	# D.20956,
	call	_ZNSolsEi	#
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.20957,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-196(%rbp), %edx	# res, tmp182
	movl	%edx, %esi	# tmp182,
	movq	%rax, %rdi	# D.20958,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20959,
	call	_ZNSolsEPFRSoS_E	#
.LEHE0:
	addl	$1, -212(%rbp)	#, k
.L17:
	cmpl	$3, -212(%rbp)	#, k
	setle	%al	#, D.20947
	testb	%al, %al	# D.20947
	jne	.L18	#,
	movl	$0, %eax	#, D.20960
	jmp	.L22	#
.L21:
	movq	%rax, %rdi	# D.21082,
.LEHB1:
	call	_Unwind_Resume	#
.LEHE1:
.L22:
	leave
	ret
.LFE976:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA976:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE976-.LLSDACSB976
.LLSDACSB976:
	.uleb128 .LEHB0-.LFB976
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L21-.LFB976
	.uleb128 0
	.uleb128 .LEHB1-.LFB976
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE976:
	.text
	.size	main, .-main
	.weak	_ZTV2D2
	.section	.rodata._ZTV2D2,"aG",@progbits,_ZTV2D2,comdat
	.align 32
	.type	_ZTV2D2, @object
	.size	_ZTV2D2, 40
_ZTV2D2:
	.quad	0
	.quad	_ZTI2D2
	.quad	_ZN2D12f1Ei
	.quad	_ZN2D22f2Eii
	.quad	_ZN4Base2f3Ev
	.weak	_ZTV2D1
	.section	.rodata._ZTV2D1,"aG",@progbits,_ZTV2D1,comdat
	.align 32
	.type	_ZTV2D1, @object
	.size	_ZTV2D1, 40
_ZTV2D1:
	.quad	0
	.quad	_ZTI2D1
	.quad	_ZN2D12f1Ei
	.quad	_ZN4Base2f2Eii
	.quad	_ZN4Base2f3Ev
	.weak	_ZTV4Base
	.section	.rodata._ZTV4Base,"aG",@progbits,_ZTV4Base,comdat
	.align 32
	.type	_ZTV4Base, @object
	.size	_ZTV4Base, 40
_ZTV4Base:
	.quad	0
	.quad	_ZTI4Base
	.quad	_ZN4Base2f1Ei
	.quad	_ZN4Base2f2Eii
	.quad	_ZN4Base2f3Ev
	.weak	_ZTS2D2
	.section	.rodata._ZTS2D2,"aG",@progbits,_ZTS2D2,comdat
	.type	_ZTS2D2, @object
	.size	_ZTS2D2, 4
_ZTS2D2:
	.string	"2D2"
	.weak	_ZTI2D2
	.section	.rodata._ZTI2D2,"aG",@progbits,_ZTI2D2,comdat
	.align 16
	.type	_ZTI2D2, @object
	.size	_ZTI2D2, 24
_ZTI2D2:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTS2D2
# <anonymous>:
	.quad	_ZTI2D1
	.weak	_ZTS2D1
	.section	.rodata._ZTS2D1,"aG",@progbits,_ZTS2D1,comdat
	.type	_ZTS2D1, @object
	.size	_ZTS2D1, 4
_ZTS2D1:
	.string	"2D1"
	.weak	_ZTI2D1
	.section	.rodata._ZTI2D1,"aG",@progbits,_ZTI2D1,comdat
	.align 16
	.type	_ZTI2D1, @object
	.size	_ZTI2D1, 24
_ZTI2D1:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTS2D1
# <anonymous>:
	.quad	_ZTI4Base
	.weak	_ZTS4Base
	.section	.rodata._ZTS4Base,"aG",@progbits,_ZTS4Base,comdat
	.type	_ZTS4Base, @object
	.size	_ZTS4Base, 6
_ZTS4Base:
	.string	"4Base"
	.weak	_ZTI4Base
	.section	.rodata._ZTI4Base,"aG",@progbits,_ZTI4Base,comdat
	.align 16
	.type	_ZTI4Base, @object
	.size	_ZTI4Base, 16
_ZTI4Base:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
# <anonymous>:
	.quad	_ZTS4Base
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB994:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L23	#,
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L23	#,
	movl	$_ZStL8__ioinit, %edi	#,
	call	_ZNSt8ios_base4InitC1Ev	#
	movl	$__dso_handle, %edx	#,
	movl	$_ZStL8__ioinit, %esi	#,
	movl	$_ZNSt8ios_base4InitD1Ev, %edi	#,
	call	__cxa_atexit	#
.L23:
	leave
	ret
.LFE994:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB995:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	ret
.LFE995:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-1ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
