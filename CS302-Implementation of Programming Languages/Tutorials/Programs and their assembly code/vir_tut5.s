	.file	"vir_tut5.C"
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
	movl	(%rax), %edx	# this_1(D)->b, D.20934
	movl	-12(%rbp), %eax	# a, tmp63
	addl	%edx, %eax	# D.20934, D.20933
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
	movl	(%rax), %eax	# this_1(D)->b, D.20930
	movl	%eax, %edx	# D.20930, D.20931
	imull	-12(%rbp), %edx	# i, D.20931
	movl	-16(%rbp), %eax	# j, tmp64
	addl	%edx, %eax	# D.20931, D.20929
	popq	%rbp	#
	ret
.LFE972:
	.size	_ZN4Base2f2Eii, .-_ZN4Base2f2Eii
	.section	.text._ZN2D12f1Ev,"axG",@progbits,_ZN2D12f1Ev,comdat
	.align 2
	.weak	_ZN2D12f1Ev
	.type	_ZN2D12f1Ev, @function
_ZN2D12f1Ev:
.LFB973:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	-8(%rbp), %rax	# this, tmp63
	movl	12(%rax), %edx	# this_1(D)->d1, D.20886
	movq	-8(%rbp), %rax	# this, tmp64
	movl	8(%rax), %eax	# this_1(D)->D.20743.b, D.20887
	addl	%edx, %eax	# D.20886, D.20885
	popq	%rbp	#
	ret
.LFE973:
	.size	_ZN2D12f1Ev, .-_ZN2D12f1Ev
	.section	.text._ZN2D22f1Ei,"axG",@progbits,_ZN2D22f1Ei,comdat
	.align 2
	.weak	_ZN2D22f1Ei
	.type	_ZN2D22f1Ei, @function
_ZN2D22f1Ei:
.LFB974:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movl	%esi, -12(%rbp)	# k, k
	movq	-8(%rbp), %rax	# this, tmp62
	movl	16(%rax), %edx	# this_1(D)->d2, D.20883
	movl	-12(%rbp), %eax	# k, tmp63
	addl	%edx, %eax	# D.20883, D.20882
	popq	%rbp	#
	ret
.LFE974:
	.size	_ZN2D22f1Ei, .-_ZN2D22f1Ei
	.section	.text._ZN4BaseC2Ev,"axG",@progbits,_ZN4BaseC5Ev,comdat
	.align 2
	.weak	_ZN4BaseC2Ev
	.type	_ZN4BaseC2Ev, @function
_ZN4BaseC2Ev:
.LFB978:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movq	%rdi, -8(%rbp)	# this, this
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
.LFB980:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	-8(%rbp), %rax	# this, tmp60
	addq	$8, %rax	#, D.20927
	movq	%rax, %rdi	# D.20927,
	call	_ZN4BaseC2Ev	#
	movq	-8(%rbp), %rax	# this, tmp61
	movq	$_ZTV2D1+16, (%rax)	#, this_1(D)->_vptr.D1
	leave
	ret
.LFE980:
	.size	_ZN2D1C2Ev, .-_ZN2D1C2Ev
	.weak	_ZN2D1C1Ev
	.set	_ZN2D1C1Ev,_ZN2D1C2Ev
	.section	.text._ZN2D2C2Ev,"axG",@progbits,_ZN2D2C5Ev,comdat
	.align 2
	.weak	_ZN2D2C2Ev
	.type	_ZN2D2C2Ev, @function
_ZN2D2C2Ev:
.LFB983:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	-8(%rbp), %rax	# this, D.20928
	movq	%rax, %rdi	# D.20928,
	call	_ZN2D1C2Ev	#
	movq	-8(%rbp), %rax	# this, tmp60
	movq	$_ZTV2D2+16, (%rax)	#, this_1(D)->D.20756._vptr.D1
	leave
	ret
.LFE983:
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB975:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	subq	$160, %rsp	#,
	movl	$4, -144(%rbp)	#, s1
	movl	$16, -140(%rbp)	#, s2
	movl	$24, -136(%rbp)	#, s3
	movl	-144(%rbp), %eax	# s1, tmp86
	movl	%eax, %esi	# tmp86,
	movl	$_ZSt4cout, %edi	#,
