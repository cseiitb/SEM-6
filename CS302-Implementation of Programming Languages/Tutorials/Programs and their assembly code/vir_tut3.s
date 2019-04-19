	.file	"vir_tut3.C"
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
	movl	(%rax), %edx	# this_1(D)->b, D.20983
	movl	-12(%rbp), %eax	# a, tmp63
	addl	%edx, %eax	# D.20983, D.20982
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
	movl	(%rax), %eax	# this_1(D)->b, D.20979
	movl	%eax, %edx	# D.20979, D.20980
	imull	-12(%rbp), %edx	# i, D.20980
	movl	-16(%rbp), %eax	# j, tmp64
	addl	%edx, %eax	# D.20980, D.20978
	popq	%rbp	#
	ret
.LFE972:
	.size	_ZN4Base2f2Eii, .-_ZN4Base2f2Eii
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
	movl	12(%rax), %edx	# this_1(D)->d1, D.20895
	movl	-12(%rbp), %eax	# x, tmp63
	addl	%edx, %eax	# D.20895, D.20894
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
	movl	12(%rax), %edx	# this_1(D)->D.20761.d1, D.20889
	movq	-8(%rbp), %rax	# this, tmp66
	movl	16(%rax), %eax	# this_1(D)->d2, D.20890
	addl	%eax, %edx	# D.20890, D.20891
	movl	-12(%rbp), %eax	# k, tmp67
	addl	%eax, %edx	# tmp67, D.20892
	movl	-16(%rbp), %eax	# l, tmp68
	addl	%edx, %eax	# D.20892, D.20888
	popq	%rbp	#
	ret
.LFE975:
	.size	_ZN2D22f2Eii, .-_ZN2D22f2Eii
	.section	.text._ZN4BaseC2Ev,"axG",@progbits,_ZN4BaseC5Ev,comdat
	.align 2
	.weak	_ZN4BaseC2Ev
	.type	_ZN4BaseC2Ev, @function
_ZN4BaseC2Ev:
.LFB979:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movq	%rdi, -8(%rbp)	# this, this
	popq	%rbp	#
	ret
.LFE979:
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
	movq	-8(%rbp), %rax	# this, tmp60
	addq	$8, %rax	#, D.20976
	movq	%rax, %rdi	# D.20976,
	call	_ZN4BaseC2Ev	#
	movq	-8(%rbp), %rax	# this, tmp61
	movq	$_ZTV2D1+16, (%rax)	#, this_1(D)->_vptr.D1
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
	movq	-8(%rbp), %rax	# this, D.20977
	movq	%rax, %rdi	# D.20977,
	call	_ZN2D1C2Ev	#
	movq	-8(%rbp), %rax	# this, tmp60
	movq	$_ZTV2D2+16, (%rax)	#, this_1(D)->D.20761._vptr.D1
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
	subq	$208, %rsp	#,
	movl	$4, -192(%rbp)	#, s1
	movl	$16, -188(%rbp)	#, s2
	movl	$24, -184(%rbp)	#, s3
	movl	-192(%rbp), %eax	# s1, tmp123
	movl	%eax, %esi	# tmp123,
	movl	$_ZSt4cout, %edi	#,