.LEHB0:
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20895,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-140(%rbp), %edx	# s2, tmp87
	movl	%edx, %esi	# tmp87,
	movq	%rax, %rdi	# D.20896,
	call	_ZNSolsEi	#
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.20897,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-136(%rbp), %edx	# s3, tmp88
	movl	%edx, %esi	# tmp88,
	movq	%rax, %rdi	# D.20898,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20899,
	call	_ZNSolsEPFRSoS_E	#
	leaq	-128(%rbp), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZN2D1C1Ev	#
	leaq	-112(%rbp), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	_ZN2D1C1Ev	#
	leaq	-96(%rbp), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	_ZN2D2C1Ev	#
	leaq	-64(%rbp), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_ZN2D2C1Ev	#
	movl	$5, -160(%rbp)	#, b.b
	movl	$10, -120(%rbp)	#, dd1.D.20743.b
	movl	$11, -116(%rbp)	#, dd1.d1
	movl	$15, -104(%rbp)	#, dd12.D.20743.b
	movl	$16, -100(%rbp)	#, dd12.d1
	movl	$50, -88(%rbp)	#, dd2.D.20756.D.20743.b
	movl	$52, -80(%rbp)	#, dd2.d2
	movl	$60, -56(%rbp)	#, dd22.D.20756.D.20743.b
	movl	$62, -48(%rbp)	#, dd22.d2
	leaq	-160(%rbp), %rax	#, tmp93
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	_ZN4Base2f1Ei	#
	movl	%eax, -144(%rbp)	# tmp94, s1
	leaq	-128(%rbp), %rax	#, tmp95
	addq	$8, %rax	#, tmp96
	movl	$25, %edx	#,
	movl	$20, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	_ZN4Base2f2Eii	#
	movl	%eax, -140(%rbp)	# tmp97, s2
	leaq	-96(%rbp), %rax	#, tmp98
	addq	$8, %rax	#, tmp99
	movl	$100, %edx	#,
	movl	$50, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	_ZN4Base2f2Eii	#
	movl	%eax, -136(%rbp)	# tmp100, s3
	leaq	-128(%rbp), %rax	#, tmp101
	addq	$8, %rax	#, tmp102
	movq	%rax, -32(%rbp)	# tmp102, aa
	leaq	-96(%rbp), %rax	#, tmp103
	addq	$8, %rax	#, tmp104
	movq	%rax, -24(%rbp)	# tmp104, aa
	leaq	-160(%rbp), %rax	#, tmp105
	movq	%rax, -16(%rbp)	# tmp105, aa
	movl	$0, -148(%rbp)	#, k
	jmp	.L13	#
.L14:
	movl	-148(%rbp), %eax	# k, tmp107
	cltq
	movq	-32(%rbp,%rax,8), %rax	# aa, D.20905
	movl	-148(%rbp), %edx	# k, tmp108
	movl	%edx, %esi	# tmp108,
	movq	%rax, %rdi	# D.20905,
	call	_ZN4Base2f1Ei	#
	movl	%eax, -132(%rbp)	# tmp109, res
	movl	$.LC1, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-148(%rbp), %edx	# k, tmp110
	movl	%edx, %esi	# tmp110,
	movq	%rax, %rdi	# D.20906,
	call	_ZNSolsEi	#
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.20907,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-148(%rbp), %edx	# k, tmp111
	movl	%edx, %esi	# tmp111,
	movq	%rax, %rdi	# D.20908,
	call	_ZNSolsEi	#
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.20909,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	-132(%rbp), %edx	# res, tmp112
	movl	%edx, %esi	# tmp112,
	movq	%rax, %rdi	# D.20910,
	call	_ZNSolsEi	#
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi	#,
	movq	%rax, %rdi	# D.20911,
	call	_ZNSolsEPFRSoS_E	#
.LEHE0:
	addl	$1, -148(%rbp)	#, k
.L13:
	cmpl	$2, -148(%rbp)	#, k
	setle	%al	#, D.20903
	testb	%al, %al	# D.20903
	jne	.L14	#,
	movl	$0, %eax	#, D.20912
	jmp	.L18	#
.L17:
	movq	%rax, %rdi	# D.21023,
.LEHB1:
	call	_Unwind_Resume	#
.LEHE1:
.L18:
	leave
	ret
.LFE975:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA975:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE975-.LLSDACSB975
.LLSDACSB975:
	.uleb128 .LEHB0-.LFB975
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L17-.LFB975
	.uleb128 0
	.uleb128 .LEHB1-.LFB975
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE975:
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
	.quad	_ZN2D12f1Ev
	.quad	_ZN2D22f1Ei
	.weak	_ZTV2D1
	.section	.rodata._ZTV2D1,"aG",@progbits,_ZTV2D1,comdat
	.align 16
	.type	_ZTV2D1, @object
	.size	_ZTV2D1, 24
_ZTV2D1:
	.quad	0
	.quad	_ZTI2D1
	.quad	_ZN2D12f1Ev
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
.LFB993:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L19	#,
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L19	#,
	movl	$_ZStL8__ioinit, %edi	#,
	call	_ZNSt8ios_base4InitC1Ev	#
	movl	$__dso_handle, %edx	#,
	movl	$_ZStL8__ioinit, %esi	#,
	movl	$_ZNSt8ios_base4InitD1Ev, %edi	#,
	call	__cxa_atexit	#
.L19:
	leave
	ret
.LFE993:
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
.LFB994:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	ret
.LFE994:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-1ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