.LEHB0:
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20903,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-188(%rbp), %edx	# s2, tmp124
	movl	%edx, %esi	# tmp124,
	movq	%rax, %rdi	# D.20904,
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20905,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-184(%rbp), %edx	# s3, tmp125
	movl	%edx, %esi	# tmp125,
	movq	%rax, %rdi	# D.20906,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20907,
	call	_ZNSolsEPFRSoS_E	#
	leaq	-176(%rbp), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	_ZN2D1C1Ev	#
	leaq	-160(%rbp), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	_ZN2D1C1Ev	#
	leaq	-144(%rbp), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	_ZN2D2C1Ev	#
	leaq	-112(%rbp), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	_ZN2D2C1Ev	#
	movl	$5, -208(%rbp)	#, b.b
	movl	$10, -168(%rbp)	#, dd1.D.20747.b
	movl	$11, -164(%rbp)	#, dd1.d1
	movl	$15, -152(%rbp)	#, dd12.D.20747.b
	movl	$16, -148(%rbp)	#, dd12.d1
	movl	$50, -136(%rbp)	#, dd2.D.20761.D.20747.b
	movl	$51, -132(%rbp)	#, dd2.D.20761.d1
	movl	$52, -128(%rbp)	#, dd2.d2
	movl	$60, -104(%rbp)	#, dd22.D.20761.D.20747.b
	movl	$61, -100(%rbp)	#, dd22.D.20761.d1
	movl	$62, -96(%rbp)	#, dd22.d2
	leaq	-208(%rbp), %rax	#, tmp130
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	_ZN4Base2f1Ei	#
	movl	%eax, -192(%rbp)	# tmp131, s1
	leaq	-208(%rbp), %rax	#, tmp132
	movl	$15, %edx	#,
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	_ZN4Base2f2Eii	#
	movl	%eax, -188(%rbp)	# tmp133, s2
	movl	-192(%rbp), %eax	# s1, tmp134
	movl	%eax, %esi	# tmp134,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20908,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-188(%rbp), %edx	# s2, tmp135
	movl	%edx, %esi	# tmp135,
	movq	%rax, %rdi	# D.20909,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20910,
	call	_ZNSolsEPFRSoS_E	#
	leaq	-176(%rbp), %rax	#, tmp136
	movl	$20, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	_ZN2D12f1Ei	#
	movl	%eax, -192(%rbp)	# tmp137, s1
	leaq	-176(%rbp), %rax	#, tmp138
	addq	$8, %rax	#, tmp139
	movl	$35, %edx	#,
	movl	$30, %esi	#,
	movq	%rax, %rdi	# tmp139,
	call	_ZN4Base2f2Eii	#
	movl	%eax, -188(%rbp)	# tmp140, s2
	movl	-192(%rbp), %eax	# s1, tmp141
	movl	%eax, %esi	# tmp141,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20911,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-188(%rbp), %edx	# s2, tmp142
	movl	%edx, %esi	# tmp142,
	movq	%rax, %rdi	# D.20912,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20913,
	call	_ZNSolsEPFRSoS_E	#
	leaq	-144(%rbp), %rax	#, tmp143
	movl	$40, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	_ZN2D12f1Ei	#
	movl	%eax, -192(%rbp)	# tmp144, s1
	leaq	-144(%rbp), %rax	#, tmp145
	movl	$100, %edx	#,
	movl	$50, %esi	#,
	movq	%rax, %rdi	# tmp145,
	call	_ZN2D22f2Eii	#
	movl	%eax, -188(%rbp)	# tmp146, s2
	movl	-192(%rbp), %eax	# s1, tmp147
	movl	%eax, %esi	# tmp147,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20914,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-188(%rbp), %edx	# s2, tmp148
	movl	%edx, %esi	# tmp148,
	movq	%rax, %rdi	# D.20915,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20916,
	call	_ZNSolsEPFRSoS_E	#
	movl	$0, -196(%rbp)	#, k
	leaq	-176(%rbp), %rax	#, tmp149
	addq	$8, %rax	#, tmp150
	movq	%rax, -48(%rbp)	# tmp150, aa
	leaq	-144(%rbp), %rax	#, tmp151
	addq	$8, %rax	#, tmp152
	movq	%rax, -40(%rbp)	# tmp152, aa
	leaq	-208(%rbp), %rax	#, tmp153
	movq	%rax, -32(%rbp)	# tmp153, aa
	leaq	-160(%rbp), %rax	#, tmp154
	addq	$8, %rax	#, tmp155
	movq	%rax, -24(%rbp)	# tmp155, aa
	leaq	-112(%rbp), %rax	#, tmp156
	addq	$8, %rax	#, tmp157
	movq	%rax, -16(%rbp)	# tmp157, aa
	jmp	.L13	#
.L14:
	movl	-196(%rbp), %eax	# k, tmp159
	cltq
	movq	-48(%rbp,%rax,8), %rax	# aa, D.20922
	movl	-196(%rbp), %edx	# k, tmp160
	movl	%edx, %esi	# tmp160,
	movq	%rax, %rdi	# D.20922,
	call	_ZN4Base2f1Ei	#
	movl	%eax, -180(%rbp)	# tmp161, res
	movl	$.LC1, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-196(%rbp), %edx	# k, tmp162
	movl	%edx, %esi	# tmp162,
	movq	%rax, %rdi	# D.20923,
	call	_ZNSolsEi	#
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.20924,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-196(%rbp), %edx	# k, tmp163
	movl	%edx, %esi	# tmp163,
	movq	%rax, %rdi	# D.20925,
	call	_ZNSolsEi	#
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.20926,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-180(%rbp), %edx	# res, tmp164
	movl	%edx, %esi	# tmp164,
	movq	%rax, %rdi	# D.20927,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20928,
	call	_ZNSolsEPFRSoS_E	#
	addl	$1, -196(%rbp)	#, k
.L13:
	cmpl	$4, -196(%rbp)	#, k
	setle	%al	#, D.20920
	testb	%al, %al	# D.20920
	jne	.L14	#,
	leaq	-176(%rbp), %rax	#, tmp165
	movq	%rax, -80(%rbp)	# tmp165, bb
	leaq	-160(%rbp), %rax	#, tmp166
	movq	%rax, -72(%rbp)	# tmp166, bb
	leaq	-144(%rbp), %rax	#, tmp167
	movq	%rax, -64(%rbp)	# tmp167, bb
	leaq	-112(%rbp), %rax	#, tmp168
	movq	%rax, -56(%rbp)	# tmp168, bb
	movl	$0, -196(%rbp)	#, k
	jmp	.L15	#
.L16:
	movl	-196(%rbp), %eax	# k, tmp172
	cltq
	movq	-80(%rbp,%rax,8), %rax	# bb, D.20935
	movq	(%rax), %rax	# D.20935_60->_vptr.D1, D.20936
	movq	(%rax), %rax	# *D.20936_61, D.20937
	movl	-196(%rbp), %edx	# k, tmp174
	movslq	%edx, %rdx	# tmp174, tmp173
	movq	-80(%rbp,%rdx,8), %rdx	# bb, D.20938
	movl	-196(%rbp), %ecx	# k, tmp175
	movl	%ecx, %esi	# tmp175,
	movq	%rdx, %rdi	# D.20938,
	call	*%rax	# D.20937
	movl	%eax, -180(%rbp)	# D.20967, res
	movl	$.LC4, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-196(%rbp), %edx	# k, tmp176
	movl	%edx, %esi	# tmp176,
	movq	%rax, %rdi	# D.20939,
	call	_ZNSolsEi	#
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.20940,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-196(%rbp), %edx	# k, tmp177
	movl	%edx, %esi	# tmp177,
	movq	%rax, %rdi	# D.20941,
	call	_ZNSolsEi	#
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.20942,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-180(%rbp), %edx	# res, tmp178
	movl	%edx, %esi	# tmp178,
	movq	%rax, %rdi	# D.20943,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20944,
	call	_ZNSolsEPFRSoS_E	#
.LEHE0:
	addl	$1, -196(%rbp)	#, k
.L15:
	cmpl	$3, -196(%rbp)	#, k
	setle	%al	#, D.20932
	testb	%al, %al	# D.20932
	jne	.L16	#,
	movl	$0, %eax	#, D.20945
	jmp	.L20	#
.L19:
	movq	%rax, %rdi	# D.21072,
.LEHB1:
	call	_Unwind_Resume	#
.LEHE1:
.L20:
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
	.uleb128 .L19-.LFB976
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
	.size	_ZTV2D2, 32
_ZTV2D2:
	.quad	0
	.quad	_ZTI2D2
	.quad	_ZN2D12f1Ei
	.quad	_ZN2D22f2Eii
	.weak	_ZTV2D1
	.section	.rodata._ZTV2D1,"aG",@progbits,_ZTV2D1,comdat
	.align 16
	.type	_ZTV2D1, @object
	.size	_ZTV2D1, 24
_ZTV2D1:
	.quad	0
	.quad	_ZTI2D1
	.quad	_ZN2D12f1Ei
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
	.align 32
	.type	_ZTI2D1, @object
	.size	_ZTI2D1, 40
_ZTI2D1:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
# <anonymous>:
	.quad	_ZTS2D1
# <anonymous>:
	.long	0
# <anonymous>:
	.long	1
# <anonymous>:
# <anonymous>:
	.quad	_ZTI4Base
# <anonymous>:
	.quad	2050
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
	jne	.L21	#,
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L21	#,
	movl	$_ZStL8__ioinit, %edi	#,
	call	_ZNSt8ios_base4InitC1Ev	#
	movl	$__dso_handle, %edx	#,
	movl	$_ZStL8__ioinit, %esi	#,
	movl	$_ZNSt8ios_base4InitD1Ev, %edi	#,
	call	__cxa_atexit	#
.L21:
	leave
	ret
.LFE994:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
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
