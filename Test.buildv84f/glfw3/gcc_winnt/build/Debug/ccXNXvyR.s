	.file	"main.cpp"
	.section	.text$feof,"x"
	.linkonce discard
	.globl	_feof
	.def	_feof;	.scl	2;	.type	32;	.endef
_feof:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$16, %eax
	popl	%ebp
	ret
	.section	.text$_ZnwjPv,"x"
	.linkonce discard
	.globl	__ZnwjPv
	.def	__ZnwjPv;	.scl	2;	.type	32;	.endef
__ZnwjPv:
	pushl	%ebp
	movl	%esp, %ebp
	movl	12(%ebp), %eax
	popl	%ebp
	ret
	.section	.text$_ZdlPvS_,"x"
	.linkonce discard
	.globl	__ZdlPvS_
	.def	__ZdlPvS_;	.scl	2;	.type	32;	.endef
__ZdlPvS_:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.def	___divdi3;	.scl	2;	.type	32;	.endef
	.def	___gxx_personality_sj0;	.scl	2;	.type	32;	.endef
	.def	__Unwind_SjLj_Register;	.scl	2;	.type	32;	.endef
	.def	__Unwind_SjLj_Unregister;	.scl	2;	.type	32;	.endef
	.text
	.globl	__Z9gc_microsv
	.def	__Z9gc_microsv;	.scl	2;	.type	32;	.endef
__Z9gc_microsv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA575, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L17, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	__ZZ9gc_microsvE1f, %eax
	testl	%eax, %eax
	jne	L7
	movl	$__ZZ9gc_microsvE3pcf, (%esp)
	movl	$-1, -88(%ebp)
	call	_QueryPerformanceFrequency@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L8
	movl	__ZZ9gc_microsvE3pcf, %eax
	movl	__ZZ9gc_microsvE3pcf+4, %edx
	testl	%edx, %edx
	js	L8
	testl	%edx, %edx
	jg	L19
	cmpl	$999999, %eax
	jbe	L8
L19:
	movl	$1, %eax
	jmp	L10
L8:
	movl	$0, %eax
L10:
	testb	%al, %al
	je	L11
	movl	__ZZ9gc_microsvE3pcf, %eax
	movl	__ZZ9gc_microsvE3pcf+4, %edx
	movl	$1000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	%eax, __ZZ9gc_microsvE3pcf
	movl	%edx, __ZZ9gc_microsvE3pcf+4
	movl	$1, __ZZ9gc_microsvE1f
	jmp	L7
L11:
	movl	$-1, __ZZ9gc_microsvE1f
L7:
	movl	__ZZ9gc_microsvE1f, %eax
	testl	%eax, %eax
	jle	L13
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -88(%ebp)
	call	_QueryPerformanceCounter@4
	subl	$4, %esp
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L14
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	__ZZ9gc_microsvE3pcf, %ecx
	movl	__ZZ9gc_microsvE3pcf+4, %ebx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	jmp	L15
L14:
	movl	$-1, __ZZ9gc_microsvE1f
L13:
	movl	$0, %eax
L15:
	movl	%eax, -96(%ebp)
	jmp	L20
L17:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L20:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-96(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA575:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE575-LLSDACSB575
LLSDACSB575:
	.uleb128 0
	.uleb128 0
LLSDACSE575:
	.text
	.section	.text$_ZN9gc_objectD2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9gc_objectD2Ev
	.def	__ZN9gc_objectD2Ev;	.scl	2;	.type	32;	.endef
__ZN9gc_objectD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV9gc_object+8, (%eax)
	movl	$0, %eax
	testl	%eax, %eax
	je	L21
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L21:
	leave
	ret
	.section	.text$_ZN9gc_objectD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9gc_objectD1Ev
	.def	__ZN9gc_objectD1Ev;	.scl	2;	.type	32;	.endef
__ZN9gc_objectD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV9gc_object+8, (%eax)
	movl	$0, %eax
	testl	%eax, %eax
	je	L24
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L24:
	leave
	ret
	.section	.text$_ZN9gc_objectD0Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9gc_objectD0Ev
	.def	__ZN9gc_objectD0Ev;	.scl	2;	.type	32;	.endef
__ZN9gc_objectD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_objectD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	leave
	ret
	.section	.text$_ZN9gc_object4markEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9gc_object4markEv
	.def	__ZN9gc_object4markEv;	.scl	2;	.type	32;	.endef
__ZN9gc_object4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret
	.section	.text$_ZN9gc_objectnwEj,"x"
	.linkonce discard
	.globl	__ZN9gc_objectnwEj
	.def	__ZN9gc_objectnwEj;	.scl	2;	.type	32;	.endef
__ZN9gc_objectnwEj:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z15gc_object_alloci
	leave
	ret
	.section	.text$_ZN9gc_objectdlEPv,"x"
	.linkonce discard
	.globl	__ZN9gc_objectdlEPv
	.def	__ZN9gc_objectdlEPv;	.scl	2;	.type	32;	.endef
__ZN9gc_objectdlEPv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z14gc_object_freeP9gc_object
	leave
	ret
	.section	.text$_ZN9gc_objectC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9gc_objectC2Ev
	.def	__ZN9gc_objectC2Ev;	.scl	2;	.type	32;	.endef
__ZN9gc_objectC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$__ZTV9gc_object+8, (%eax)
	leave
	ret
	.section	.text$_ZN9gc_objectC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9gc_objectC1Ev
	.def	__ZN9gc_objectC1Ev;	.scl	2;	.type	32;	.endef
__ZN9gc_objectC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$__ZTV9gc_object+8, (%eax)
	leave
	ret
	.globl	_gc_free_list
	.bss
	.align 4
_gc_free_list:
	.space 16
	.globl	_gc_marked_list
	.align 4
_gc_marked_list:
	.space 16
	.globl	_gc_unmarked_list
	.align 4
_gc_unmarked_list:
	.space 16
	.globl	_gc_queued_list
	.align 4
_gc_queued_list:
	.space 16
	.globl	_gc_free_bytes
	.align 4
_gc_free_bytes:
	.space 4
	.globl	_gc_marked_bytes
	.align 4
_gc_marked_bytes:
	.space 4
	.globl	_gc_alloced_bytes
	.align 4
_gc_alloced_bytes:
	.space 4
	.globl	_gc_max_alloced_bytes
	.align 4
_gc_max_alloced_bytes:
	.space 4
	.globl	_gc_new_bytes
	.align 4
_gc_new_bytes:
	.space 4
	.globl	_gc_markbit
	.data
	.align 4
_gc_markbit:
	.long	1
	.globl	_gc_cache
	.bss
	.align 32
_gc_cache:
	.space 32
	.text
	.globl	__Z8gc_init1v
	.def	__Z8gc_init1v;	.scl	2;	.type	32;	.endef
__Z8gc_init1v:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$_gc_free_list, _gc_free_list+8
	movl	_gc_free_list+8, %eax
	movl	%eax, _gc_free_list+4
	movl	$_gc_marked_list, _gc_marked_list+8
	movl	_gc_marked_list+8, %eax
	movl	%eax, _gc_marked_list+4
	movl	$_gc_unmarked_list, _gc_unmarked_list+8
	movl	_gc_unmarked_list+8, %eax
	movl	%eax, _gc_unmarked_list+4
	movl	$_gc_queued_list, _gc_queued_list+8
	movl	_gc_queued_list+8, %eax
	movl	%eax, _gc_queued_list+4
	popl	%ebp
	ret
	.globl	__Z8gc_init2v
	.def	__Z8gc_init2v;	.scl	2;	.type	32;	.endef
__Z8gc_init2v:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	call	__Z7gc_markv
	leave
	ret
.lcomm __ZL16gc_ext_new_bytes,4,4
	.globl	__Z15gc_ext_mallocedi
	.def	__Z15gc_ext_mallocedi;	.scl	2;	.type	32;	.endef
__Z15gc_ext_mallocedi:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	lock addl	%eax, __ZL16gc_ext_new_bytes
	popl	%ebp
	ret
	.globl	__Z14gc_object_freeP9gc_object
	.def	__Z14gc_object_freeP9gc_object;	.scl	2;	.type	32;	.endef
__Z14gc_object_freeP9gc_object:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	andl	$-8, %eax
	movl	%eax, -12(%ebp)
	movl	_gc_free_bytes, %eax
	subl	-12(%ebp), %eax
	movl	%eax, _gc_free_bytes
	cmpl	$63, -12(%ebp)
	jg	L39
	movl	-12(%ebp), %eax
	sarl	$3, %eax
	movl	_gc_cache(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, _gc_cache(,%edx,4)
	jmp	L38
L39:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L38:
	leave
	ret
	.globl	__Z13gc_flush_freei
	.def	__Z13gc_flush_freei;	.scl	2;	.type	32;	.endef
__Z13gc_flush_freei:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	_gc_free_bytes, %eax
	subl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	L42
	movl	$0, -12(%ebp)
L42:
	jmp	L43
L44:
	movl	_gc_free_list+4, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	-16(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, 4(%eax)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	-16(%ebp), %edx
	movl	8(%edx), %edx
	movl	%edx, 8(%eax)
	cmpl	$0, -16(%ebp)
	je	L43
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
L43:
	movl	_gc_free_bytes, %eax
	cmpl	-12(%ebp), %eax
	jg	L44
	leave
	ret
	.globl	__Z15gc_object_alloci
	.def	__Z15gc_object_alloci;	.scl	2;	.type	32;	.endef
__Z15gc_object_alloci:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	addl	$7, %eax
	andl	$-8, %eax
	movl	%eax, 8(%ebp)
	movl	_gc_new_bytes, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, _gc_new_bytes
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z13gc_flush_freei
	cmpl	$63, 8(%ebp)
	jg	L46
	movl	8(%ebp), %eax
	sarl	$3, %eax
	movl	_gc_cache(,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L46
	movl	$1, %eax
	jmp	L47
L46:
	movl	$0, %eax
L47:
	testb	%al, %al
	je	L48
	movl	8(%ebp), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, _gc_cache(,%edx,4)
	jmp	L49
L48:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
L49:
	movl	_gc_markbit, %eax
	orl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	_gc_unmarked_list+8, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	$_gc_unmarked_list, 4(%eax)
	movl	_gc_unmarked_list+8, %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, _gc_unmarked_list+8
	movl	_gc_alloced_bytes, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, _gc_alloced_bytes
	movl	_gc_alloced_bytes, %edx
	movl	_gc_max_alloced_bytes, %eax
	cmpl	%eax, %edx
	jle	L50
	movl	_gc_alloced_bytes, %eax
	movl	%eax, _gc_max_alloced_bytes
L50:
	movl	-12(%ebp), %eax
	leave
	ret
	.globl	__Z14gc_mark_localsv
	.def	__Z14gc_mark_localsv;	.scl	2;	.type	32;	.endef
__Z14gc_mark_localsv:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.globl	__Z14gc_mark_queuedi
	.def	__Z14gc_mark_queuedi;	.scl	2;	.type	32;	.endef
__Z14gc_mark_queuedi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	jmp	L54
L56:
	movl	_gc_queued_list+4, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	-12(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	-12(%ebp), %edx
	movl	8(%edx), %edx
	movl	%edx, 8(%eax)
	movl	_gc_marked_list+8, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	$_gc_marked_list, 4(%eax)
	movl	_gc_marked_list+8, %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, _gc_marked_list+8
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	andl	$-8, %eax
	movl	%eax, %edx
	movl	_gc_marked_bytes, %eax
	addl	%edx, %eax
	movl	%eax, _gc_marked_bytes
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
L54:
	movl	_gc_marked_bytes, %eax
	cmpl	8(%ebp), %eax
	jge	L53
	movl	_gc_queued_list+4, %eax
	cmpl	$_gc_queued_list, %eax
	jne	L56
L53:
	leave
	ret
	.section .rdata,"dr"
LC0:
	.ascii "LIST ERROR!\0"
	.text
	.globl	__Z16gc_validate_listR9gc_objectPKc
	.def	__Z16gc_validate_listR9gc_objectPKc;	.scl	2;	.type	32;	.endef
__Z16gc_validate_listR9gc_objectPKc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L58
L64:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	L59
	jmp	L66
L59:
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L61
	jmp	L62
L61:
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	L63
	jmp	L62
L63:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
L58:
	cmpl	$0, -12(%ebp)
	jne	L64
L62:
	cmpl	$0, 12(%ebp)
	je	L65
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_puts
	movl	__imp___iob, %eax
	addl	$32, %eax
	movl	%eax, (%esp)
	call	_fflush
L65:
	movl	$LC0, (%esp)
	call	_puts
	movl	$-1, (%esp)
	call	_exit
L66:
	leave
	ret
	.globl	__Z8gc_sweepv
	.def	__Z8gc_sweepv;	.scl	2;	.type	32;	.endef
__Z8gc_sweepv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	_gc_alloced_bytes, %edx
	movl	_gc_marked_bytes, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	L68
	movl	_gc_unmarked_list+4, %eax
	movl	%eax, -8(%ebp)
	movl	_gc_unmarked_list+8, %eax
	movl	%eax, -12(%ebp)
	movl	$_gc_free_list, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-20(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	_gc_free_bytes, %edx
	movl	-4(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, _gc_free_bytes
L68:
	movl	_gc_marked_list+4, %eax
	cmpl	$_gc_marked_list, %eax
	jne	L69
	movl	$_gc_unmarked_list, _gc_unmarked_list+8
	movl	_gc_unmarked_list+8, %eax
	movl	%eax, _gc_unmarked_list+4
	jmp	L70
L69:
	movl	_gc_marked_list+4, %eax
	movl	%eax, _gc_unmarked_list+4
	movl	_gc_marked_list+8, %eax
	movl	%eax, _gc_unmarked_list+8
	movl	_gc_unmarked_list+4, %edx
	movl	_gc_unmarked_list+8, %eax
	movl	$_gc_unmarked_list, 4(%eax)
	movl	4(%eax), %eax
	movl	%eax, 8(%edx)
	movl	$_gc_marked_list, _gc_marked_list+8
	movl	_gc_marked_list+8, %eax
	movl	%eax, _gc_marked_list+4
L70:
	movl	_gc_marked_bytes, %eax
	movl	%eax, _gc_alloced_bytes
	movl	$0, _gc_marked_bytes
	movl	_gc_markbit, %eax
	xorl	$1, %eax
	movl	%eax, _gc_markbit
	leave
	ret
	.globl	__Z14gc_collect_allv
	.def	__Z14gc_collect_allv;	.scl	2;	.type	32;	.endef
__Z14gc_collect_allv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	call	__Z14gc_mark_localsv
	movl	$2147483647, (%esp)
	call	__Z14gc_mark_queuedi
	call	__Z8gc_sweepv
	call	__Z7gc_markv
	leave
	ret
	.globl	__Z10gc_collectv
	.def	__Z10gc_collectv;	.scl	2;	.type	32;	.endef
__Z10gc_collectv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	_gc_new_bytes, %edx
	movl	__ZL16gc_ext_new_bytes, %eax
	addl	%edx, %eax
	cmpl	$8388608, %eax
	setg	%al
	testb	%al, %al
	je	L73
	movl	__ZL16gc_ext_new_bytes, %eax
	lock subl	%eax, __ZL16gc_ext_new_bytes
	call	__Z14gc_collect_allv
	movl	$0, _gc_new_bytes
	jmp	L72
L73:
	movl	_gc_new_bytes, %eax
	movl	%eax, %ecx
	movl	%eax, %ebx
	sarl	$31, %ebx
	movl	_gc_alloced_bytes, %edx
	movl	_gc_new_bytes, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	movl	%ebx, %edi
	imull	%eax, %edi
	movl	%edx, %esi
	imull	%ecx, %esi
	addl	%esi, %edi
	mull	%ecx
	leal	(%edi,%edx), %ecx
	movl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	movl	%ecx, %esi
	andl	$8388607, %esi
	movl	%esi, -32(%ebp)
	andl	$0, %ebx
	movl	%ebx, -28(%ebp)
	addl	-32(%ebp), %eax
	adcl	-28(%ebp), %edx
	shrdl	$23, %edx, %eax
	sarl	$23, %edx
	movl	%eax, %edx
	movl	_gc_new_bytes, %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	call	__Z14gc_mark_queuedi
L72:
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.lcomm __ZL13_str_load_err,4,4
	.section	.text$_ZN6StringC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6StringC1Ev
	.def	__ZN6StringC1Ev;	.scl	2;	.type	32;	.endef
__ZN6StringC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$__ZN6String7nullRepE, (%eax)
	leave
	ret
	.section	.text$_ZN6StringC1ERKS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6StringC1ERKS_
	.def	__ZN6StringC1ERKS_;	.scl	2;	.type	32;	.endef
__ZN6StringC1ERKS_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	call	__ZN6String3Rep6retainEv
	leave
	ret	$4
	.section .rdata,"dr"
LC1:
	.ascii "%i\0"
	.section	.text$_ZN6StringC1Ei,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6StringC1Ei
	.def	__ZN6StringC1Ei;	.scl	2;	.type	32;	.endef
__ZN6StringC1Ei:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$296, %esp
	movl	%ecx, -284(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC1, 4(%esp)
	leal	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	leal	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z8t_strlenIcEiPKT_
	movl	%eax, (%esp)
	call	__ZN6String3Rep5allocEi
	movl	-284(%ebp), %edx
	movl	%eax, (%edx)
	movl	$0, -12(%ebp)
	jmp	L78
L79:
	movl	-284(%ebp), %eax
	movl	(%eax), %eax
	leal	-268(%ebp), %ecx
	movl	-12(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	movsbw	%dl, %cx
	movl	-12(%ebp), %edx
	movw	%cx, 8(%eax,%edx,2)
	addl	$1, -12(%ebp)
L78:
	movl	-284(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L79
	leave
	ret	$4
	.section .rdata,"dr"
LC2:
	.ascii "%.17lg\0"
	.section	.text$_ZN6StringC1Ef,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6StringC1Ef
	.def	__ZN6StringC1Ef;	.scl	2;	.type	32;	.endef
__ZN6StringC1Ef:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$312, %esp
	movl	%ecx, -284(%ebp)
	flds	8(%ebp)
	fstpl	8(%esp)
	movl	$LC2, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	leal	-272(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	L81
L83:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	je	L82
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	je	L82
	addl	$1, -12(%ebp)
L81:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L83
L82:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L84
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movb	$46, (%eax)
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movb	$48, (%eax)
	movl	-12(%ebp), %eax
	movb	$0, (%eax)
L84:
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z8t_strlenIcEiPKT_
	movl	%eax, (%esp)
	call	__ZN6String3Rep5allocEi
	movl	-284(%ebp), %edx
	movl	%eax, (%edx)
	movl	$0, -16(%ebp)
	jmp	L85
L86:
	movl	-284(%ebp), %eax
	movl	(%eax), %eax
	leal	-272(%ebp), %ecx
	movl	-16(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	movsbw	%dl, %cx
	movl	-16(%ebp), %edx
	movw	%cx, 8(%eax,%edx,2)
	addl	$1, -16(%ebp)
L85:
	movl	-284(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	L86
	leave
	ret	$4
	.section	.text$_ZN6StringC1Ewi,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6StringC1Ewi
	.def	__ZN6StringC1Ewi;	.scl	2;	.type	32;	.endef
__ZN6StringC1Ewi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	movw	%ax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN6String3Rep5allocEi
	movl	-28(%ebp), %edx
	movl	%eax, (%edx)
	movl	$0, -12(%ebp)
	jmp	L88
L89:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movzwl	-32(%ebp), %ecx
	movw	%cx, 8(%eax,%edx,2)
	addl	$1, -12(%ebp)
L88:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L89
	leave
	ret	$8
	.section	.text$_ZN6StringC1EPKwi,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6StringC1EPKwi
	.def	__ZN6StringC1EPKwi;	.scl	2;	.type	32;	.endef
__ZN6StringC1EPKwi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN6String3Rep5allocEi
	movl	-12(%ebp), %edx
	movl	%eax, (%edx)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	-12(%ebp), %edx
	movl	(%edx), %edx
	addl	$8, %edx
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z8t_memcpyIwEPT_S1_PKS0_i
	leave
	ret	$8
	.section	.text$_ZN6StringD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6StringD1Ev
	.def	__ZN6StringD1Ev;	.scl	2;	.type	32;	.endef
__ZN6StringD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	call	__ZN6String3Rep7releaseEv
	leave
	ret
	.section	.text$_ZNK6String4CopyEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String4CopyEv
	.def	__ZNK6String4CopyEv;	.scl	2;	.type	32;	.endef
__ZNK6String4CopyEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN6String3Rep5allocEi
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	leal	8(%edx), %ecx
	movl	-12(%ebp), %edx
	addl	$8, %edx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	__Z8t_memcpyIwEPT_S1_PKS0_i
	movl	-28(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPNS_3RepE
	subl	$4, %esp
	movl	-28(%ebp), %eax
	leave
	ret	$4
	.section	.text$_ZNK6String6LengthEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String6LengthEv
	.def	__ZNK6String6LengthEv;	.scl	2;	.type	32;	.endef
__ZNK6String6LengthEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	leave
	ret
	.section .rdata,"dr"
LC4:
	.ascii "Character index out of range\0"
	.section	.text$_ZNK6String2AtEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String2AtEi
	.def	__ZNK6String2AtEi;	.scl	2;	.type	32;	.endef
__ZNK6String2AtEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	cmpl	$0, 8(%ebp)
	js	L98
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jg	L99
L98:
	movl	$LC4, (%esp)
	call	__Z9dbg_errorPKc
L99:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	movzwl	8(%eax,%edx,2), %eax
	leave
	ret	$4
	.section	.text$_ZNK6StringixEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6StringixEi
	.def	__ZNK6StringixEi;	.scl	2;	.type	32;	.endef
__ZNK6StringixEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	movzwl	8(%eax,%edx,2), %eax
	leave
	ret	$4
	.section	.text$_ZN6StringaSERKS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6StringaSERKS_
	.def	__ZN6StringaSERKS_;	.scl	2;	.type	32;	.endef
__ZN6StringaSERKS_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	call	__ZN6String3Rep6retainEv
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	call	__ZN6String3Rep7releaseEv
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	leave
	ret	$4
	.section	.text$_ZN6StringpLERKS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6StringpLERKS_
	.def	__ZN6StringpLERKS_;	.scl	2;	.type	32;	.endef
__ZN6StringpLERKS_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	%ecx, -28(%ebp)
	leal	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	movl	-28(%ebp), %eax
	leal	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	movl	%eax, %ebx
	leal	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret	$4
	.section	.text$_ZNK6StringeqERKS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6StringeqERKS_
	.def	__ZNK6StringeqERKS_;	.scl	2;	.type	32;	.endef
__ZNK6StringeqERKS_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	L108
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	leal	8(%edx), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %edx
	addl	$8, %edx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	__Z8t_memcmpIwEiPKT_S2_i
	testl	%eax, %eax
	jne	L108
	movl	$1, %eax
	jmp	L109
L108:
	movl	$0, %eax
L109:
	leave
	ret	$4
	.section	.text$_ZNK6StringplERKS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6StringplERKS_
	.def	__ZNK6StringplERKS_;	.scl	2;	.type	32;	.endef
__ZNK6StringplERKS_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L112
	movl	-28(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L111
L112:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L114
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L111
L114:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	call	__ZN6String3Rep5allocEi
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	addl	$8, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z8t_memcpyIwEPT_S1_PKS0_i
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%ebp), %edx
	movl	(%edx), %edx
	addl	$8, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z8t_memcpyIwEPT_S1_PKS0_i
	movl	%eax, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPNS_3RepE
	subl	$4, %esp
L111:
	movl	-28(%ebp), %eax
	leave
	ret	$8
	.section	.text$_ZNK6String4FindES_i,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String4FindES_i
	.def	__ZNK6String4FindES_i;	.scl	2;	.type	32;	.endef
__ZNK6String4FindES_i:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	movl	%ecx, -12(%ebp)
	cmpl	$0, 12(%ebp)
	jns	L116
	movl	$0, 12(%ebp)
L116:
	jmp	L117
L120:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	leal	8(%edx), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %edx
	movl	12(%ebp), %ebx
	addl	%ebx, %ebx
	addl	%ebx, %edx
	addl	$8, %edx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	__Z8t_memcmpIwEiPKT_S2_i
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L118
	movl	12(%ebp), %eax
	jmp	L119
L118:
	addl	$1, 12(%ebp)
L117:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jle	L120
	movl	$-1, %eax
L119:
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret	$8
	.section	.text$_ZNK6String5SplitES_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String5SplitES_
	.def	__ZNK6String5SplitES_;	.scl	2;	.type	32;	.endef
__ZNK6String5SplitES_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA681, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L136, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L122
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	leal	-68(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringEC1Ei
	subl	$4, %esp
	movl	$0, -28(%ebp)
	jmp	L123
L124:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNK6StringixEi
	subl	$4, %esp
	movzwl	%ax, %edx
	leal	-60(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1Ewi
	subl	$8, %esp
	leal	-68(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringEixEi
	subl	$4, %esp
	leal	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	addl	$1, -28(%ebp)
L123:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	L124
	movl	-76(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%edx, (%eax)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	jmp	L121
L122:
	movl	$0, -32(%ebp)
	movl	$1, -36(%ebp)
	jmp	L126
L127:
	addl	$1, -36(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
L126:
	leal	-56(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNK6String4FindES_i
	subl	$8, %esp
	movl	%eax, -40(%ebp)
	cmpl	$-1, -40(%ebp)
	setne	-132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -132(%ebp)
	jne	L127
	leal	-64(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringEC1Ei
	subl	$4, %esp
	cmpl	$1, -36(%ebp)
	jne	L128
	leal	-64(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringEixEi
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	%edx, (%eax)
	jmp	L129
L128:
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
	jmp	L130
L131:
	leal	-52(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -124(%ebp)
	movl	%eax, %ecx
	call	__ZNK6String5SliceEii
	subl	$12, %esp
	movl	-36(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -36(%ebp)
	leal	-64(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN5ArrayI6StringEixEi
	subl	$4, %esp
	leal	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
L130:
	leal	-48(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNK6String4FindES_i
	subl	$8, %esp
	movl	%eax, -40(%ebp)
	cmpl	$-1, -40(%ebp)
	setne	-132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -132(%ebp)
	jne	L131
	leal	-44(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -124(%ebp)
	movl	%eax, %ecx
	call	__ZNK6String5SliceEi
	subl	$8, %esp
	leal	-64(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringEixEi
	subl	$4, %esp
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-76(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	%edx, (%eax)
L129:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	jmp	L121
L136:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L137
	subl	$1, %eax
	testl	%eax, %eax
	je	L138
	subl	$1, %eax
	testl	%eax, %eax
	je	L139
	subl	$1, %eax
		.word	0x0b0f
L137:
	movl	%edx, %eax
	jmp	L134
L139:
	movl	%edx, -132(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	movl	-132(%ebp), %eax
	jmp	L134
L138:
	movl	%edx, %eax
L134:
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L121:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-76(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA681:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE681-LLSDACSB681
LLSDACSB681:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE681:
	.section	.text$_ZNK6String5SplitES_,"x"
	.linkonce discard
	.section	.text$_ZNK6String7ReplaceES_S_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String7ReplaceES_S_
	.def	__ZNK6String7ReplaceES_S_;	.scl	2;	.type	32;	.endef
__ZNK6String7ReplaceES_S_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	%ecx, -44(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L141
L142:
	movl	-12(%ebp), %eax
	movl	-24(%ebp), %edx
	subl	%eax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	addl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
L141:
	leal	-36(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNK6String4FindES_i
	subl	$8, %esp
	movl	%eax, -24(%ebp)
	cmpl	$-1, -24(%ebp)
	setne	%bl
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	testb	%bl, %bl
	jne	L142
	cmpl	$0, -12(%ebp)
	jne	L143
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L140
L143:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	subl	-12(%ebp), %eax
	addl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN6String3Rep5allocEi
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	jmp	L145
L146:
	movl	-12(%ebp), %eax
	movl	-24(%ebp), %edx
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %ecx
	addl	%ecx, %ecx
	addl	%ecx, %eax
	addl	$8, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z8t_memcpyIwEPT_S1_PKS0_i
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	16(%ebp), %edx
	movl	(%edx), %edx
	addl	$8, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z8t_memcpyIwEPT_S1_PKS0_i
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
L145:
	leal	-32(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNK6String4FindES_i
	subl	$8, %esp
	movl	%eax, -24(%ebp)
	cmpl	$-1, -24(%ebp)
	setne	%bl
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	testb	%bl, %bl
	jne	L146
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	subl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	movl	-12(%ebp), %ecx
	addl	%ecx, %ecx
	addl	%ecx, %edx
	addl	$8, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z8t_memcpyIwEPT_S1_PKS0_i
	movl	%eax, -20(%ebp)
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPNS_3RepE
	subl	$4, %esp
L140:
	movl	-44(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret	$12
	.section	.text$_ZNK6String7ToLowerEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String7ToLowerEv
	.def	__ZNK6String7ToLowerEv;	.scl	2;	.type	32;	.endef
__ZNK6String7ToLowerEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	%ecx, -28(%ebp)
	movl	$0, -12(%ebp)
	jmp	L148
L154:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movzwl	8(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	_towlower
	movw	%ax, -14(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movzwl	8(%eax,%edx,2), %eax
	cmpw	-14(%ebp), %ax
	jne	L149
	nop
	addl	$1, -12(%ebp)
	jmp	L148
L149:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN6String3Rep5allocEi
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z8t_memcpyIwEPT_S1_PKS0_i
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	leal	(%eax,%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movzwl	-14(%ebp), %eax
	movw	%ax, (%edx)
	jmp	L151
L152:
	movl	-12(%ebp), %eax
	leal	(%eax,%eax), %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movzwl	8(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	_towlower
	movw	%ax, (%ebx)
	addl	$1, -12(%ebp)
L151:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L152
	movl	-28(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPNS_3RepE
	subl	$4, %esp
	jmp	L147
L148:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L154
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
L147:
	movl	-28(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret	$4
	.section	.text$_ZNK6String10StartsWithES_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String10StartsWithES_
	.def	__ZNK6String10StartsWithES_;	.scl	2;	.type	32;	.endef
__ZNK6String10StartsWithES_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jg	L156
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	leal	8(%edx), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %edx
	addl	$8, %edx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	__Z8t_memcmpIwEiPKT_S2_i
	testl	%eax, %eax
	jne	L156
	movl	$1, %eax
	jmp	L157
L156:
	movl	$0, %eax
L157:
	leave
	ret	$4
	.section	.text$_ZNK6String8EndsWithES_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String8EndsWithES_
	.def	__ZNK6String8EndsWithES_;	.scl	2;	.type	32;	.endef
__ZNK6String8EndsWithES_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jg	L160
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	leal	8(%edx), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %ebx
	movl	-12(%ebp), %edx
	movl	(%edx), %edx
	movl	4(%edx), %edx
	addl	%edx, %edx
	addl	%ebx, %edx
	leal	8(%edx), %ebx
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	movl	4(%edx), %edx
	addl	%edx, %edx
	negl	%edx
	addl	%ebx, %edx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	__Z8t_memcmpIwEiPKT_S2_i
	testl	%eax, %eax
	jne	L160
	movl	$1, %eax
	jmp	L161
L160:
	movl	$0, %eax
L161:
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
	.section	.text$_ZNK6String5SliceEii,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String5SliceEii
	.def	__ZNK6String5SliceEii;	.scl	2;	.type	32;	.endef
__ZNK6String5SliceEii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 12(%ebp)
	jns	L164
	movl	-12(%ebp), %eax
	addl	%eax, 12(%ebp)
	cmpl	$0, 12(%ebp)
	jns	L165
	movl	$0, 12(%ebp)
	jmp	L165
L164:
	movl	12(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jle	L165
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
L165:
	cmpl	$0, 16(%ebp)
	jns	L166
	movl	-12(%ebp), %eax
	addl	%eax, 16(%ebp)
	jmp	L167
L166:
	movl	16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jle	L167
	movl	-12(%ebp), %eax
	movl	%eax, 16(%ebp)
L167:
	movl	16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	L168
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	jmp	L163
L168:
	cmpl	$0, 12(%ebp)
	jne	L170
	movl	16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	L170
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L163
L170:
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	addl	%edx, %edx
	addl	%edx, %eax
	leal	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
L163:
	movl	-28(%ebp), %eax
	leave
	ret	$12
	.section	.text$_ZNK6String5SliceEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String5SliceEi
	.def	__ZNK6String5SliceEi;	.scl	2;	.type	32;	.endef
__ZNK6String5SliceEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String5SliceEii
	subl	$12, %esp
	movl	-12(%ebp), %eax
	leave
	ret	$8
	.section	.text$_ZNK6String5ToIntEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String5ToIntEv
	.def	__ZNK6String5ToIntEv;	.scl	2;	.type	32;	.endef
__ZNK6String5ToIntEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	%ecx, -76(%ebp)
	movl	$64, %edx
	movl	-76(%ebp), %eax
	movl	%edx, 4(%esp)
	leal	-72(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String9ToCStringIcEEPT_S2_i
	subl	$8, %esp
	movl	%eax, (%esp)
	call	_atoi
	leave
	ret
	.section	.text$_ZNK6String4SaveEP6_iobuf,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String4SaveEP6_iobuf
	.def	__ZNK6String4SaveEP6_iobuf;	.scl	2;	.type	32;	.endef
__ZNK6String4SaveEP6_iobuf:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA703, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L182, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEEC1Ev
	movl	-44(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	__ZNK6String4SaveERSt6vectorIhSaIhEE
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIhSaIhEE4sizeEv
	testl	%eax, %eax
	je	L176
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIhSaIhEE4sizeEv
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEEixEj
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-100(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_fwrite
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIhSaIhEE4sizeEv
	cmpl	%eax, -100(%ebp)
	jne	L177
L176:
	movl	$1, %eax
	jmp	L178
L177:
	movl	$0, %eax
L178:
	movb	%al, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEED1Ev
	movzbl	-100(%ebp), %eax
	movb	%al, -100(%ebp)
	jmp	L185
L184:
	movl	%edx, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	$0, -92(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEED1Ev
	movl	-100(%ebp), %eax
	jmp	L181
L182:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L183
	subl	$1, %eax
	testl	%eax, %eax
	je	L184
	subl	$1, %eax
		.word	0x0b0f
L183:
	movl	%edx, %eax
L181:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L185:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA703:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE703-LLSDACSB703
LLSDACSB703:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE703:
	.section	.text$_ZNK6String4SaveEP6_iobuf,"x"
	.linkonce discard
	.section	.text$_ZNK6String4SaveERSt6vectorIhSaIhEE,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6String4SaveERSt6vectorIhSaIhEE
	.def	__ZNK6String4SaveERSt6vectorIhSaIhEE;	.scl	2;	.type	32;	.endef
__ZNK6String4SaveERSt6vectorIhSaIhEE:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA704, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L197, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	jmp	L187
L190:
	movl	-28(%ebp), %eax
	leal	2(%eax), %edx
	movl	%edx, -28(%ebp)
	movzwl	(%eax), %eax
	movw	%ax, -34(%ebp)
	cmpw	$127, -34(%ebp)
	ja	L188
	movzwl	-34(%ebp), %eax
	movb	%al, -40(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIhSaIhEE9push_backERKh
	subl	$4, %esp
	jmp	L187
L188:
	cmpw	$2047, -34(%ebp)
	ja	L189
	movzwl	-34(%ebp), %eax
	sarl	$6, %eax
	orl	$-64, %eax
	movb	%al, -39(%ebp)
	leal	-39(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -92(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIhSaIhEE9push_backERKh
	subl	$4, %esp
	movzwl	-34(%ebp), %eax
	andl	$63, %eax
	orl	$-128, %eax
	movb	%al, -38(%ebp)
	leal	-38(%ebp), %eax
	movl	%eax, (%esp)
	movl	$3, -92(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIhSaIhEE9push_backERKh
	subl	$4, %esp
	jmp	L187
L189:
	movzwl	-34(%ebp), %eax
	sarl	$12, %eax
	orl	$-32, %eax
	movb	%al, -37(%ebp)
	leal	-37(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, -92(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIhSaIhEE9push_backERKh
	subl	$4, %esp
	movzwl	-34(%ebp), %eax
	sarl	$6, %eax
	andl	$63, %eax
	orl	$-128, %eax
	movb	%al, -36(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	$5, -92(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIhSaIhEE9push_backERKh
	subl	$4, %esp
	movzwl	-34(%ebp), %eax
	andl	$63, %eax
	orl	$-128, %eax
	movb	%al, -35(%ebp)
	leal	-35(%ebp), %eax
	movl	%eax, (%esp)
	movl	$6, -92(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIhSaIhEE9push_backERKh
	subl	$4, %esp
L187:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	L190
	jmp	L206
L197:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	cmpl	$5, -92(%ebp)
	ja	L204
	movl	-92(%ebp), %edx
	sall	$2, %edx
	addl	$L205, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L205:
	.long	L198
	.long	L199
	.long	L200
	.long	L201
	.long	L202
	.long	L203
	.section	.text$_ZNK6String4SaveERSt6vectorIhSaIhEE,"x"
	.linkonce discard
L204:
		.word	0x0b0f
L198:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L199:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L200:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L201:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L202:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L203:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L206:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA704:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE704-LLSDACSB704
LLSDACSB704:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
LLSDACSE704:
	.section	.text$_ZNK6String4SaveERSt6vectorIhSaIhEE,"x"
	.linkonce discard
	.section	.text$_ZN6String9FromCharsE5ArrayIiE,"x"
	.linkonce discard
	.globl	__ZN6String9FromCharsE5ArrayIiE
	.def	__ZN6String9FromCharsE5ArrayIiE;	.scl	2;	.type	32;	.endef
__ZN6String9FromCharsE5ArrayIiE:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIiE6LengthEv
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN6String3Rep5allocEi
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	jmp	L208
L209:
	movl	12(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, %ecx
	movl	-20(%ebp), %eax
	movl	-12(%ebp), %edx
	movw	%cx, 8(%eax,%edx,2)
	addl	$1, -12(%ebp)
L208:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	L209
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1EPNS_3RepE
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section	.text$_ZN6String4LoadEP6_iobuf,"x"
	.linkonce discard
	.globl	__ZN6String4LoadEP6_iobuf
	.def	__ZN6String4LoadEP6_iobuf;	.scl	2;	.type	32;	.endef
__ZN6String4LoadEP6_iobuf:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	movl	$4204, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	movl	$___gxx_personality_sj0, -4164(%ebp)
	movl	$LLSDA706, -4160(%ebp)
	leal	-4156(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L221, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-4188(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$1, -4184(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEEC1Ev
L215:
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4096, 8(%esp)
	movl	$1, 4(%esp)
	leal	-4136(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jle	L212
	movl	-28(%ebp), %eax
	leal	-4136(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -4192(%ebp)
	leal	-40(%ebp), %eax
	movl	$2, -4184(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEE3endEv
	leal	-40(%ebp), %edx
	movl	-4192(%ebp), %esi
	movl	%esi, 8(%esp)
	leal	-4136(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZNSt6vectorIhSaIhEE6insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_
	subl	$12, %esp
L212:
	cmpl	$4096, -28(%ebp)
	je	L213
	nop
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIhSaIhEE4sizeEv
	testl	%eax, %eax
	je	L216
	jmp	L224
L213:
	jmp	L215
L224:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIhSaIhEE4sizeEv
	movl	%eax, -4192(%ebp)
	leal	-40(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEEixEj
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	-4192(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$2, -4184(%ebp)
	call	__ZN6String4LoadEPhi
	jmp	L217
L216:
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
L217:
	nop
	leal	-40(%ebp), %eax
	movl	$1, -4184(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEED1Ev
	jmp	L225
L223:
	movl	%edx, -4192(%ebp)
	leal	-40(%ebp), %eax
	movl	$0, -4184(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEED1Ev
	movl	-4192(%ebp), %eax
	jmp	L220
L221:
	leal	24(%ebp), %ebp
	movl	-4180(%ebp), %edx
	movl	-4184(%ebp), %eax
	testl	%eax, %eax
	je	L222
	subl	$1, %eax
	testl	%eax, %eax
	je	L223
	subl	$1, %eax
		.word	0x0b0f
L222:
	movl	%edx, %eax
L220:
	movl	%eax, (%esp)
	movl	$-1, -4184(%ebp)
	call	__Unwind_SjLj_Resume
L225:
	leal	-4188(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA706:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE706-LLSDACSB706
LLSDACSB706:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE706:
	.section	.text$_ZN6String4LoadEP6_iobuf,"x"
	.linkonce discard
	.section .rdata,"dr"
LC5:
	.ascii "Invalid UTF-8\0"
	.section	.text$_ZN6String4LoadEPhi,"x"
	.linkonce discard
	.globl	__ZN6String4LoadEPhi
	.def	__ZN6String4LoadEPhi;	.scl	2;	.type	32;	.endef
__ZN6String4LoadEPhi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	movl	$___gxx_personality_sj0, -116(%ebp)
	movl	$LLSDA707, -112(%ebp)
	leal	-108(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L260, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$0, __ZL13_str_load_err
	movl	16(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%ebp)
	leal	-80(%ebp), %eax
	movl	$1, -136(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIwSaIwEEC1Ev
	cmpl	$0, 16(%ebp)
	jle	L227
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	jmp	L228
L227:
	movl	$-1, %eax
L228:
	movl	%eax, -40(%ebp)
	cmpl	$1, 16(%ebp)
	jle	L229
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	jmp	L230
L229:
	movl	$-1, %eax
L230:
	movl	%eax, -44(%ebp)
	cmpl	$254, -40(%ebp)
	jne	L231
	cmpl	$255, -44(%ebp)
	jne	L231
	addl	$2, 12(%ebp)
	jmp	L232
L233:
	movl	12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 12(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 12(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	movw	%ax, -66(%ebp)
	leal	-80(%ebp), %eax
	leal	-66(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -136(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIwSaIwEE9push_backERKw
	subl	$4, %esp
L232:
	movl	-36(%ebp), %eax
	subl	$1, %eax
	cmpl	12(%ebp), %eax
	ja	L233
	jmp	L234
L231:
	cmpl	$255, -40(%ebp)
	jne	L235
	cmpl	$254, -44(%ebp)
	jne	L235
	addl	$2, 12(%ebp)
	jmp	L236
L237:
	movl	12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 12(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	movl	12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 12(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	orl	%edx, %eax
	movw	%ax, -64(%ebp)
	leal	-80(%ebp), %eax
	leal	-64(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -136(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIwSaIwEE9push_backERKw
	subl	$4, %esp
L236:
	movl	-36(%ebp), %eax
	subl	$1, %eax
	cmpl	12(%ebp), %eax
	ja	L237
	jmp	L234
L235:
	cmpl	$2, 16(%ebp)
	jle	L238
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	jmp	L239
L238:
	movl	$-1, %eax
L239:
	movl	%eax, -56(%ebp)
	cmpl	$239, -40(%ebp)
	jne	L240
	cmpl	$187, -44(%ebp)
	jne	L240
	cmpl	$191, -56(%ebp)
	jne	L240
	addl	$3, 12(%ebp)
L240:
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	movb	$0, -25(%ebp)
	jmp	L241
L250:
	movl	12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 12(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	L242
	movl	-32(%ebp), %eax
	andl	$224, %eax
	cmpl	$192, %eax
	jne	L243
	movl	12(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jae	L244
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	L245
L244:
	movb	$1, -25(%ebp)
	jmp	L246
L245:
	movl	-32(%ebp), %eax
	andl	$31, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, -32(%ebp)
	addl	$1, 12(%ebp)
	jmp	L242
L243:
	movl	-32(%ebp), %eax
	andl	$240, %eax
	cmpl	$224, %eax
	jne	L247
	movl	12(%ebp), %eax
	addl	$1, %eax
	cmpl	-36(%ebp), %eax
	jae	L248
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	L248
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	L249
L248:
	movb	$1, -25(%ebp)
	jmp	L246
L249:
	movl	-32(%ebp), %eax
	sall	$12, %eax
	movzwl	%ax, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	sall	$6, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, -32(%ebp)
	addl	$2, 12(%ebp)
	jmp	L242
L247:
	movb	$1, -25(%ebp)
	jmp	L246
L242:
	movl	-32(%ebp), %eax
	movw	%ax, -62(%ebp)
	leal	-80(%ebp), %eax
	leal	-62(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, -136(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIwSaIwEE9push_backERKw
	subl	$4, %esp
L241:
	movl	12(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	L250
L246:
	cmpb	$0, -25(%ebp)
	je	L234
	movl	$LC5, __ZL13_str_load_err
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IhEEPKT_i
	subl	$8, %esp
	jmp	L251
L234:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIwSaIwEE4sizeEv
	testl	%eax, %eax
	je	L252
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIwSaIwEE4sizeEv
	movl	%eax, -144(%ebp)
	leal	-80(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIwSaIwEEixEj
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	-144(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	jmp	L251
L252:
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
L251:
	leal	-80(%ebp), %eax
	movl	$1, -136(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIwSaIwEED1Ev
	jmp	L265
L262:
	movl	%edx, %eax
	movl	%eax, -144(%ebp)
	jmp	L256
L263:
	movl	%edx, %eax
	movl	%eax, -144(%ebp)
	jmp	L256
L264:
	movl	%edx, %eax
	movl	%eax, -144(%ebp)
L256:
	leal	-80(%ebp), %eax
	movl	$0, -136(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIwSaIwEED1Ev
	movl	-144(%ebp), %eax
	jmp	L259
L260:
	leal	24(%ebp), %ebp
	movl	-132(%ebp), %edx
	movl	-136(%ebp), %eax
	testl	%eax, %eax
	je	L261
	subl	$1, %eax
	testl	%eax, %eax
	je	L262
	subl	$1, %eax
	testl	%eax, %eax
	je	L263
	subl	$1, %eax
	testl	%eax, %eax
	je	L264
	subl	$1, %eax
		.word	0x0b0f
L261:
	movl	%edx, %eax
L259:
	movl	%eax, (%esp)
	movl	$-1, -136(%ebp)
	call	__Unwind_SjLj_Resume
L265:
	leal	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA707:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE707-LLSDACSB707
LLSDACSB707:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE707:
	.section	.text$_ZN6String4LoadEPhi,"x"
	.linkonce discard
	.section	.text$_ZN6String3RepC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6String3RepC1Ev
	.def	__ZN6String3RepC1Ev;	.scl	2;	.type	32;	.endef
__ZN6String3RepC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$1, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 4(%eax)
	leave
	ret
	.section	.text$_ZN6String3RepC1Ei,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6String3RepC1Ei
	.def	__ZN6String3RepC1Ei;	.scl	2;	.type	32;	.endef
__ZN6String3RepC1Ei:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$1, (%eax)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%eax)
	leave
	ret	$4
	.section	.text$_ZN6String3Rep6retainEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6String3Rep6retainEv
	.def	__ZN6String3Rep6retainEv;	.scl	2;	.type	32;	.endef
__ZN6String3Rep6retainEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	leave
	ret
	.section	.text$_ZN6String3Rep7releaseEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6String3Rep7releaseEv
	.def	__ZN6String3Rep7releaseEv;	.scl	2;	.type	32;	.endef
__ZN6String3Rep7releaseEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L270
	cmpl	$__ZN6String7nullRepE, -12(%ebp)
	jne	L271
L270:
	movl	$1, %eax
	jmp	L272
L271:
	movl	$0, %eax
L272:
	testb	%al, %al
	je	L273
	jmp	L269
L273:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L269:
	leave
	ret
	.section	.text$_ZN6String3Rep5allocEi,"x"
	.linkonce discard
	.globl	__ZN6String3Rep5allocEi
	.def	__ZN6String3Rep5allocEi;	.scl	2;	.type	32;	.endef
__ZN6String3Rep5allocEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	cmpl	$0, 8(%ebp)
	jne	L276
	movl	$__ZN6String7nullRepE, %eax
	jmp	L277
L276:
	movl	8(%ebp), %eax
	addl	%eax, %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	__ZnwjPv
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	L278
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %ecx
	call	__ZN6String3RepC1Ei
	subl	$4, %esp
	movl	%ebx, %eax
	jmp	L279
L278:
	movl	%ebx, %eax
L279:
L277:
	movl	-4(%ebp), %ebx
	leave
	ret
	.section	.text$_ZN6StringC1EPNS_3RepE,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6StringC1EPNS_3RepE
	.def	__ZN6StringC1EPNS_3RepE;	.scl	2;	.type	32;	.endef
__ZN6StringC1EPNS_3RepE:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	leave
	ret	$4
	.globl	__ZN6String7nullRepE
	.bss
	.align 4
__ZN6String7nullRepE:
	.space 8
	.text
	.globl	__Z8t_createiP6String
	.def	__Z8t_createiP6String;	.scl	2;	.type	32;	.endef
__Z8t_createiP6String:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$0, -4(%ebp)
	jmp	L282
L285:
	movl	-4(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	__ZnwjPv
	testl	%eax, %eax
	je	L284
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
L284:
	addl	$1, -4(%ebp)
L282:
	movl	-4(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L285
	movl	8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	leave
	ret
	.globl	__Z8t_createiP6StringPKS_
	.def	__Z8t_createiP6StringPKS_;	.scl	2;	.type	32;	.endef
__Z8t_createiP6StringPKS_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L288
L291:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	__ZnwjPv
	testl	%eax, %eax
	je	L290
	movl	-12(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	16(%ebp), %edx
	addl	%ecx, %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
L290:
	addl	$1, -12(%ebp)
L288:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L291
	movl	8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	leave
	ret
	.globl	__Z9t_destroyiP6String
	.def	__Z9t_destroyiP6String;	.scl	2;	.type	32;	.endef
__Z9t_destroyiP6String:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$0, -12(%ebp)
	jmp	L294
L295:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	addl	$1, -12(%ebp)
L294:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L295
	leave
	ret
	.section	.text$_ZN6Object6EqualsEPS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6Object6EqualsEPS_
	.def	__ZN6Object6EqualsEPS_;	.scl	2;	.type	32;	.endef
__ZN6Object6EqualsEPS_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	cmpl	8(%ebp), %eax
	sete	%al
	leave
	ret	$4
	.section	.text$_ZN6Object7CompareEPS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6Object7CompareEPS_
	.def	__ZN6Object7CompareEPS_;	.scl	2;	.type	32;	.endef
__ZN6Object7CompareEPS_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leave
	ret	$4
	.section .rdata,"dr"
LC6:
	.ascii "+Object\12\0"
	.section	.text$_ZN6Object5debugEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6Object5debugEv
	.def	__ZN6Object5debugEv;	.scl	2;	.type	32;	.endef
__ZN6Object5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$LC6, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	ret	$4
	.section	.text$_ZN6ObjectC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6ObjectC2Ev
	.def	__ZN6ObjectC2Ev;	.scl	2;	.type	32;	.endef
__ZN6ObjectC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_objectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV6Object+8, (%eax)
	leave
	ret
	.section	.text$_ZN6ObjectD2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6ObjectD2Ev
	.def	__ZN6ObjectD2Ev;	.scl	2;	.type	32;	.endef
__ZN6ObjectD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV6Object+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_objectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L303
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L303:
	leave
	ret
	.section	.text$_ZN6ObjectD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6ObjectD1Ev
	.def	__ZN6ObjectD1Ev;	.scl	2;	.type	32;	.endef
__ZN6ObjectD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV6Object+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_objectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L306
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L306:
	leave
	ret
	.section	.text$_ZN6ObjectD0Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6ObjectD0Ev
	.def	__ZN6ObjectD0Ev;	.scl	2;	.type	32;	.endef
__ZN6ObjectD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	leave
	ret
	.section	.text$_ZN15ThrowableObjectC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN15ThrowableObjectC2Ev
	.def	__ZN15ThrowableObjectC2Ev;	.scl	2;	.type	32;	.endef
__ZN15ThrowableObjectC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	movl	%ecx, -28(%ebp)
	movl	$___gxx_personality_sj0, -56(%ebp)
	movl	$LLSDA734, -52(%ebp)
	leal	-48(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L313, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-28(%ebp), %eax
	movl	$__ZTV15ThrowableObject+8, (%eax)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	movl	$1, -76(%ebp)
	call	__Z14dbg_stacktracev
	jmp	L315
L313:
	leal	24(%ebp), %ebp
	movl	-72(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-28(%ebp), %eax
	movl	$0, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -76(%ebp)
	call	__Unwind_SjLj_Resume
L315:
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA734:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE734-LLSDACSB734
LLSDACSB734:
	.uleb128 0
	.uleb128 0
LLSDACSE734:
	.section	.text$_ZN15ThrowableObjectC2Ev,"x"
	.linkonce discard
.lcomm __ZL11dbg_suspend,4,4
.lcomm __ZL12dbg_stepmode,4,4
	.globl	_dbg_info
	.bss
	.align 4
_dbg_info:
	.space 4
	.globl	_dbg_exstack
	.align 4
_dbg_exstack:
	.space 4
.lcomm __ZL11dbg_var_buf,786432,32
	.data
	.align 4
__ZL11dbg_var_ptr:
	.long	__ZL11dbg_var_buf
.lcomm __ZL12dbg_func_buf,4096,32
	.align 4
__ZL12dbg_func_ptr:
	.long	__ZL12dbg_func_buf
	.section .rdata,"dr"
LC7:
	.ascii "Bool\0"
	.text
	.globl	__Z8dbg_typePb
	.def	__Z8dbg_typePb;	.scl	2;	.type	32;	.endef
__Z8dbg_typePb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC7, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC8:
	.ascii "Int\0"
	.text
	.globl	__Z8dbg_typePi
	.def	__Z8dbg_typePi;	.scl	2;	.type	32;	.endef
__Z8dbg_typePi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC8, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC9:
	.ascii "Float\0"
	.text
	.globl	__Z8dbg_typePf
	.def	__Z8dbg_typePf;	.scl	2;	.type	32;	.endef
__Z8dbg_typePf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC9, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC10:
	.ascii "String\0"
	.text
	.globl	__Z8dbg_typeP6String
	.def	__Z8dbg_typeP6String;	.scl	2;	.type	32;	.endef
__Z8dbg_typeP6String:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC10, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC11:
	.ascii "True\0"
LC12:
	.ascii "False\0"
	.text
	.globl	__Z9dbg_valuePb
	.def	__Z9dbg_valuePb;	.scl	2;	.type	32;	.endef
__Z9dbg_valuePb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L325
	movl	$LC11, %eax
	jmp	L326
L325:
	movl	$LC12, %eax
L326:
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.globl	__Z9dbg_valuePi
	.def	__Z9dbg_valuePi;	.scl	2;	.type	32;	.endef
__Z9dbg_valuePi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1Ei
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.globl	__Z9dbg_valuePf
	.def	__Z9dbg_valuePf;	.scl	2;	.type	32;	.endef
__Z9dbg_valuePf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1Ef
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC13:
	.ascii "...\0"
LC14:
	.ascii "~q\0"
LC15:
	.ascii "\"\0"
LC16:
	.ascii "~t\0"
LC17:
	.ascii "\11\0"
LC18:
	.ascii "~n\0"
LC19:
	.ascii "\12\0"
LC20:
	.ascii "~r\0"
LC21:
	.ascii "\15\0"
	.text
	.globl	__Z9dbg_valueP6String
	.def	__Z9dbg_valueP6String;	.scl	2;	.type	32;	.endef
__Z9dbg_valueP6String:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	leal	-84(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String6LengthEv
	cmpl	$100, %eax
	setg	%al
	testb	%al, %al
	je	L333
	leal	-76(%ebp), %eax
	movl	$LC13, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-72(%ebp), %eax
	movl	$100, 8(%esp)
	movl	$0, 4(%esp)
	leal	-84(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String5SliceEii
	subl	$12, %esp
	leal	-80(%ebp), %eax
	leal	-76(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-72(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-84(%ebp), %eax
	leal	-80(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L333:
	leal	-64(%ebp), %eax
	movl	$LC14, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	$LC15, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-68(%ebp), %eax
	leal	-64(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-60(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-84(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String7ReplaceES_S_
	subl	$12, %esp
	leal	-84(%ebp), %eax
	leal	-68(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-52(%ebp), %eax
	movl	$LC16, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	$LC17, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-56(%ebp), %eax
	leal	-52(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-84(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String7ReplaceES_S_
	subl	$12, %esp
	leal	-84(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-40(%ebp), %eax
	movl	$LC18, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	$LC19, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-84(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String7ReplaceES_S_
	subl	$12, %esp
	leal	-84(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-28(%ebp), %eax
	movl	$LC20, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-24(%ebp), %eax
	movl	$LC21, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-84(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String7ReplaceES_S_
	subl	$12, %esp
	leal	-84(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-24(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-20(%ebp), %eax
	movl	$LC15, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-12(%ebp), %eax
	movl	$LC15, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-16(%ebp), %eax
	leal	-84(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	movl	8(%ebp), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-16(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-20(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC22:
	.ascii "%p\0"
	.text
	.globl	__Z13dbg_ptr_valuePv
	.def	__Z13dbg_ptr_valuePv;	.scl	2;	.type	32;	.endef
__Z13dbg_ptr_valuePv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC22, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	-72(%ebp), %eax
	cmpb	$48, %al
	jne	L336
	movzbl	-71(%ebp), %eax
	cmpb	$120, %al
	jne	L336
	leal	-72(%ebp), %eax
	addl	$2, %eax
	jmp	L337
L336:
	leal	-72(%ebp), %eax
L337:
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section	.text$_ZN7dbg_blkC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN7dbg_blkC2Ev
	.def	__ZN7dbg_blkC2Ev;	.scl	2;	.type	32;	.endef
__ZN7dbg_blkC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	__ZL11dbg_var_ptr, %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	movl	__ZL12dbg_stepmode, %eax
	cmpl	$108, %eax
	jne	L339
	movl	__ZL11dbg_suspend, %eax
	subl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L339:
	leave
	ret
	.section	.text$_ZN7dbg_blkC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN7dbg_blkC1Ev
	.def	__ZN7dbg_blkC1Ev;	.scl	2;	.type	32;	.endef
__ZN7dbg_blkC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	__ZL11dbg_var_ptr, %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	movl	__ZL12dbg_stepmode, %eax
	cmpl	$108, %eax
	jne	L341
	movl	__ZL11dbg_suspend, %eax
	subl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L341:
	leave
	ret
	.section	.text$_ZN7dbg_blkD2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN7dbg_blkD2Ev
	.def	__ZN7dbg_blkD2Ev;	.scl	2;	.type	32;	.endef
__ZN7dbg_blkD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	__ZL12dbg_stepmode, %eax
	cmpl	$108, %eax
	jne	L344
	movl	__ZL11dbg_suspend, %eax
	addl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L344:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, __ZL11dbg_var_ptr
	leave
	ret
	.section	.text$_ZN7dbg_blkD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN7dbg_blkD1Ev
	.def	__ZN7dbg_blkD1Ev;	.scl	2;	.type	32;	.endef
__ZN7dbg_blkD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	__ZL12dbg_stepmode, %eax
	cmpl	$108, %eax
	jne	L347
	movl	__ZL11dbg_suspend, %eax
	addl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L347:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, __ZL11dbg_var_ptr
	leave
	ret
	.section	.text$_ZN8dbg_funcC1EPKc,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8dbg_funcC1EPKc
	.def	__ZN8dbg_funcC1EPKc;	.scl	2;	.type	32;	.endef
__ZN8dbg_funcC1EPKc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC2Ev
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	_dbg_info, %edx
	movl	-4(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	__ZL12dbg_func_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL12dbg_func_ptr
	movl	-4(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL12dbg_stepmode, %eax
	cmpl	$115, %eax
	jne	L349
	movl	__ZL11dbg_suspend, %eax
	subl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L349:
	leave
	ret	$4
	.section	.text$_ZN8dbg_funcD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8dbg_funcD1Ev
	.def	__ZN8dbg_funcD1Ev;	.scl	2;	.type	32;	.endef
__ZN8dbg_funcD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	__ZL12dbg_stepmode, %eax
	cmpl	$115, %eax
	jne	L352
	movl	__ZL11dbg_suspend, %eax
	addl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L352:
	movl	__ZL12dbg_func_ptr, %eax
	subl	$4, %eax
	movl	%eax, __ZL12dbg_func_ptr
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, _dbg_info
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD2Ev
	leave
	ret
	.text
	.globl	__Z9dbg_print6String
	.def	__Z9dbg_print6String;	.scl	2;	.type	32;	.endef
__Z9dbg_print6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	8(%ebp), %ecx
	call	__ZNK6String6LengthEv
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	leal	100(%eax), %edx
	movl	__ZZ9dbg_print6StringE3len, %eax
	cmpl	%eax, %edx
	jle	L355
	movl	-16(%ebp), %eax
	addl	$100, %eax
	movl	%eax, __ZZ9dbg_print6StringE3len
	movl	__ZZ9dbg_print6StringE3buf, %eax
	movl	%eax, (%esp)
	call	_free
	movl	__ZZ9dbg_print6StringE3len, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, __ZZ9dbg_print6StringE3buf
L355:
	movl	__ZZ9dbg_print6StringE3buf, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	$10, (%eax)
	movl	$0, -12(%ebp)
	jmp	L356
L357:
	movl	__ZZ9dbg_print6StringE3buf, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNK6StringixEi
	subl	$4, %esp
	movb	%al, (%ebx)
	addl	$1, -12(%ebp)
L356:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	L357
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movl	__ZZ9dbg_print6StringE3buf, %eax
	movl	__imp___iob, %ecx
	addl	$64, %ecx
	movl	%ecx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_fwrite
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fflush
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC23:
	.ascii "+%s;%s\12\0"
LC24:
	.ascii "=\0"
LC25:
	.ascii ":\0"
	.text
	.globl	__Z13dbg_callstackv
	.def	__Z13dbg_callstackv;	.scl	2;	.type	32;	.endef
__Z13dbg_callstackv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	movl	$___gxx_personality_sj0, -132(%ebp)
	movl	$LLSDA769, -128(%ebp)
	leal	-124(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L372, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$__ZL11dbg_var_buf, -28(%ebp)
	movl	$__ZL12dbg_func_buf, -32(%ebp)
	jmp	L360
L366:
	jmp	L361
L365:
	movl	-32(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	__ZL12dbg_func_ptr, %eax
	cmpl	%eax, -32(%ebp)
	je	L362
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	jmp	L363
L362:
	movl	_dbg_info, %eax
L363:
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC23, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
L361:
	movl	__ZL12dbg_func_ptr, %eax
	cmpl	%eax, -32(%ebp)
	je	L364
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	L365
L364:
	movl	-28(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-28(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-28(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %ebx
	leal	-92(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	$-1, -152(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$8, %esp
	leal	-84(%ebp), %eax
	movl	$LC24, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %ebx
	leal	-76(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -152(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$8, %esp
	leal	-68(%ebp), %eax
	movl	$LC25, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-72(%ebp), %eax
	leal	-68(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-64(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-80(%ebp), %eax
	leal	-76(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-72(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-88(%ebp), %eax
	leal	-84(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-80(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-96(%ebp), %eax
	leal	-92(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-88(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9dbg_print6String
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L360:
	movl	__ZL11dbg_var_ptr, %eax
	cmpl	%eax, -28(%ebp)
	jne	L366
	jmp	L367
L370:
	movl	-32(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	__ZL12dbg_func_ptr, %eax
	cmpl	%eax, -32(%ebp)
	je	L368
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	jmp	L369
L368:
	movl	_dbg_info, %eax
L369:
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC23, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
L367:
	movl	__ZL12dbg_func_ptr, %eax
	cmpl	%eax, -32(%ebp)
	jne	L370
	jmp	L374
L372:
	leal	24(%ebp), %ebp
	movl	-148(%ebp), %eax
	movl	%eax, -160(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-160(%ebp), %eax
	movl	%eax, -160(%ebp)
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -152(%ebp)
	call	__Unwind_SjLj_Resume
L374:
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA769:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE769-LLSDACSB769
LLSDACSB769:
	.uleb128 0
	.uleb128 0
LLSDACSE769:
	.text
	.section .rdata,"dr"
LC26:
	.ascii "\0"
	.text
	.globl	__Z14dbg_stacktracev
	.def	__Z14dbg_stacktracev;	.scl	2;	.type	32;	.endef
__Z14dbg_stacktracev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	$___gxx_personality_sj0, -84(%ebp)
	movl	$LLSDA770, -80(%ebp)
	leal	-76(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L385, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	_dbg_info, %eax
	testl	%eax, %eax
	je	L376
	movl	_dbg_info, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L377
L376:
	movl	$LC26, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	jmp	L375
L377:
	leal	-48(%ebp), %eax
	movl	$LC19, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	_dbg_info, %edx
	leal	-44(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-52(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	__ZL12dbg_func_ptr, %eax
	movl	%eax, -28(%ebp)
	cmpl	$__ZL12dbg_func_buf, -28(%ebp)
	jne	L379
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L380
L379:
	jmp	L381
L382:
	leal	-36(%ebp), %eax
	movl	$LC19, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-52(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -104(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L381:
	subl	$4, -28(%ebp)
	cmpl	$__ZL12dbg_func_buf, -28(%ebp)
	setne	%al
	testb	%al, %al
	jne	L382
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
L380:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L375
L385:
	leal	24(%ebp), %ebp
	movl	-100(%ebp), %eax
	movl	%eax, -112(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -104(%ebp)
	call	__Unwind_SjLj_Resume
L375:
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA770:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE770-LLSDACSB770
LLSDACSB770:
	.uleb128 0
	.uleb128 0
LLSDACSE770:
	.text
	.globl	__Z9dbg_throwPKc
	.def	__Z9dbg_throwPKc;	.scl	2;	.type	32;	.endef
__Z9dbg_throwPKc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z14dbg_stacktracev
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	$_dbg_exstack, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$4, (%esp)
	call	___cxa_allocate_exception
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	$0, 8(%esp)
	movl	$__ZTIPKc, 4(%esp)
	movl	%eax, (%esp)
	call	___cxa_throw
	.section .rdata,"dr"
LC27:
	.ascii "{{~~%s~~}}\12\0"
LC28:
	.ascii "????? %s ?????\0"
	.text
	.globl	__Z8dbg_stopv
	.def	__Z8dbg_stopv;	.scl	2;	.type	32;	.endef
__Z8dbg_stopv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$380, %esp
	movl	$___gxx_personality_sj0, -340(%ebp)
	movl	$LLSDA772, -336(%ebp)
	leal	-332(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L407, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-364(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	_dbg_info, %eax
	movl	%eax, 8(%esp)
	movl	$LC27, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$-1, -360(%ebp)
	call	__Z13dbg_callstackv
	leal	-40(%ebp), %eax
	movl	$LC26, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9dbg_print6String
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L404:
	movl	__imp___iob, %eax
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	leal	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	_fgets
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L389
	movl	$-1, (%esp)
	call	_exit
L389:
	movl	$10, 4(%esp)
	leal	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	_strchr
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L390
	movl	$-1, (%esp)
	call	_exit
L390:
	movl	-28(%ebp), %eax
	movb	$0, (%eax)
	movzbl	-300(%ebp), %eax
	movsbl	%al, %eax
	subl	$63, %eax
	cmpl	$52, %eax
	ja	L391
	movl	L393(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L393:
	.long	L409
	.long	L394
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L395
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L396
	.long	L391
	.long	L391
	.long	L391
	.long	L391
	.long	L397
	.long	L398
	.long	L399
	.text
L398:
	movl	$0, __ZL11dbg_suspend
	movl	$0, __ZL12dbg_stepmode
	jmp	L388
L399:
	movl	$1, __ZL11dbg_suspend
	movl	$115, __ZL12dbg_stepmode
	jmp	L388
L395:
	movl	$1, __ZL11dbg_suspend
	movl	$101, __ZL12dbg_stepmode
	jmp	L388
L396:
	movl	$0, __ZL11dbg_suspend
	movl	$108, __ZL12dbg_stepmode
	jmp	L388
L394:
	movl	$0, -44(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC22, 4(%esp)
	leal	-300(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	_sscanf
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	L402
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$20, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %edx
	leal	-36(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -360(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9dbg_print6String
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L400
L402:
	leal	-32(%ebp), %eax
	movl	$LC26, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9dbg_print6String
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L400
L397:
	movl	$0, (%esp)
	call	_exit
L391:
	leal	-300(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_printf
	movl	__imp___iob, %eax
	addl	$32, %eax
	movl	%eax, (%esp)
	call	_fflush
	movl	$-1, (%esp)
	call	_exit
L409:
	nop
L400:
	jmp	L404
L407:
	leal	24(%ebp), %ebp
	movl	-356(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -360(%ebp)
	call	__Unwind_SjLj_Resume
L388:
	leal	-364(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA772:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE772-LLSDACSB772
LLSDACSB772:
	.uleb128 0
	.uleb128 0
LLSDACSE772:
	.text
	.section .rdata,"dr"
LC29:
	.ascii "Monkey Runtime Error : \0"
	.text
	.globl	__Z9dbg_errorPKc
	.def	__Z9dbg_errorPKc;	.scl	2;	.type	32;	.endef
__Z9dbg_errorPKc:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA773, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L414, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
L411:
	leal	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	$LC29, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -88(%ebp)
	call	__Z7bbPrint6String
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Z14dbg_stacktracev
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -88(%ebp)
	call	__Z7bbPrint6String
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$-1, -88(%ebp)
	call	__Z8dbg_stopv
	jmp	L411
L414:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %edx
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	L415
	subl	$1, %eax
	testl	%eax, %eax
	je	L416
	subl	$1, %eax
		.word	0x0b0f
L415:
	movl	%edx, -96(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L416:
	movl	%edx, -96(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
	.section	.gcc_except_table,"w"
LLSDA773:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE773-LLSDACSB773
LLSDACSB773:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE773:
	.text
	.globl	_argc
	.bss
	.align 4
_argc:
	.space 4
	.globl	_argv
	.align 4
_argv:
	.space 4
	.globl	_D2R
	.data
	.align 4
_D2R:
	.long	1016003125
	.globl	_R2D
	.align 4
_R2D:
	.long	1113927393
.lcomm __ZGVZ7bbPrint6StringE3buf,8,8
	.text
	.def	___tcf_0;	.scl	3;	.type	32;	.endef
___tcf_0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	$__ZZ7bbPrint6StringE3buf, %ecx
	call	__ZNSt6vectorIhSaIhEED1Ev
	leave
	ret
	.globl	__Z7bbPrint6String
	.def	__Z7bbPrint6String;	.scl	2;	.type	32;	.endef
__Z7bbPrint6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA774, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L425, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$__ZGVZ7bbPrint6StringE3buf, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L419
	movl	$__ZGVZ7bbPrint6StringE3buf, (%esp)
	call	___cxa_guard_acquire
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L419
	movb	$0, -96(%ebp)
	movl	$1, -88(%ebp)
	movl	$__ZZ7bbPrint6StringE3buf, %ecx
	call	__ZNSt6vectorIhSaIhEEC1Ev
	movl	$__ZGVZ7bbPrint6StringE3buf, (%esp)
	call	___cxa_guard_release
	movl	$___tcf_0, (%esp)
	call	_atexit
L419:
	movl	$-1, -88(%ebp)
	movl	$__ZZ7bbPrint6StringE3buf, %ecx
	call	__ZNSt6vectorIhSaIhEE5clearEv
	movl	$__ZZ7bbPrint6StringE3buf, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNK6String4SaveERSt6vectorIhSaIhEE
	subl	$4, %esp
	movb	$10, -26(%ebp)
	leal	-26(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -88(%ebp)
	movl	$__ZZ7bbPrint6StringE3buf, %ecx
	call	__ZNSt6vectorIhSaIhEE9push_backERKh
	subl	$4, %esp
	movb	$0, -25(%ebp)
	leal	-25(%ebp), %eax
	movl	%eax, (%esp)
	movl	$3, -88(%ebp)
	movl	$__ZZ7bbPrint6StringE3buf, %ecx
	call	__ZNSt6vectorIhSaIhEE9push_backERKh
	subl	$4, %esp
	movl	$0, (%esp)
	movl	$__ZZ7bbPrint6StringE3buf, %ecx
	call	__ZNSt6vectorIhSaIhEEixEj
	subl	$4, %esp
	movl	__imp___iob, %edx
	addl	$32, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_fputs
	movl	__imp___iob, %eax
	addl	$32, %eax
	movl	%eax, (%esp)
	call	_fflush
	movl	$0, %eax
	movl	%eax, -96(%ebp)
	jmp	L429
L425:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %edx
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	L426
	subl	$1, %eax
	testl	%eax, %eax
	je	L427
	subl	$1, %eax
	testl	%eax, %eax
	je	L428
	subl	$1, %eax
		.word	0x0b0f
L426:
	movl	%edx, -100(%ebp)
	cmpb	$0, -96(%ebp)
	jne	L422
	movl	$__ZGVZ7bbPrint6StringE3buf, (%esp)
	call	___cxa_guard_abort
L422:
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L427:
	movl	%edx, %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L428:
	movl	%edx, %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L429:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-96(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA774:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE774-LLSDACSB774
LLSDACSB774:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE774:
	.text
	.globl	__Z7bbError6String
	.def	__Z7bbError6String;	.scl	2;	.type	32;	.endef
__Z7bbError6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA776, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L434, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	8(%ebp), %ecx
	call	__ZNK6String6LengthEv
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L431
	movl	$0, (%esp)
	call	_exit
L431:
	leal	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	$-1, -88(%ebp)
	movl	%eax, %ecx
	call	__ZNK6String9ToCStringIcEENS_7CStringIT_EEv
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String7CStringIcEcvPKcEv
	movl	%eax, (%esp)
	movl	$1, -88(%ebp)
	call	__Z9dbg_errorPKc
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6String7CStringIcED1Ev
	movl	$0, %eax
	movl	%eax, -96(%ebp)
	jmp	L436
L434:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6String7CStringIcED1Ev
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L436:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-96(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA776:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE776-LLSDACSB776
LLSDACSB776:
	.uleb128 0
	.uleb128 0
LLSDACSE776:
	.text
	.globl	__Z10bbDebugLog6String
	.def	__Z10bbDebugLog6String;	.scl	2;	.type	32;	.endef
__Z10bbDebugLog6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA777, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L440, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -88(%ebp)
	call	__Z7bbPrint6String
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$0, %eax
	movl	%eax, -96(%ebp)
	jmp	L442
L440:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L442:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-96(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA777:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE777-LLSDACSB777
LLSDACSB777:
	.uleb128 0
	.uleb128 0
LLSDACSE777:
	.text
	.globl	__Z11bbDebugStopv
	.def	__Z11bbDebugStopv;	.scl	2;	.type	32;	.endef
__Z11bbDebugStopv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	call	__Z8dbg_stopv
	movl	$0, %eax
	leave
	ret
	.section .rdata,"dr"
LC30:
	.ascii "Memory access violation\0"
LC31:
	.ascii "Illegal instruction\0"
LC32:
	.ascii "Floating point exception\0"
LC33:
	.ascii "Unknown signal\0"
	.text
	.globl	__Z10sighandleri
	.def	__Z10sighandleri;	.scl	2;	.type	32;	.endef
__Z10sighandleri:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	cmpl	$8, %eax
	je	L447
	cmpl	$11, %eax
	je	L448
	cmpl	$4, %eax
	je	L449
	jmp	L446
L448:
	movl	$LC30, (%esp)
	call	__Z9dbg_errorPKc
L449:
	movl	$LC31, (%esp)
	call	__Z9dbg_errorPKc
L447:
	movl	$LC32, (%esp)
	call	__Z9dbg_errorPKc
L446:
	movl	$LC33, (%esp)
	call	__Z9dbg_errorPKc
	leave
	ret
	.section .rdata,"dr"
LC34:
	.ascii "en_US.UTF-8\0"
	.text
	.globl	__Z11bb_std_mainiPPKc
	.def	__Z11bb_std_mainiPPKc;	.scl	2;	.type	32;	.endef
__Z11bb_std_mainiPPKc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, _argc
	movl	12(%ebp), %eax
	movl	%eax, _argv
	movl	$__Z10sighandleri, 4(%esp)
	movl	$11, (%esp)
	call	_signal
	movl	$__Z10sighandleri, 4(%esp)
	movl	$4, (%esp)
	call	_signal
	movl	$__Z10sighandleri, 4(%esp)
	movl	$8, (%esp)
	call	_signal
	movl	$LC34, 4(%esp)
	movl	$2, (%esp)
	call	_setlocale
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L451
	movl	$LC26, 4(%esp)
	movl	$2, (%esp)
	call	_setlocale
L451:
	call	__Z8gc_init1v
	call	__Z6bbInitv
	call	__Z8gc_init2v
	call	__Z6bbMainv
	movl	$0, %eax
	leave
	ret
	.section	.text$_ZN14BBGameDelegate9StartGameEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegate9StartGameEv
	.def	__ZN14BBGameDelegate9StartGameEv;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegate9StartGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret
	.section	.text$_ZN14BBGameDelegate11SuspendGameEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegate11SuspendGameEv
	.def	__ZN14BBGameDelegate11SuspendGameEv;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegate11SuspendGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret
	.section	.text$_ZN14BBGameDelegate10ResumeGameEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegate10ResumeGameEv
	.def	__ZN14BBGameDelegate10ResumeGameEv;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegate10ResumeGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret
	.section	.text$_ZN14BBGameDelegate10UpdateGameEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegate10UpdateGameEv
	.def	__ZN14BBGameDelegate10UpdateGameEv;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegate10UpdateGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret
	.section	.text$_ZN14BBGameDelegate10RenderGameEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegate10RenderGameEv
	.def	__ZN14BBGameDelegate10RenderGameEv;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegate10RenderGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret
	.section	.text$_ZN14BBGameDelegate8KeyEventEii,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegate8KeyEventEii
	.def	__ZN14BBGameDelegate8KeyEventEii;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegate8KeyEventEii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret	$8
	.section	.text$_ZN14BBGameDelegate10MouseEventEiiff,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegate10MouseEventEiiff
	.def	__ZN14BBGameDelegate10MouseEventEiiff;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegate10MouseEventEiiff:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret	$16
	.section	.text$_ZN14BBGameDelegate10TouchEventEiiff,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegate10TouchEventEiiff
	.def	__ZN14BBGameDelegate10TouchEventEiiff;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegate10TouchEventEiiff:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret	$16
	.section	.text$_ZN14BBGameDelegate11MotionEventEiifff,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegate11MotionEventEiifff
	.def	__ZN14BBGameDelegate11MotionEventEiifff;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegate11MotionEventEiifff:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret	$20
	.section	.text$_ZN14BBGameDelegate15DiscardGraphicsEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegate15DiscardGraphicsEv
	.def	__ZN14BBGameDelegate15DiscardGraphicsEv;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegate15DiscardGraphicsEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret
	.section	.text$_ZN13BBDisplayModeC1Eiiiii,"x"
	.linkonce discard
	.align 2
	.globl	__ZN13BBDisplayModeC1Eiiiii
	.def	__ZN13BBDisplayModeC1Eiiiii;	.scl	2;	.type	32;	.endef
__ZN13BBDisplayModeC1Eiiiii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV13BBDisplayMode+8, (%eax)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-4(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	-4(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	-4(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	-4(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%edx, 32(%eax)
	leave
	ret	$20
	.section	.text$_ZN6BBGameD2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGameD2Ev
	.def	__ZN6BBGameD2Ev;	.scl	2;	.type	32;	.endef
__ZN6BBGameD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV6BBGame+8, (%eax)
	movl	$0, %eax
	testl	%eax, %eax
	je	L464
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
L464:
	leave
	ret
	.section	.text$_ZN6BBGameD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGameD1Ev
	.def	__ZN6BBGameD1Ev;	.scl	2;	.type	32;	.endef
__ZN6BBGameD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV6BBGame+8, (%eax)
	movl	$0, %eax
	testl	%eax, %eax
	je	L467
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
L467:
	leave
	ret
	.section	.text$_ZN6BBGameD0Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGameD0Ev
	.def	__ZN6BBGameD0Ev;	.scl	2;	.type	32;	.endef
__ZN6BBGameD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6BBGameD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	leave
	ret
	.section	.text$_ZN6BBGame4GameEv,"x"
	.linkonce discard
	.globl	__ZN6BBGame4GameEv
	.def	__ZN6BBGame4GameEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame4GameEv:
	pushl	%ebp
	movl	%esp, %ebp
	movl	__ZN6BBGame5_gameE, %eax
	popl	%ebp
	ret
	.section	.text$_ZN6BBGame8DelegateEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGame8DelegateEv
	.def	__ZN6BBGame8DelegateEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame8DelegateEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	leave
	ret
	.section	.text$_ZN6BBGame7StartedEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGame7StartedEv
	.def	__ZN6BBGame7StartedEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame7StartedEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movzbl	16(%eax), %eax
	leave
	ret
	.section	.text$_ZN6BBGame9SuspendedEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGame9SuspendedEv
	.def	__ZN6BBGame9SuspendedEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame9SuspendedEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movzbl	17(%eax), %eax
	leave
	ret
	.section	.text$_ZN6BBGame14GetDeviceWidthEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGame14GetDeviceWidthEv
	.def	__ZN6BBGame14GetDeviceWidthEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame14GetDeviceWidthEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret
	.section	.text$_ZN6BBGame15GetDeviceHeightEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGame15GetDeviceHeightEv
	.def	__ZN6BBGame15GetDeviceHeightEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame15GetDeviceHeightEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret
	.section	.text$_ZN6BBGame15SetDeviceWindowEiii,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGame15SetDeviceWindowEiii
	.def	__ZN6BBGame15SetDeviceWindowEiii;	.scl	2;	.type	32;	.endef
__ZN6BBGame15SetDeviceWindowEiii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret	$12
	.section	.text$_ZN6BBGame15GetDisplayModesEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGame15GetDisplayModesEv
	.def	__ZN6BBGame15GetDisplayModesEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame15GetDisplayModesEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13BBDisplayModeEC1Ev
	movl	-12(%ebp), %eax
	leave
	ret	$4
	.section	.text$_ZN6BBGame14GetDesktopModeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGame14GetDesktopModeEv
	.def	__ZN6BBGame14GetDesktopModeEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame14GetDesktopModeEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret
	.section	.text$_ZN6BBGame15SetSwapIntervalEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGame15SetSwapIntervalEi
	.def	__ZN6BBGame15SetSwapIntervalEi;	.scl	2;	.type	32;	.endef
__ZN6BBGame15SetSwapIntervalEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret	$4
	.section	.text$_ZN6BBGame13LoadImageDataE6StringPiS1_S1_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGame13LoadImageDataE6StringPiS1_S1_
	.def	__ZN6BBGame13LoadImageDataE6StringPiS1_S1_;	.scl	2;	.type	32;	.endef
__ZN6BBGame13LoadImageDataE6StringPiS1_S1_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret	$16
	.section	.text$_ZN6BBGame13LoadAudioDataE6StringPiS1_S1_S1_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN6BBGame13LoadAudioDataE6StringPiS1_S1_S1_
	.def	__ZN6BBGame13LoadAudioDataE6StringPiS1_S1_S1_;	.scl	2;	.type	32;	.endef
__ZN6BBGame13LoadAudioDataE6StringPiS1_S1_S1_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret	$20
	.globl	__ZN6BBGame5_gameE
	.bss
	.align 4
__ZN6BBGame5_gameE:
	.space 4
	.text
	.align 2
	.globl	__ZN6BBGameC2Ev
	.def	__ZN6BBGameC2Ev;	.scl	2;	.type	32;	.endef
__ZN6BBGameC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$__ZTV6BBGame+8, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-4(%ebp), %eax
	movb	$0, 8(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 12(%eax)
	movl	-4(%ebp), %eax
	movb	$0, 16(%eax)
	movl	-4(%ebp), %eax
	movb	$0, 17(%eax)
	movl	-4(%ebp), %eax
	movl	%eax, __ZN6BBGame5_gameE
	leave
	ret
	.globl	__ZN6BBGameC1Ev
	.def	__ZN6BBGameC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN6BBGameC1Ev,__ZN6BBGameC2Ev
	.align 2
	.globl	__ZN6BBGame11SetDelegateEP14BBGameDelegate
	.def	__ZN6BBGame11SetDelegateEP14BBGameDelegate;	.scl	2;	.type	32;	.endef
__ZN6BBGame11SetDelegateEP14BBGameDelegate:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%eax)
	leave
	ret	$4
	.align 2
	.globl	__ZN6BBGame18SetKeyboardEnabledEb
	.def	__ZN6BBGame18SetKeyboardEnabledEb;	.scl	2;	.type	32;	.endef
__ZN6BBGame18SetKeyboardEnabledEb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	%ecx, -4(%ebp)
	movl	8(%ebp), %eax
	movb	%al, -8(%ebp)
	movl	-4(%ebp), %eax
	movzbl	-8(%ebp), %edx
	movb	%dl, 8(%eax)
	leave
	ret	$4
	.align 2
	.globl	__ZN6BBGame15KeyboardEnabledEv
	.def	__ZN6BBGame15KeyboardEnabledEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame15KeyboardEnabledEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	leave
	ret
	.align 2
	.globl	__ZN6BBGame13SetUpdateRateEi
	.def	__ZN6BBGame13SetUpdateRateEi;	.scl	2;	.type	32;	.endef
__ZN6BBGame13SetUpdateRateEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 12(%eax)
	leave
	ret	$4
	.align 2
	.globl	__ZN6BBGame10UpdateRateEv
	.def	__ZN6BBGame10UpdateRateEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame10UpdateRateEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	leave
	ret
	.align 2
	.globl	__ZN6BBGame9MillisecsEv
	.def	__ZN6BBGame9MillisecsEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame9MillisecsEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret
	.align 2
	.globl	__ZN6BBGame7GetDateE5ArrayIiE
	.def	__ZN6BBGame7GetDateE5ArrayIiE;	.scl	2;	.type	32;	.endef
__ZN6BBGame7GetDateE5ArrayIiE:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNK5ArrayIiE6LengthEv
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jle	L504
	movl	$0, (%esp)
	call	_time
	movl	%eax, -20(%ebp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_localtime
	movl	%eax, -16(%ebp)
	movl	$0, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	20(%edx), %edx
	addl	$1900, %edx
	movl	%edx, (%eax)
	cmpl	$1, -12(%ebp)
	jle	L506
	movl	$1, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	16(%edx), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	cmpl	$2, -12(%ebp)
	jle	L506
	movl	$2, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	12(%edx), %edx
	movl	%edx, (%eax)
	cmpl	$3, -12(%ebp)
	jle	L506
	movl	$3, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	8(%edx), %edx
	movl	%edx, (%eax)
	cmpl	$4, -12(%ebp)
	jle	L506
	movl	$4, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, (%eax)
	cmpl	$5, -12(%ebp)
	jle	L506
	movl	$5, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%eax)
	cmpl	$6, -12(%ebp)
	jle	L506
	movl	$6, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	$0, (%eax)
L506:
L504:
	leave
	ret	$4
	.section .rdata,"dr"
LC35:
	.ascii "wb\0"
LC36:
	.ascii "./.monkeystate\0"
	.text
	.align 2
	.globl	__ZN6BBGame9SaveStateE6String
	.def	__ZN6BBGame9SaveStateE6String;	.scl	2;	.type	32;	.endef
__ZN6BBGame9SaveStateE6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA820, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L513, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$100, %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	leal	-40(%ebp), %eax
	movl	$LC35, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	$LC36, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	-44(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	*-100(%ebp)
	subl	$8, %esp
	movl	%eax, -28(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpl	$0, -28(%ebp)
	je	L508
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNK6String4SaveEP6_iobuf
	subl	$4, %esp
	movb	%al, -29(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	cmpb	$0, -29(%ebp)
	je	L509
	movl	$0, %eax
	jmp	L510
L509:
	movl	$-2, %eax
L510:
	jmp	L511
L508:
	movl	$-1, %eax
L511:
	movl	%eax, -100(%ebp)
	jmp	L515
L513:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L515:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA820:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE820-LLSDACSB820
LLSDACSB820:
	.uleb128 0
	.uleb128 0
LLSDACSE820:
	.text
	.section .rdata,"dr"
LC37:
	.ascii "rb\0"
	.text
	.align 2
	.globl	__ZN6BBGame9LoadStateEv
	.def	__ZN6BBGame9LoadStateEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame9LoadStateEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA821, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L521, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$100, %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	$LC37, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	$LC36, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	movl	8(%ebp), %ecx
	call	*-100(%ebp)
	subl	$8, %esp
	movl	%eax, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpl	$0, -28(%ebp)
	je	L517
	leal	-40(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$2, -92(%ebp)
	call	__ZN6String4LoadEP6_iobuf
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-44(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L516
L517:
	movl	-44(%ebp), %eax
	movl	$LC26, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	jmp	L516
L521:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L522
	subl	$1, %eax
	testl	%eax, %eax
	je	L523
	subl	$1, %eax
		.word	0x0b0f
L522:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L523:
	movl	%edx, %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L516:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-44(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA821:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE821-LLSDACSB821
LLSDACSB821:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE821:
	.text
	.align 2
	.globl	__ZN6BBGame10LoadStringE6String
	.def	__ZN6BBGame10LoadStringE6String;	.scl	2;	.type	32;	.endef
__ZN6BBGame10LoadStringE6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA822, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L529, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$100, %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	$LC37, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	movl	8(%ebp), %ecx
	call	*-100(%ebp)
	subl	$8, %esp
	movl	%eax, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpl	$0, -28(%ebp)
	je	L525
	leal	-40(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$2, -92(%ebp)
	call	__ZN6String4LoadEP6_iobuf
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-44(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L524
L525:
	movl	-44(%ebp), %eax
	movl	$LC26, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	jmp	L524
L529:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L530
	subl	$1, %eax
	testl	%eax, %eax
	je	L531
	subl	$1, %eax
		.word	0x0b0f
L530:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L531:
	movl	%edx, %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L524:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-44(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA822:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE822-LLSDACSB822
LLSDACSB822:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE822:
	.text
	.align 2
	.globl	__ZN6BBGame12PollJoystickEi5ArrayIfES1_S1_S0_IbE
	.def	__ZN6BBGame12PollJoystickEi5ArrayIfES1_S1_S0_IbE;	.scl	2;	.type	32;	.endef
__ZN6BBGame12PollJoystickEi5ArrayIfES1_S1_S0_IbE:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret	$20
	.align 2
	.globl	__ZN6BBGame7OpenUrlE6String
	.def	__ZN6BBGame7OpenUrlE6String;	.scl	2;	.type	32;	.endef
__ZN6BBGame7OpenUrlE6String:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret	$4
	.align 2
	.globl	__ZN6BBGame15SetMouseVisibleEb
	.def	__ZN6BBGame15SetMouseVisibleEb;	.scl	2;	.type	32;	.endef
__ZN6BBGame15SetMouseVisibleEb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	%ecx, -4(%ebp)
	movl	8(%ebp), %eax
	movb	%al, -8(%ebp)
	leave
	ret	$4
	.align 2
	.globl	__ZN6BBGame14PathToFilePathE6String
	.def	__ZN6BBGame14PathToFilePathE6String;	.scl	2;	.type	32;	.endef
__ZN6BBGame14PathToFilePathE6String:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	ret	$8
	.align 2
	.globl	__ZN6BBGame8OpenFileE6StringS0_
	.def	__ZN6BBGame8OpenFileE6StringS0_;	.scl	2;	.type	32;	.endef
__ZN6BBGame8OpenFileE6StringS0_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA827, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L543, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	addl	$96, %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -108(%ebp)
	movl	%eax, %ecx
	call	*-116(%ebp)
	subl	$8, %esp
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-36(%ebp), %eax
	movl	$LC26, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -116(%ebp)
	je	L539
	movl	$0, -116(%ebp)
	jmp	L540
L539:
	leal	-32(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	$-1, -108(%ebp)
	movl	%eax, %ecx
	call	__ZNK6String9ToCStringIwEENS_7CStringIT_EEv
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String7CStringIwEcvPKwEv
	movl	%eax, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -108(%ebp)
	movl	%eax, %ecx
	call	__ZNK6String9ToCStringIwEENS_7CStringIT_EEv
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String7CStringIwEcvPKwEv
	movl	-116(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__wfopen
	movl	%eax, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6String7CStringIwED1Ev
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6String7CStringIwED1Ev
L540:
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L546
L543:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L544
	subl	$1, %eax
	testl	%eax, %eax
	je	L545
	subl	$1, %eax
		.word	0x0b0f
L544:
	movl	%edx, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L545:
	movl	%edx, -116(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6String7CStringIwED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L546:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA827:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE827-LLSDACSB827
LLSDACSB827:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE827:
	.text
	.align 2
	.globl	__ZN6BBGame8LoadDataE6StringPi
	.def	__ZN6BBGame8LoadDataE6StringPi;	.scl	2;	.type	32;	.endef
__ZN6BBGame8LoadDataE6StringPi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	movl	%ecx, -92(%ebp)
	movl	$___gxx_personality_sj0, -120(%ebp)
	movl	$LLSDA828, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L558, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	addl	$100, %eax
	movl	(%eax), %eax
	movl	%eax, -148(%ebp)
	leal	-68(%ebp), %eax
	movl	$LC37, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-92(%ebp), %eax
	leal	-68(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-64(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -140(%ebp)
	movl	%eax, %ecx
	call	*-148(%ebp)
	subl	$8, %esp
	movl	%eax, -44(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpl	$0, -44(%ebp)
	jne	L548
	movl	$0, -148(%ebp)
	jmp	L554
L548:
	movl	$4096, -48(%ebp)
	leal	-80(%ebp), %eax
	movl	$2, -140(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIPvSaIS0_EEC1Ev
	movl	$0, -28(%ebp)
L552:
	movl	$4096, (%esp)
	call	_malloc
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$4096, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_fread
	movl	%eax, -52(%ebp)
	leal	-80(%ebp), %eax
	leal	-84(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -140(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIPvSaIS0_EE9push_backERKS0_
	subl	$4, %esp
	movl	-52(%ebp), %eax
	addl	%eax, -28(%ebp)
	cmpl	$4096, -52(%ebp)
	je	L550
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -40(%ebp)
	jmp	L551
L550:
	jmp	L552
L553:
	movl	$4096, %eax
	cmpl	$4096, -36(%ebp)
	cmovle	-36(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	-40(%ebp), %edx
	leal	-80(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIPvSaIS0_EEixEj
	subl	$4, %esp
	movl	(%eax), %eax
	movl	-148(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-40(%ebp), %edx
	leal	-80(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIPvSaIS0_EEixEj
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-60(%ebp), %eax
	subl	%eax, -36(%ebp)
	movl	-60(%ebp), %eax
	addl	%eax, -32(%ebp)
	addl	$1, -40(%ebp)
L551:
	movl	-40(%ebp), %eax
	movl	%eax, -148(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIPvSaIS0_EE4sizeEv
	cmpl	%eax, -148(%ebp)
	setb	%al
	testb	%al, %al
	jne	L553
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%eax)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z15gc_ext_mallocedi
	movl	-56(%ebp), %eax
	movl	%eax, -148(%ebp)
	leal	-80(%ebp), %eax
	movl	$2, -140(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIPvSaIS0_EED1Ev
L554:
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L562
L558:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %edx
	movl	-140(%ebp), %eax
	testl	%eax, %eax
	je	L559
	subl	$1, %eax
	testl	%eax, %eax
	je	L560
	subl	$1, %eax
	testl	%eax, %eax
	je	L561
	subl	$1, %eax
		.word	0x0b0f
L559:
	movl	%edx, -148(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	jmp	L556
L561:
	movl	%edx, %eax
	movl	%eax, -148(%ebp)
	leal	-80(%ebp), %eax
	movl	$0, -140(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIPvSaIS0_EED1Ev
	movl	-148(%ebp), %eax
	jmp	L556
L560:
	movl	%edx, %eax
L556:
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L562:
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-148(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA828:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE828-LLSDACSB828
LLSDACSB828:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE828:
	.text
	.section .rdata,"dr"
	.align 4
LC38:
	.ascii "Monkey Runtime Error : Uncaught Monkey Exception\0"
	.text
	.align 2
	.globl	__ZN6BBGame3DieEP15ThrowableObject
	.def	__ZN6BBGame3DieEP15ThrowableObject;	.scl	2;	.type	32;	.endef
__ZN6BBGame3DieEP15ThrowableObject:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA829, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L566, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-32(%ebp), %eax
	movl	$LC38, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z7bbPrint6String
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -92(%ebp)
	call	__Z7bbPrint6String
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$-1, (%esp)
	call	_exit
L566:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L567
	subl	$1, %eax
	testl	%eax, %eax
	je	L568
	subl	$1, %eax
		.word	0x0b0f
L567:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L568:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
	.section	.gcc_except_table,"w"
LLSDA829:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE829-LLSDACSB829
LLSDACSB829:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE829:
	.text
	.align 2
	.globl	__ZN6BBGame10gc_collectEv
	.def	__ZN6BBGame10gc_collectEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame10gc_collectEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__Z7gc_markI14BBGameDelegateEvPT_
	call	__Z10gc_collectv
	leave
	ret
	.align 2
	.globl	__ZN6BBGame9StartGameEv
	.def	__ZN6BBGame9StartGameEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame9StartGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA831, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L578, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	testb	%al, %al
	je	L571
	jmp	L570
L571:
	movl	-44(%ebp), %eax
	movb	$1, 16(%eax)
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	4(%edx), %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
L577:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L570
L580:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L578:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L579
	subl	$1, %eax
	testl	%eax, %eax
	je	L580
	subl	$1, %eax
		.word	0x0b0f
L579:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L576
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L576:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$116, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	call	___cxa_end_catch
	jmp	L577
L570:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
	.align 4
LLSDA831:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT831-LLSDATTD831
LLSDATTD831:
	.byte	0x1
	.uleb128 LLSDACSE831-LLSDACSB831
LLSDACSB831:
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0
LLSDACSE831:
	.byte	0x1
	.byte	0
	.align 4
	.long	__ZTIP15ThrowableObject
LLSDATT831:
	.text
	.align 2
	.globl	__ZN6BBGame11SuspendGameEv
	.def	__ZN6BBGame11SuspendGameEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame11SuspendGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA832, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L590, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L582
	movl	-44(%ebp), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	je	L583
L582:
	jmp	L581
L583:
	movl	-44(%ebp), %eax
	movb	$1, 17(%eax)
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	4(%edx), %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
L589:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L581
L592:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L590:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L591
	subl	$1, %eax
	testl	%eax, %eax
	je	L592
	subl	$1, %eax
		.word	0x0b0f
L591:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L588
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L588:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$116, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	call	___cxa_end_catch
	jmp	L589
L581:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
	.align 4
LLSDA832:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT832-LLSDATTD832
LLSDATTD832:
	.byte	0x1
	.uleb128 LLSDACSE832-LLSDACSB832
LLSDACSB832:
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0
LLSDACSE832:
	.byte	0x1
	.byte	0
	.align 4
	.long	__ZTIP15ThrowableObject
LLSDATT832:
	.text
	.align 2
	.globl	__ZN6BBGame10ResumeGameEv
	.def	__ZN6BBGame10ResumeGameEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame10ResumeGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA833, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L602, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L594
	movl	-44(%ebp), %eax
	movzbl	17(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L595
L594:
	jmp	L593
L595:
	movl	-44(%ebp), %eax
	movb	$0, 17(%eax)
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	4(%edx), %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
L601:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L593
L604:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L602:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L603
	subl	$1, %eax
	testl	%eax, %eax
	je	L604
	subl	$1, %eax
		.word	0x0b0f
L603:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L600
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L600:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$116, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	call	___cxa_end_catch
	jmp	L601
L593:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
	.align 4
LLSDA833:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT833-LLSDATTD833
LLSDATTD833:
	.byte	0x1
	.uleb128 LLSDACSE833-LLSDACSB833
LLSDACSB833:
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0
LLSDACSE833:
	.byte	0x1
	.byte	0
	.align 4
	.long	__ZTIP15ThrowableObject
LLSDATT833:
	.text
	.align 2
	.globl	__ZN6BBGame10UpdateGameEv
	.def	__ZN6BBGame10UpdateGameEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame10UpdateGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA834, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L614, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L606
	movl	-44(%ebp), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	je	L607
L606:
	jmp	L605
L607:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	4(%edx), %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
L613:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L605
L616:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L614:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L615
	subl	$1, %eax
	testl	%eax, %eax
	je	L616
	subl	$1, %eax
		.word	0x0b0f
L615:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L612
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L612:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$116, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	call	___cxa_end_catch
	jmp	L613
L605:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
	.align 4
LLSDA834:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT834-LLSDATTD834
LLSDATTD834:
	.byte	0x1
	.uleb128 LLSDACSE834-LLSDACSB834
LLSDACSB834:
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0
LLSDACSE834:
	.byte	0x1
	.byte	0
	.align 4
	.long	__ZTIP15ThrowableObject
LLSDATT834:
	.text
	.align 2
	.globl	__ZN6BBGame10RenderGameEv
	.def	__ZN6BBGame10RenderGameEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame10RenderGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA835, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L625, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L618
	jmp	L617
L618:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	addl	$40, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	4(%edx), %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
L624:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L617
L627:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L625:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L626
	subl	$1, %eax
	testl	%eax, %eax
	je	L627
	subl	$1, %eax
		.word	0x0b0f
L626:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L623
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L623:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$116, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	call	___cxa_end_catch
	jmp	L624
L617:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
	.align 4
LLSDA835:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT835-LLSDATTD835
LLSDATTD835:
	.byte	0x1
	.uleb128 LLSDACSE835-LLSDACSB835
LLSDACSB835:
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0
LLSDACSE835:
	.byte	0x1
	.byte	0
	.align 4
	.long	__ZTIP15ThrowableObject
LLSDATT835:
	.text
	.align 2
	.globl	__ZN6BBGame8KeyEventEii
	.def	__ZN6BBGame8KeyEventEii;	.scl	2;	.type	32;	.endef
__ZN6BBGame8KeyEventEii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA836, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L636, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L629
	jmp	L628
L629:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	addl	$44, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$8, %esp
L635:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L628
L638:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L636:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L637
	subl	$1, %eax
	testl	%eax, %eax
	je	L638
	subl	$1, %eax
		.word	0x0b0f
L637:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L634
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L634:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$116, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	call	___cxa_end_catch
	jmp	L635
L628:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
	.align 4
LLSDA836:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT836-LLSDATTD836
LLSDATTD836:
	.byte	0x1
	.uleb128 LLSDACSE836-LLSDACSB836
LLSDACSB836:
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0
LLSDACSE836:
	.byte	0x1
	.byte	0
	.align 4
	.long	__ZTIP15ThrowableObject
LLSDATT836:
	.text
	.align 2
	.globl	__ZN6BBGame10MouseEventEiiff
	.def	__ZN6BBGame10MouseEventEiiff;	.scl	2;	.type	32;	.endef
__ZN6BBGame10MouseEventEiiff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA837, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L647, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L640
	jmp	L639
L640:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	addl	$48, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%ebx
	subl	$16, %esp
L646:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L639
L649:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L647:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L648
	subl	$1, %eax
	testl	%eax, %eax
	je	L649
	subl	$1, %eax
		.word	0x0b0f
L648:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L645
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L645:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$116, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	call	___cxa_end_catch
	jmp	L646
L639:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$16
	.section	.gcc_except_table,"w"
	.align 4
LLSDA837:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT837-LLSDATTD837
LLSDATTD837:
	.byte	0x1
	.uleb128 LLSDACSE837-LLSDACSB837
LLSDACSB837:
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0
LLSDACSE837:
	.byte	0x1
	.byte	0
	.align 4
	.long	__ZTIP15ThrowableObject
LLSDATT837:
	.text
	.align 2
	.globl	__ZN6BBGame10TouchEventEiiff
	.def	__ZN6BBGame10TouchEventEiiff;	.scl	2;	.type	32;	.endef
__ZN6BBGame10TouchEventEiiff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA838, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L658, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L651
	jmp	L650
L651:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	addl	$52, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%ebx
	subl	$16, %esp
L657:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L650
L660:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L658:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L659
	subl	$1, %eax
	testl	%eax, %eax
	je	L660
	subl	$1, %eax
		.word	0x0b0f
L659:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L656
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L656:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$116, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	call	___cxa_end_catch
	jmp	L657
L650:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$16
	.section	.gcc_except_table,"w"
	.align 4
LLSDA838:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT838-LLSDATTD838
LLSDATTD838:
	.byte	0x1
	.uleb128 LLSDACSE838-LLSDACSB838
LLSDACSB838:
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0
LLSDACSE838:
	.byte	0x1
	.byte	0
	.align 4
	.long	__ZTIP15ThrowableObject
LLSDATT838:
	.text
	.align 2
	.globl	__ZN6BBGame11MotionEventEiifff
	.def	__ZN6BBGame11MotionEventEiifff;	.scl	2;	.type	32;	.endef
__ZN6BBGame11MotionEventEiifff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA839, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L669, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L662
	jmp	L661
L662:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	addl	$56, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%ebx
	subl	$20, %esp
L668:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L661
L671:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L669:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L670
	subl	$1, %eax
	testl	%eax, %eax
	je	L671
	subl	$1, %eax
		.word	0x0b0f
L670:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L667
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L667:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$116, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	call	___cxa_end_catch
	jmp	L668
L661:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$20
	.section	.gcc_except_table,"w"
	.align 4
LLSDA839:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT839-LLSDATTD839
LLSDATTD839:
	.byte	0x1
	.uleb128 LLSDACSE839-LLSDACSB839
LLSDACSB839:
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0
LLSDACSE839:
	.byte	0x1
	.byte	0
	.align 4
	.long	__ZTIP15ThrowableObject
LLSDATT839:
	.text
	.align 2
	.globl	__ZN6BBGame15DiscardGraphicsEv
	.def	__ZN6BBGame15DiscardGraphicsEv;	.scl	2;	.type	32;	.endef
__ZN6BBGame15DiscardGraphicsEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA840, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L680, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L673
	jmp	L672
L673:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	addl	$60, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	4(%edx), %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
L679:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L672
L682:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L680:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L681
	subl	$1, %eax
	testl	%eax, %eax
	je	L682
	subl	$1, %eax
		.word	0x0b0f
L681:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L678
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L678:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$116, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	call	___cxa_end_catch
	jmp	L679
L672:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
	.align 4
LLSDA840:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT840-LLSDATTD840
LLSDATTD840:
	.byte	0x1
	.uleb128 LLSDACSE840-LLSDACSB840
LLSDACSB840:
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0
LLSDACSE840:
	.byte	0x1
	.byte	0
	.align 4
	.long	__ZTIP15ThrowableObject
LLSDATT840:
	.text
	.def	__ZL7readTagP6_iobuf;	.scl	3;	.type	32;	.endef
__ZL7readTagP6_iobuf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	movl	$__ZZL7readTagP6_iobufE3buf, (%esp)
	call	_fread
	cmpl	$1, %eax
	setne	%al
	testb	%al, %al
	je	L684
	movl	$LC26, %eax
	jmp	L685
L684:
	movb	$0, __ZZL7readTagP6_iobufE3buf+4
	movl	$__ZZL7readTagP6_iobufE3buf, %eax
L685:
	leave
	ret
	.def	__ZL7readIntP6_iobuf;	.scl	3;	.type	32;	.endef
__ZL7readIntP6_iobuf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	cmpl	$1, %eax
	setne	%al
	testb	%al, %al
	je	L687
	movl	$-1, %eax
	jmp	L689
L687:
	movzbl	-9(%ebp), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movzbl	-10(%ebp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	-11(%ebp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-12(%ebp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
L689:
	leave
	ret
	.def	__ZL9readShortP6_iobuf;	.scl	3;	.type	32;	.endef
__ZL9readShortP6_iobuf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$2, 4(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	cmpl	$1, %eax
	setne	%al
	testb	%al, %al
	je	L691
	movl	$-1, %eax
	jmp	L693
L691:
	movzbl	-9(%ebp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-10(%ebp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
L693:
	leave
	ret
	.def	__ZL9skipBytesiP6_iobuf;	.scl	3;	.type	32;	.endef
__ZL9skipBytesiP6_iobuf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	leave
	ret
	.section .rdata,"dr"
LC39:
	.ascii "RIFF\0"
LC40:
	.ascii "WAVE\0"
LC41:
	.ascii "fmt \0"
LC42:
	.ascii "data\0"
	.text
	.globl	__Z7LoadWAVP6_iobufPiS1_S1_S1_
	.def	__Z7LoadWAVP6_iobufPiS1_S1_S1_;	.scl	2;	.type	32;	.endef
__Z7LoadWAVP6_iobufPiS1_S1_S1_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readTagP6_iobuf
	movl	$LC39, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L696
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readIntP6_iobuf
	subl	$8, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readTagP6_iobuf
	movl	$LC40, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L697
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readTagP6_iobuf
	movl	$LC41, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L698
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readIntP6_iobuf
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL9readShortP6_iobuf
	movl	%eax, -20(%ebp)
	cmpl	$1, -20(%ebp)
	jne	L699
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL9readShortP6_iobuf
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readIntP6_iobuf
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readIntP6_iobuf
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL9readShortP6_iobuf
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL9readShortP6_iobuf
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	leal	7(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -44(%ebp)
	cmpl	$16, -16(%ebp)
	jle	L700
	movl	-16(%ebp), %eax
	leal	-16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL9skipBytesiP6_iobuf
L700:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readTagP6_iobuf
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_feof
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L701
	nop
	jmp	L699
L701:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readIntP6_iobuf
	movl	%eax, -52(%ebp)
	movl	$LC42, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L703
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL9skipBytesiP6_iobuf
	nop
	jmp	L700
L703:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -56(%ebp)
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	L705
	movl	-24(%ebp), %eax
	imull	-44(%ebp), %eax
	movl	%eax, %ecx
	movl	-52(%ebp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	16(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	24(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%eax)
	movl	-56(%ebp), %eax
	jmp	L706
L705:
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L700
L699:
L698:
L697:
L696:
	movl	$0, %eax
L706:
	leave
	ret
	.globl	__Z7LoadOGGP6_iobufPiS1_S1_S1_
	.def	__Z7LoadOGGP6_iobufPiS1_S1_S1_;	.scl	2;	.type	32;	.endef
__Z7LoadOGGP6_iobufPiS1_S1_S1_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	movl	$___gxx_personality_sj0, -116(%ebp)
	movl	$LLSDA846, -112(%ebp)
	leal	-108(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L716, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$0, 12(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -136(%ebp)
	call	_stb_vorbis_open_file
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	jne	L708
	movl	$0, %eax
	jmp	L714
L708:
	leal	-80(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -136(%ebp)
	call	_stb_vorbis_get_info
	movl	-76(%ebp), %eax
	sall	$12, %eax
	movl	%eax, -48(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -40(%ebp)
L713:
	movl	-28(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-28(%ebp), %eax
	leal	(%eax,%eax), %edx
	movl	-40(%ebp), %eax
	addl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -136(%ebp)
	call	_stb_vorbis_get_frame_short_interleaved
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	jne	L710
	nop
	movl	12(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, (%eax)
	movl	-76(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	$2, (%eax)
	movl	-80(%ebp), %eax
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -136(%ebp)
	call	_stb_vorbis_close
	jmp	L718
L710:
	movl	-52(%ebp), %eax
	addl	%eax, -32(%ebp)
	movl	-76(%ebp), %eax
	imull	-52(%ebp), %eax
	addl	%eax, -28(%ebp)
	movl	-48(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	cmpl	-36(%ebp), %eax
	jle	L712
	sall	-36(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -40(%ebp)
L712:
	jmp	L713
L718:
	movl	-40(%ebp), %eax
L714:
	movl	%eax, -144(%ebp)
	jmp	L719
L716:
	leal	24(%ebp), %ebp
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -136(%ebp)
	call	__Unwind_SjLj_Resume
L719:
	leal	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-144(%ebp), %eax
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA846:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE846-LLSDACSB846
LLSDACSB846:
	.uleb128 0
	.uleb128 0
LLSDACSE846:
	.text
	.section	.text$_ZN10BBGlfwGame8GlfwGameEv,"x"
	.linkonce discard
	.globl	__ZN10BBGlfwGame8GlfwGameEv
	.def	__ZN10BBGlfwGame8GlfwGameEv;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame8GlfwGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	popl	%ebp
	ret
	.section	.text$_ZN10BBGlfwGame14GetDeviceWidthEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN10BBGlfwGame14GetDeviceWidthEv
	.def	__ZN10BBGlfwGame14GetDeviceWidthEv;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame14GetDeviceWidthEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	48(%eax), %eax
	leave
	ret
	.section	.text$_ZN10BBGlfwGame15GetDeviceHeightEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN10BBGlfwGame15GetDeviceHeightEv
	.def	__ZN10BBGlfwGame15GetDeviceHeightEv;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame15GetDeviceHeightEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	52(%eax), %eax
	leave
	ret
	.section	.text$_ZN10BBGlfwGame13GetGLFWwindowEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN10BBGlfwGame13GetGLFWwindowEv
	.def	__ZN10BBGlfwGame13GetGLFWwindowEv;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame13GetGLFWwindowEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	44(%eax), %eax
	leave
	ret
	.globl	_glfwGraphicsSeq
	.bss
	.align 4
_glfwGraphicsSeq:
	.space 4
	.globl	__ZN10BBGlfwGame9_glfwGameE
	.align 4
__ZN10BBGlfwGame9_glfwGameE:
	.space 4
	.text
	.align 2
	.globl	__ZN10BBGlfwGameC2Ev
	.def	__ZN10BBGlfwGameC2Ev;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGameC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA852, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L731, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6BBGameC2Ev
	movl	-44(%ebp), %eax
	movl	$__ZTV10BBGlfwGame+8, (%eax)
	movl	-44(%ebp), %eax
	movl	$0, 44(%eax)
	movl	-44(%ebp), %eax
	movl	$0, 48(%eax)
	movl	-44(%ebp), %eax
	movl	$0, 52(%eax)
	movl	-44(%ebp), %eax
	movl	$1, 56(%eax)
	movl	-44(%ebp), %eax
	movb	$1, 60(%eax)
	movl	-44(%ebp), %eax
	fldz
	fstpl	64(%eax)
	movl	-44(%ebp), %eax
	fldz
	fstpl	72(%eax)
	movl	-44(%ebp), %eax
	movl	%eax, __ZN10BBGlfwGame9_glfwGameE
	movl	-44(%ebp), %eax
	addl	$20, %eax
	movl	$24, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$1, -92(%ebp)
	call	_glfwGetPrimaryMonitor
	movl	%eax, (%esp)
	call	_glfwGetVideoMode
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	L733
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	(%edx), %ecx
	movl	%ecx, 20(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 24(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 28(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 32(%eax)
	movl	16(%edx), %ecx
	movl	%ecx, 36(%eax)
	movl	20(%edx), %edx
	movl	%edx, 40(%eax)
	jmp	L733
L731:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6BBGameD2Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L733:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA852:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE852-LLSDACSB852
LLSDACSB852:
	.uleb128 0
	.uleb128 0
LLSDACSE852:
	.text
	.globl	__ZN10BBGlfwGameC1Ev
	.def	__ZN10BBGlfwGameC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN10BBGlfwGameC1Ev,__ZN10BBGlfwGameC2Ev
	.align 2
	.globl	__ZN10BBGlfwGame13SetUpdateRateEi
	.def	__ZN10BBGlfwGame13SetUpdateRateEi;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame13SetUpdateRateEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6BBGame13SetUpdateRateEi
	subl	$4, %esp
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L735
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	fildl	-8(%ebp)
	fld1
	fdivp	%st, %st(1)
	movl	-4(%ebp), %eax
	fstpl	64(%eax)
L735:
	movl	-4(%ebp), %eax
	fldz
	fstpl	72(%eax)
	leave
	ret	$4
	.align 2
	.globl	__ZN10BBGlfwGame9MillisecsEv
	.def	__ZN10BBGlfwGame9MillisecsEv;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame9MillisecsEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame7GetTimeEv
	fldl	LC45
	fmulp	%st, %st(1)
	fnstcw	-14(%ebp)
	movzwl	-14(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -16(%ebp)
	fldcw	-16(%ebp)
	fistpl	-20(%ebp)
	fldcw	-14(%ebp)
	movl	-20(%ebp), %eax
	leave
	ret
	.align 2
	.globl	__ZN10BBGlfwGame12PollJoystickEi5ArrayIfES1_S1_S0_IbE
	.def	__ZN10BBGlfwGame12PollJoystickEi5ArrayIfES1_S1_S0_IbE;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame12PollJoystickEi5ArrayIfES1_S1_S0_IbE:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$364, %esp
	movl	%ecx, -300(%ebp)
	movl	$___gxx_personality_sj0, -328(%ebp)
	movl	$LLSDA856, -324(%ebp)
	leal	-320(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L768, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	cmpl	$0, 8(%ebp)
	jne	L739
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	jmp	L740
L743:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -348(%ebp)
	call	_glfwJoystickPresent
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L741
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	-32(%ebp), %edx
	movl	%edx, __ZZN10BBGlfwGame12PollJoystickEi5ArrayIfES1_S1_S0_IbEE5pjoys(,%eax,4)
L741:
	addl	$1, -32(%ebp)
L740:
	cmpl	$15, -32(%ebp)
	jg	L742
	cmpl	$3, -28(%ebp)
	jle	L743
L742:
	jmp	L744
L745:
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	$-1, __ZZN10BBGlfwGame12PollJoystickEi5ArrayIfES1_S1_S0_IbEE5pjoys(,%eax,4)
L744:
	cmpl	$3, -28(%ebp)
	jle	L745
L739:
	movl	8(%ebp), %eax
	movl	__ZZN10BBGlfwGame12PollJoystickEi5ArrayIfES1_S1_S0_IbEE5pjoys(,%eax,4), %eax
	movl	%eax, 8(%ebp)
	cmpl	$-1, 8(%ebp)
	jne	L746
	movl	$0, %eax
	jmp	L766
L746:
	movl	$0, -80(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -348(%ebp)
	call	_glfwGetJoystickAxes
	movl	%eax, -60(%ebp)
	movl	$0, -84(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_glfwGetJoystickButtons
	movl	%eax, -64(%ebp)
	movl	$0, -112(%ebp)
	movl	$65, -108(%ebp)
	movl	$2, -104(%ebp)
	movl	$4, -100(%ebp)
	movl	$67, -96(%ebp)
	movl	$66, -92(%ebp)
	movl	$999, -88(%ebp)
	movl	$0, -284(%ebp)
	movl	$1, -280(%ebp)
	movl	$2, -276(%ebp)
	movl	$3, -272(%ebp)
	movl	$4, -268(%ebp)
	movl	$5, -264(%ebp)
	movl	$6, -260(%ebp)
	movl	$7, -256(%ebp)
	movl	$13, -252(%ebp)
	movl	$10, -248(%ebp)
	movl	$11, -244(%ebp)
	movl	$12, -240(%ebp)
	movl	$8, -236(%ebp)
	movl	$9, -232(%ebp)
	movl	$999, -228(%ebp)
	movl	$0, -140(%ebp)
	movl	$1, -136(%ebp)
	movl	$134, -132(%ebp)
	movl	$2, -128(%ebp)
	movl	$67, -124(%ebp)
	movl	$135, -120(%ebp)
	movl	$999, -116(%ebp)
	movl	$1, -224(%ebp)
	movl	$2, -220(%ebp)
	movl	$0, -216(%ebp)
	movl	$3, -212(%ebp)
	movl	$4, -208(%ebp)
	movl	$5, -204(%ebp)
	movl	$8, -200(%ebp)
	movl	$9, -196(%ebp)
	movl	$15, -192(%ebp)
	movl	$12, -188(%ebp)
	movl	$13, -184(%ebp)
	movl	$14, -180(%ebp)
	movl	$10, -176(%ebp)
	movl	$11, -172(%ebp)
	movl	$999, -168(%ebp)
	movl	-80(%ebp), %eax
	cmpl	$5, %eax
	jne	L748
	movl	-84(%ebp), %eax
	cmpl	$14, %eax
	jne	L748
	leal	-112(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	-284(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	L749
L748:
	leal	-140(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	-224(%ebp), %eax
	movl	%eax, -40(%ebp)
L749:
	movl	-36(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	LC46, %eax
	movl	%eax, -164(%ebp)
	movl	LC46, %eax
	movl	%eax, -160(%ebp)
	movl	LC46, %eax
	movl	%eax, -156(%ebp)
	movl	LC46, %eax
	movl	%eax, -152(%ebp)
	movl	LC46, %eax
	movl	%eax, -148(%ebp)
	movl	LC46, %eax
	movl	%eax, -144(%ebp)
	movl	$0, -44(%ebp)
	jmp	L750
L759:
	movl	-44(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-68(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	andl	$15, %eax
	movl	%eax, -72(%ebp)
	movl	-44(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-68(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	andl	$-16, %eax
	movl	%eax, -76(%ebp)
	cmpl	$16, -76(%ebp)
	jne	L751
	movl	-72(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	flds	(%eax)
	fld1
	faddp	%st, %st(1)
	flds	LC48
	fdivrp	%st, %st(1)
	movl	-44(%ebp), %eax
	fstps	-164(%ebp,%eax,4)
	jmp	L752
L751:
	cmpl	$32, -76(%ebp)
	jne	L753
	movl	-72(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	flds	(%eax)
	fld1
	fsubp	%st, %st(1)
	flds	LC48
	fdivrp	%st, %st(1)
	movl	-44(%ebp), %eax
	fstps	-164(%ebp,%eax,4)
	jmp	L752
L753:
	cmpl	$64, -76(%ebp)
	jne	L754
	movl	-72(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	flds	(%eax)
	fchs
	movl	-44(%ebp), %eax
	fstps	-164(%ebp,%eax,4)
	jmp	L752
L754:
	cmpl	$128, -76(%ebp)
	jne	L755
	movl	-72(%ebp), %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$1, %al
	jne	L756
	movl	LC47, %eax
	jmp	L757
L756:
	movl	LC46, %eax
L757:
	movl	-44(%ebp), %edx
	movl	%eax, -164(%ebp,%edx,4)
	jmp	L752
L755:
	movl	-72(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -164(%ebp,%edx,4)
L752:
	addl	$1, -44(%ebp)
L750:
	cmpl	$5, -44(%ebp)
	jg	L758
	movl	-44(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-68(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	$999, %eax
	jne	L759
L758:
	movl	12(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%eax, (%edx)
	movl	16(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	movl	%eax, %edx
	movl	-160(%ebp), %eax
	movl	%eax, (%edx)
	movl	20(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	movl	%eax, %edx
	movl	-156(%ebp), %eax
	movl	%eax, (%edx)
	movl	12(%ebp), %eax
	movl	$1, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	movl	%eax, %edx
	movl	-152(%ebp), %eax
	movl	%eax, (%edx)
	movl	16(%ebp), %eax
	movl	$1, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	movl	%eax, %edx
	movl	-148(%ebp), %eax
	movl	%eax, (%edx)
	movl	20(%ebp), %eax
	movl	$1, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	movl	%eax, %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	movl	-40(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	$0, -48(%ebp)
	jmp	L760
L761:
	movl	24(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIbEixEi
	subl	$4, %esp
	movb	$0, (%eax)
	addl	$1, -48(%ebp)
L760:
	cmpl	$31, -48(%ebp)
	jle	L761
	movl	$0, -52(%ebp)
	jmp	L762
L765:
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-68(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	jns	L763
	movl	-84(%ebp), %eax
	addl	%eax, -56(%ebp)
L763:
	movl	24(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIbEixEi
	subl	$4, %esp
	movl	-56(%ebp), %ecx
	movl	-64(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	cmpb	$1, %dl
	sete	%dl
	movb	%dl, (%eax)
	addl	$1, -52(%ebp)
L762:
	cmpl	$31, -52(%ebp)
	jg	L764
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-68(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	$999, %eax
	jne	L765
L764:
	movl	$1, %eax
L766:
	movb	%al, -353(%ebp)
	jmp	L770
L768:
	leal	24(%ebp), %ebp
	movl	-344(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -348(%ebp)
	call	__Unwind_SjLj_Resume
L770:
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-353(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$20
	.section	.gcc_except_table,"w"
LLSDA856:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE856-LLSDACSB856
LLSDACSB856:
	.uleb128 0
	.uleb128 0
LLSDACSE856:
	.text
	.section .rdata,"dr"
LC49:
	.ascii "open\0"
	.text
	.align 2
	.globl	__ZN10BBGlfwGame7OpenUrlE6String
	.def	__ZN10BBGlfwGame7OpenUrlE6String;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame7OpenUrlE6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA857, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L773, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	$-1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZNK6String9ToCStringIcEENS_7CStringIT_EEv
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String7CStringIcEcvPKcEv
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC49, 4(%esp)
	movl	$0, (%esp)
	movl	$1, -92(%ebp)
	call	_ShellExecuteA@24
	subl	$24, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6String7CStringIcED1Ev
	jmp	L775
L773:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6String7CStringIcED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L775:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA857:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE857-LLSDACSB857
LLSDACSB857:
	.uleb128 0
	.uleb128 0
LLSDACSE857:
	.text
	.align 2
	.globl	__ZN10BBGlfwGame15SetMouseVisibleEb
	.def	__ZN10BBGlfwGame15SetMouseVisibleEb;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame15SetMouseVisibleEb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movb	%al, -16(%ebp)
	cmpb	$0, -16(%ebp)
	je	L777
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	$212993, 8(%esp)
	movl	$208897, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwSetInputMode
	jmp	L776
L777:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	$212994, 8(%esp)
	movl	$208897, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwSetInputMode
L776:
	leave
	ret	$4
	.section .rdata,"dr"
LC50:
	.ascii "monkey:\0"
LC51:
	.ascii "monkey://data/\0"
LC52:
	.ascii "./data/\0"
LC53:
	.ascii "monkey://internal/\0"
LC54:
	.ascii "./internal/\0"
LC55:
	.ascii "monkey://external/\0"
LC56:
	.ascii "./external/\0"
	.text
	.align 2
	.globl	__ZN10BBGlfwGame14PathToFilePathE6String
	.def	__ZN10BBGlfwGame14PathToFilePathE6String;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame14PathToFilePathE6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$68, %esp
	movl	%ecx, -60(%ebp)
	leal	-48(%ebp), %eax
	movl	$LC50, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	12(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String10StartsWithES_
	subl	$4, %esp
	xorl	$1, %eax
	movl	%eax, %ebx
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	testb	%bl, %bl
	je	L780
	movl	-60(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L779
L780:
	leal	-44(%ebp), %eax
	movl	$LC51, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	12(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String10StartsWithES_
	subl	$4, %esp
	movl	%eax, %ebx
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	testb	%bl, %bl
	je	L782
	leal	-40(%ebp), %eax
	movl	$14, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String5SliceEi
	subl	$8, %esp
	leal	-36(%ebp), %eax
	movl	$LC52, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	-60(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L779
L782:
	leal	-32(%ebp), %eax
	movl	$LC53, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	12(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String10StartsWithES_
	subl	$4, %esp
	movl	%eax, %ebx
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	testb	%bl, %bl
	je	L783
	leal	-28(%ebp), %eax
	movl	$18, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String5SliceEi
	subl	$8, %esp
	leal	-24(%ebp), %eax
	movl	$LC54, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	-60(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-24(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-24(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L779
L783:
	leal	-20(%ebp), %eax
	movl	$LC55, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	12(%ebp), %eax
	leal	-20(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String10StartsWithES_
	subl	$4, %esp
	movl	%eax, %ebx
	leal	-20(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	testb	%bl, %bl
	je	L784
	leal	-16(%ebp), %eax
	movl	$18, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String5SliceEi
	subl	$8, %esp
	leal	-12(%ebp), %eax
	movl	$LC56, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	-60(%ebp), %eax
	leal	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L779
L784:
	movl	-60(%ebp), %eax
	movl	$LC26, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
L779:
	movl	-60(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret	$8
	.align 2
	.globl	__ZN10BBGlfwGame13LoadImageDataE6StringPiS1_S1_
	.def	__ZN10BBGlfwGame13LoadImageDataE6StringPiS1_S1_;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame13LoadImageDataE6StringPiS1_S1_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA860, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L790, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$100, %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	leal	-40(%ebp), %eax
	movl	$LC37, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-44(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	*-100(%ebp)
	subl	$8, %esp
	movl	%eax, -28(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpl	$0, -28(%ebp)
	jne	L786
	movl	$0, %eax
	jmp	L787
L786:
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	_stbi_load_from_file
	movl	%eax, -32(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	cmpl	$0, -32(%ebp)
	je	L788
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	imull	%edx, %eax
	movl	%eax, (%esp)
	call	__Z15gc_ext_mallocedi
L788:
	movl	-32(%ebp), %eax
L787:
	movl	%eax, -100(%ebp)
	jmp	L792
L790:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L792:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$16
	.section	.gcc_except_table,"w"
LLSDA860:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE860-LLSDACSB860
LLSDACSB860:
	.uleb128 0
	.uleb128 0
LLSDACSE860:
	.text
	.section .rdata,"dr"
LC57:
	.ascii ".wav\0"
LC58:
	.ascii ".ogg\0"
	.text
	.align 2
	.globl	__ZN10BBGlfwGame13LoadAudioDataE6StringPiS1_S1_S1_
	.def	__ZN10BBGlfwGame13LoadAudioDataE6StringPiS1_S1_S1_;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame13LoadAudioDataE6StringPiS1_S1_S1_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA861, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L800, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	addl	$100, %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	leal	-56(%ebp), %eax
	movl	$LC37, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-60(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -108(%ebp)
	movl	%eax, %ecx
	call	*-116(%ebp)
	subl	$8, %esp
	movl	%eax, -32(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpl	$0, -32(%ebp)
	jne	L794
	movl	$0, %eax
	jmp	L795
L794:
	movl	$0, -28(%ebp)
	leal	-48(%ebp), %eax
	movl	$LC57, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String7ToLowerEv
	subl	$4, %esp
	leal	-44(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String8EndsWithES_
	subl	$4, %esp
	movb	%al, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -116(%ebp)
	je	L796
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z7LoadWAVP6_iobufPiS1_S1_S1_
	movl	%eax, -28(%ebp)
	jmp	L797
L796:
	leal	-40(%ebp), %eax
	movl	$LC58, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String7ToLowerEv
	subl	$4, %esp
	leal	-36(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String8EndsWithES_
	subl	$4, %esp
	movb	%al, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -116(%ebp)
	je	L797
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Z7LoadOGGP6_iobufPiS1_S1_S1_
	movl	%eax, -28(%ebp)
L797:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	cmpl	$0, -28(%ebp)
	je	L798
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	imull	%edx, %eax
	movl	%eax, (%esp)
	call	__Z15gc_ext_mallocedi
L798:
	movl	-28(%ebp), %eax
L795:
	movl	%eax, -116(%ebp)
	jmp	L802
L800:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L802:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$20
	.section	.gcc_except_table,"w"
LLSDA861:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE861-LLSDACSB861
LLSDACSB861:
	.uleb128 0
	.uleb128 0
LLSDACSE861:
	.text
	.align 2
	.globl	__ZN10BBGlfwGame8TransKeyEi
	.def	__ZN10BBGlfwGame8TransKeyEi;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame8TransKeyEi:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$47, 8(%ebp)
	jle	L804
	cmpl	$57, 8(%ebp)
	jg	L804
	movl	8(%ebp), %eax
	jmp	L805
L804:
	cmpl	$64, 8(%ebp)
	jle	L806
	cmpl	$90, 8(%ebp)
	jg	L806
	movl	8(%ebp), %eax
	jmp	L805
L806:
	movl	8(%ebp), %eax
	subl	$32, %eax
	cmpl	$313, %eax
	ja	L807
	movl	L809(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L809:
	.long	L808
	.long	L807
	.long	L810
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L811
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L812
	.long	L813
	.long	L814
	.long	L815
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L816
	.long	L807
	.long	L817
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L818
	.long	L819
	.long	L820
	.long	L807
	.long	L807
	.long	L821
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L822
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L823
	.long	L824
	.long	L825
	.long	L826
	.long	L827
	.long	L828
	.long	L829
	.long	L830
	.long	L831
	.long	L832
	.long	L833
	.long	L834
	.long	L835
	.long	L836
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L837
	.long	L838
	.long	L839
	.long	L840
	.long	L841
	.long	L842
	.long	L843
	.long	L844
	.long	L845
	.long	L846
	.long	L847
	.long	L848
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L849
	.long	L850
	.long	L851
	.long	L852
	.long	L853
	.long	L854
	.long	L855
	.long	L856
	.long	L857
	.long	L858
	.long	L859
	.long	L860
	.long	L861
	.long	L862
	.long	L863
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L864
	.long	L865
	.long	L807
	.long	L807
	.long	L864
	.long	L865
	.text
L808:
	movl	$32, %eax
	jmp	L805
L816:
	movl	$186, %eax
	jmp	L805
L817:
	movl	$187, %eax
	jmp	L805
L812:
	movl	$188, %eax
	jmp	L805
L813:
	movl	$189, %eax
	jmp	L805
L814:
	movl	$190, %eax
	jmp	L805
L815:
	movl	$191, %eax
	jmp	L805
L822:
	movl	$192, %eax
	jmp	L805
L818:
	movl	$219, %eax
	jmp	L805
L820:
	movl	$221, %eax
	jmp	L805
L810:
	movl	$222, %eax
	jmp	L805
L819:
	movl	$220, %eax
	jmp	L805
L821:
	movl	$192, %eax
	jmp	L805
L811:
	movl	$222, %eax
	jmp	L805
L864:
	movl	$16, %eax
	jmp	L805
L865:
	movl	$17, %eax
	jmp	L805
L826:
	movl	$8, %eax
	jmp	L805
L825:
	movl	$9, %eax
	jmp	L805
L824:
	movl	$13, %eax
	jmp	L805
L823:
	movl	$27, %eax
	jmp	L805
L827:
	movl	$45, %eax
	jmp	L805
L828:
	movl	$46, %eax
	jmp	L805
L833:
	movl	$33, %eax
	jmp	L805
L834:
	movl	$34, %eax
	jmp	L805
L835:
	movl	$36, %eax
	jmp	L805
L836:
	movl	$35, %eax
	jmp	L805
L832:
	movl	$38, %eax
	jmp	L805
L831:
	movl	$40, %eax
	jmp	L805
L830:
	movl	$37, %eax
	jmp	L805
L829:
	movl	$39, %eax
	jmp	L805
L849:
	movl	$96, %eax
	jmp	L805
L850:
	movl	$97, %eax
	jmp	L805
L851:
	movl	$98, %eax
	jmp	L805
L852:
	movl	$99, %eax
	jmp	L805
L853:
	movl	$100, %eax
	jmp	L805
L854:
	movl	$101, %eax
	jmp	L805
L855:
	movl	$102, %eax
	jmp	L805
L856:
	movl	$103, %eax
	jmp	L805
L857:
	movl	$104, %eax
	jmp	L805
L858:
	movl	$105, %eax
	jmp	L805
L860:
	movl	$111, %eax
	jmp	L805
L861:
	movl	$106, %eax
	jmp	L805
L862:
	movl	$109, %eax
	jmp	L805
L863:
	movl	$107, %eax
	jmp	L805
L859:
	movl	$110, %eax
	jmp	L805
L837:
	movl	$112, %eax
	jmp	L805
L838:
	movl	$113, %eax
	jmp	L805
L839:
	movl	$114, %eax
	jmp	L805
L840:
	movl	$115, %eax
	jmp	L805
L841:
	movl	$116, %eax
	jmp	L805
L842:
	movl	$117, %eax
	jmp	L805
L843:
	movl	$118, %eax
	jmp	L805
L844:
	movl	$119, %eax
	jmp	L805
L845:
	movl	$120, %eax
	jmp	L805
L846:
	movl	$121, %eax
	jmp	L805
L847:
	movl	$122, %eax
	jmp	L805
L848:
	movl	$123, %eax
	jmp	L805
L807:
	movl	$0, %eax
L805:
	popl	%ebp
	ret
	.align 2
	.globl	__ZN10BBGlfwGame9KeyToCharEi
	.def	__ZN10BBGlfwGame9KeyToCharEi;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame9KeyToCharEi:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	subl	$8, %eax
	cmpl	$38, %eax
	ja	L867
	movl	L869(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L869:
	.long	L868
	.long	L868
	.long	L867
	.long	L867
	.long	L867
	.long	L868
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L868
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L870
	.long	L870
	.long	L870
	.long	L870
	.long	L870
	.long	L870
	.long	L870
	.long	L870
	.long	L867
	.long	L867
	.long	L867
	.long	L867
	.long	L870
	.long	L871
	.text
L868:
	movl	8(%ebp), %eax
	jmp	L872
L870:
	movl	8(%ebp), %eax
	orl	$65536, %eax
	jmp	L872
L871:
	movl	$127, %eax
	jmp	L872
L867:
	movl	$0, %eax
L872:
	popl	%ebp
	ret
	.align 2
	.globl	__ZN10BBGlfwGame5OnKeyEP10GLFWwindowiiii
	.def	__ZN10BBGlfwGame5OnKeyEP10GLFWwindowiiii;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame5OnKeyEP10GLFWwindowiiii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10BBGlfwGame8TransKeyEi
	movl	%eax, 12(%ebp)
	cmpl	$0, 12(%ebp)
	jne	L874
	jmp	L873
L874:
	movl	20(%ebp), %eax
	testl	%eax, %eax
	je	L876
	testl	%eax, %eax
	js	L873
	cmpl	$2, %eax
	jg	L873
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	(%eax), %eax
	addl	$144, %eax
	movl	(%eax), %ebx
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$8, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10BBGlfwGame9KeyToCharEi
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L878
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	(%eax), %eax
	addl	$144, %eax
	movl	(%eax), %ebx
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$3, (%esp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$8, %esp
L878:
	jmp	L873
L876:
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	(%eax), %eax
	addl	$144, %eax
	movl	(%eax), %ebx
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$2, (%esp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$8, %esp
	nop
L873:
	movl	-4(%ebp), %ebx
	leave
	ret
	.align 2
	.globl	__ZN10BBGlfwGame6OnCharEP10GLFWwindowj
	.def	__ZN10BBGlfwGame6OnCharEP10GLFWwindowj;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame6OnCharEP10GLFWwindowj:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	(%eax), %eax
	addl	$144, %eax
	movl	(%eax), %ebx
	movl	12(%ebp), %edx
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	%edx, 4(%esp)
	movl	$3, (%esp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$8, %esp
	movl	-4(%ebp), %ebx
	leave
	ret
	.align 2
	.globl	__ZN10BBGlfwGame13OnMouseButtonEP10GLFWwindowiii
	.def	__ZN10BBGlfwGame13OnMouseButtonEP10GLFWwindowiii;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame13OnMouseButtonEP10GLFWwindowiii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA866, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L891, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	12(%ebp), %eax
	cmpl	$1, %eax
	je	L882
	cmpl	$2, %eax
	je	L883
	testl	%eax, %eax
	je	L884
	jmp	L880
L884:
	movl	$0, 12(%ebp)
	jmp	L885
L882:
	movl	$1, 12(%ebp)
	jmp	L885
L883:
	movl	$2, 12(%ebp)
	nop
L885:
	fldz
	fstpl	-32(%ebp)
	fldz
	fstpl	-40(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	_glfwGetCursorPos
	movl	16(%ebp), %eax
	testl	%eax, %eax
	je	L888
	cmpl	$1, %eax
	je	L889
	jmp	L880
L889:
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	(%eax), %eax
	addl	$148, %eax
	movl	(%eax), %ebx
	fldl	-40(%ebp)
	fstps	-44(%ebp)
	flds	-44(%ebp)
	fldl	-32(%ebp)
	fstps	-44(%ebp)
	flds	-44(%ebp)
	fxch	%st(1)
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	fstps	12(%esp)
	fstps	8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$4, (%esp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$16, %esp
	jmp	L887
L888:
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	(%eax), %eax
	addl	$148, %eax
	movl	(%eax), %ebx
	fldl	-40(%ebp)
	fstps	-44(%ebp)
	flds	-44(%ebp)
	fldl	-32(%ebp)
	fstps	-44(%ebp)
	flds	-44(%ebp)
	fxch	%st(1)
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	fstps	12(%esp)
	fstps	8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$5, (%esp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$16, %esp
	nop
L887:
	jmp	L880
L891:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L880:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA866:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE866-LLSDACSB866
LLSDACSB866:
	.uleb128 0
	.uleb128 0
LLSDACSE866:
	.text
	.align 2
	.globl	__ZN10BBGlfwGame11OnCursorPosEP10GLFWwindowdd
	.def	__ZN10BBGlfwGame11OnCursorPosEP10GLFWwindowdd;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame11OnCursorPosEP10GLFWwindowdd:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	(%eax), %eax
	addl	$148, %eax
	movl	(%eax), %edx
	fldl	-24(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fldl	-16(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fxch	%st(1)
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	fstps	12(%esp)
	fstps	8(%esp)
	movl	$-1, 4(%esp)
	movl	$6, (%esp)
	movl	%eax, %ecx
	call	*%edx
	subl	$16, %esp
	leave
	ret
	.align 2
	.globl	__ZN10BBGlfwGame13OnWindowCloseEP10GLFWwindow
	.def	__ZN10BBGlfwGame13OnWindowCloseEP10GLFWwindow;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame13OnWindowCloseEP10GLFWwindow:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	(%eax), %eax
	addl	$144, %eax
	movl	(%eax), %edx
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	$432, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, %ecx
	call	*%edx
	subl	$8, %esp
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	(%eax), %eax
	addl	$144, %eax
	movl	(%eax), %edx
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	$432, 4(%esp)
	movl	$2, (%esp)
	movl	%eax, %ecx
	call	*%edx
	subl	$8, %esp
	leave
	ret
	.align 2
	.globl	__ZN10BBGlfwGame12OnWindowSizeEP10GLFWwindowii
	.def	__ZN10BBGlfwGame12OnWindowSizeEP10GLFWwindowii;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame12OnWindowSizeEP10GLFWwindowii:
	pushl	%ebp
	movl	%esp, %ebp
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	12(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	__ZN10BBGlfwGame9_glfwGameE, %eax
	movl	16(%ebp), %edx
	movl	%edx, 52(%eax)
	popl	%ebp
	ret
	.section .rdata,"dr"
LC59:
	.ascii "GameBuster\0"
LC60:
	.ascii "glfwCreateWindow FAILED!\0"
	.text
	.align 2
	.globl	__ZN10BBGlfwGame15SetDeviceWindowEiii
	.def	__ZN10BBGlfwGame15SetDeviceWindowEiii;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame15SetDeviceWindowEiii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA870, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L914, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-76(%ebp), %eax
	movb	$0, 60(%eax)
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L897
	movl	$0, -28(%ebp)
	jmp	L898
L902:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10BBGlfwGame8TransKeyEi
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	L899
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	_glfwGetKey
	cmpl	$1, %eax
	jne	L899
	movl	$1, %eax
	jmp	L900
L899:
	movl	$0, %eax
L900:
	testb	%al, %al
	je	L901
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	addl	$144, %eax
	movl	(%eax), %ebx
	movl	-76(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$2, (%esp)
	movl	$-1, -124(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$8, %esp
L901:
	addl	$1, -28(%ebp)
L898:
	cmpl	$348, -28(%ebp)
	jle	L902
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	_glfwDestroyWindow
	movl	-76(%ebp), %eax
	movl	$0, 44(%eax)
L897:
	movl	16(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -41(%ebp)
	movl	16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -42(%ebp)
	movl	16(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -43(%ebp)
	movl	16(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -44(%ebp)
	movl	16(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -45(%ebp)
	movl	16(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	sete	%al
	movb	%al, -46(%ebp)
	movl	16(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -47(%ebp)
	movl	$8, 4(%esp)
	movl	$135169, (%esp)
	movl	$-1, -124(%ebp)
	call	_glfwWindowHint
	movl	$8, 4(%esp)
	movl	$135170, (%esp)
	call	_glfwWindowHint
	movl	$8, 4(%esp)
	movl	$135171, (%esp)
	call	_glfwWindowHint
	movl	$0, 4(%esp)
	movl	$135172, (%esp)
	call	_glfwWindowHint
	cmpb	$0, -45(%ebp)
	je	L903
	movl	$32, %eax
	jmp	L904
L903:
	movl	$0, %eax
L904:
	movl	%eax, 4(%esp)
	movl	$135173, (%esp)
	movl	$-1, -124(%ebp)
	call	_glfwWindowHint
	movl	$0, 4(%esp)
	movl	$135174, (%esp)
	call	_glfwWindowHint
	movzbl	-42(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$131075, (%esp)
	call	_glfwWindowHint
	movzbl	-43(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$131077, (%esp)
	call	_glfwWindowHint
	movzbl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$131079, (%esp)
	call	_glfwWindowHint
	movzbl	-41(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$131076, (%esp)
	call	_glfwWindowHint
	movzbl	-46(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$135184, (%esp)
	call	_glfwWindowHint
	movl	$0, 4(%esp)
	movl	$135181, (%esp)
	call	_glfwWindowHint
	movl	$60, 4(%esp)
	movl	$135183, (%esp)
	call	_glfwWindowHint
	movl	$0, -32(%ebp)
	cmpb	$0, -41(%ebp)
	je	L905
	cmpb	$0, -47(%ebp)
	je	L906
	movl	$1, %eax
	jmp	L907
L906:
	movl	$0, %eax
L907:
	movl	%eax, -36(%ebp)
	movl	$0, -60(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	call	_glfwGetMonitors
	movl	%eax, -52(%ebp)
	movl	-60(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jl	L908
	movl	-60(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
L908:
	movl	-36(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
L905:
	movl	$0, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$LC59, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	_glfwCreateWindow
	movl	-76(%ebp), %edx
	movl	%eax, 44(%edx)
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	L909
	leal	-56(%ebp), %eax
	movl	$LC60, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -124(%ebp)
	call	__Z7bbPrint6String
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	call	_abort
L909:
	movl	-76(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	-76(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 52(%eax)
	movl	_glfwGraphicsSeq, %eax
	addl	$1, %eax
	movl	%eax, _glfwGraphicsSeq
	movzbl	-41(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L910
	movl	-76(%ebp), %eax
	movl	24(%eax), %eax
	subl	12(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %ecx
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	subl	8(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	_glfwSetWindowPos
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_glfwShowWindow
L910:
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	_glfwMakeContextCurrent
	movl	-76(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	js	L911
	movl	-76(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	_glfwSwapInterval
L911:
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	$__ZN10BBGlfwGame5OnKeyEP10GLFWwindowiiii, 4(%esp)
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	_glfwSetKeyCallback
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	$__ZN10BBGlfwGame6OnCharEP10GLFWwindowj, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwSetCharCallback
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	$__ZN10BBGlfwGame13OnMouseButtonEP10GLFWwindowiii, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwSetMouseButtonCallback
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	$__ZN10BBGlfwGame11OnCursorPosEP10GLFWwindowdd, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwSetCursorPosCallback
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	$__ZN10BBGlfwGame13OnWindowCloseEP10GLFWwindow, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwSetWindowCloseCallback
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	$__ZN10BBGlfwGame12OnWindowSizeEP10GLFWwindowii, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwSetWindowSizeCallback
	jmp	L917
L914:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L915
	subl	$1, %eax
	testl	%eax, %eax
	je	L916
	subl	$1, %eax
		.word	0x0b0f
L915:
	movl	%edx, %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L916:
	movl	%edx, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L917:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$12
	.section	.gcc_except_table,"w"
LLSDA870:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE870-LLSDACSB870
LLSDACSB870:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE870:
	.text
	.align 2
	.globl	__ZN10BBGlfwGame15SetSwapIntervalEi
	.def	__ZN10BBGlfwGame15SetSwapIntervalEi;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame15SetSwapIntervalEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 56(%eax)
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	js	L918
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L918
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	_glfwSwapInterval
L918:
	leave
	ret	$4
	.align 2
	.globl	__ZN10BBGlfwGame15GetDisplayModesEv
	.def	__ZN10BBGlfwGame15GetDisplayModesEv;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame15GetDisplayModesEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA872, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L928, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$0, -44(%ebp)
	movl	$1, -108(%ebp)
	call	_glfwGetPrimaryMonitor
	leal	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwGetVideoModes
	movl	%eax, -36(%ebp)
	movl	-44(%ebp), %edx
	leal	-48(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP13BBDisplayModeEC1Ei
	subl	$4, %esp
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	jmp	L921
L924:
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L922
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$60, %eax
	je	L922
	jmp	L923
L922:
	movl	$36, (%esp)
	movl	$2, -108(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, %ebx
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%ebx, -116(%ebp)
	movl	%ebx, %ecx
	call	__ZN13BBDisplayModeC1Eiiiii
	subl	$20, %esp
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -28(%ebp)
	leal	-48(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN5ArrayIP13BBDisplayModeEixEi
	subl	$4, %esp
	movl	-116(%ebp), %ebx
	movl	%ebx, (%eax)
L923:
	addl	$1, -32(%ebp)
L921:
	movl	-44(%ebp), %eax
	cmpl	%eax, -32(%ebp)
	jl	L924
	movl	-60(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -108(%ebp)
	movl	%eax, %ecx
	call	__ZNK5ArrayIP13BBDisplayModeE5SliceEii
	subl	$12, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13BBDisplayModeED1Ev
	jmp	L931
L930:
	movl	%edx, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13BBDisplayModeED1Ev
	movl	-116(%ebp), %eax
	jmp	L927
L928:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L929
	subl	$1, %eax
	testl	%eax, %eax
	je	L930
	subl	$1, %eax
		.word	0x0b0f
L929:
	movl	%edx, %eax
L927:
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L931:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-60(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA872:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE872-LLSDACSB872
LLSDACSB872:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE872:
	.text
	.align 2
	.globl	__ZN10BBGlfwGame14GetDesktopModeEv
	.def	__ZN10BBGlfwGame14GetDesktopModeEv;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame14GetDesktopModeEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	%ecx, -12(%ebp)
	movl	$36, (%esp)
	call	__ZN9gc_objectnwEj
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %ecx
	call	__ZN13BBDisplayModeC1Eiiiii
	subl	$20, %esp
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.align 2
	.globl	__ZN10BBGlfwGame7GetTimeEv
	.def	__ZN10BBGlfwGame7GetTimeEv;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame7GetTimeEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	call	_glfwGetTime
	leave
	ret
	.align 2
	.globl	__ZN10BBGlfwGame5SleepEd
	.def	__ZN10BBGlfwGame5SleepEd;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame5SleepEd:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	fldl	-24(%ebp)
	fldl	LC45
	fmulp	%st, %st(1)
	fnstcw	-14(%ebp)
	movzwl	-14(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -16(%ebp)
	fldcw	-16(%ebp)
	fistpq	-32(%ebp)
	fldcw	-14(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, %ebx
	call	_GetCurrentThread@0
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_WaitForSingleObject@8
	subl	$8, %esp
	movl	-4(%ebp), %ebx
	leave
	ret	$8
	.align 2
	.globl	__ZN10BBGlfwGame12UpdateEventsEv
	.def	__ZN10BBGlfwGame12UpdateEventsEv;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame12UpdateEventsEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	je	L938
	call	_glfwWaitEvents
	jmp	L939
L938:
	call	_glfwPollEvents
L939:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	$131073, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwGetWindowAttrib
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L940
	movl	-12(%ebp), %eax
	movb	$1, 60(%eax)
	movl	-12(%ebp), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	je	L937
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$132, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	movl	-12(%ebp), %eax
	fldz
	fstpl	72(%eax)
	jmp	L937
L940:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	$131074, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwGetWindowAttrib
	movl	$1, %eax
	testb	%al, %al
	je	L937
	movl	-12(%ebp), %eax
	movzbl	60(%eax), %eax
	testb	%al, %al
	je	L937
	movl	-12(%ebp), %eax
	movzbl	17(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L937
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	subl	$-128, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	movl	-12(%ebp), %eax
	fldz
	fstpl	72(%eax)
L937:
	leave
	ret
	.align 2
	.globl	__ZN10BBGlfwGame3RunEv
	.def	__ZN10BBGlfwGame3RunEv;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGame3RunEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	%ecx, -28(%ebp)
	movl	$0, -16(%ebp)
	orl	$4, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	addl	$80, %eax
	movl	(%eax), %ebx
	movl	-28(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$720, 4(%esp)
	movl	$1280, (%esp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$12, %esp
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	addl	$124, %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	jmp	L943
L958:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	addl	$140, %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_glfwSwapBuffers
	movl	-28(%ebp), %eax
	fldl	72(%eax)
	fldz
	fucomip	%st(1), %st
	jp	L963
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L944
	jmp	L959
L963:
	fstp	%st(0)
L959:
	movl	-28(%ebp), %eax
	fldl	72(%eax)
	fstpl	-40(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame7GetTimeEv
	fsubrl	-40(%ebp)
	fstpl	-24(%ebp)
	fldl	-24(%ebp)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	ja	L960
	jmp	L944
L960:
	movl	-28(%ebp), %eax
	fldl	-24(%ebp)
	fstpl	(%esp)
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame5SleepEd
	subl	$8, %esp
L944:
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame12UpdateEventsEv
	movl	-28(%ebp), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	je	L948
	jmp	L943
L948:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L949
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	addl	$136, %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	jmp	L943
L949:
	movl	-28(%ebp), %eax
	fldl	72(%eax)
	fldz
	fucomip	%st(1), %st
	jp	L964
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L950
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame7GetTimeEv
	movl	-28(%ebp), %eax
	fstpl	72(%eax)
	jmp	L950
L964:
	fstp	%st(0)
L950:
	movl	$0, -12(%ebp)
	jmp	L952
L957:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	addl	$136, %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	movl	-28(%ebp), %eax
	fldl	72(%eax)
	fldz
	fucomip	%st(1), %st
	jp	L965
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L953
	jmp	L955
L965:
	fstp	%st(0)
L953:
	movl	-28(%ebp), %eax
	fldl	72(%eax)
	movl	-28(%ebp), %eax
	fldl	64(%eax)
	faddp	%st, %st(1)
	movl	-28(%ebp), %eax
	fstpl	72(%eax)
	movl	-28(%ebp), %eax
	fldl	72(%eax)
	fstpl	-40(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame7GetTimeEv
	fldl	-40(%ebp)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	L956
	jmp	L955
L956:
	addl	$1, -12(%ebp)
L952:
	cmpl	$3, -12(%ebp)
	jle	L957
L955:
	cmpl	$4, -12(%ebp)
	jne	L943
	movl	-28(%ebp), %eax
	fldz
	fstpl	72(%eax)
L943:
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_glfwWindowShouldClose
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	jne	L958
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC61:
	.ascii "GLFW Error: err=%i, msg=%s\12\0"
	.text
	.def	__ZL11onGlfwErroriPKc;	.scl	3;	.type	32;	.endef
__ZL11onGlfwErroriPKc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC61, (%esp)
	call	_printf
	movl	__imp___iob, %eax
	addl	$32, %eax
	movl	%eax, (%esp)
	call	_fflush
	leave
	ret
	.section	.text$_ZN10BBGlfwGameD2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN10BBGlfwGameD2Ev
	.def	__ZN10BBGlfwGameD2Ev;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGameD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV10BBGlfwGame+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6BBGameD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L967
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
L967:
	leave
	ret
	.section	.text$_ZN10BBGlfwGameD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN10BBGlfwGameD1Ev
	.def	__ZN10BBGlfwGameD1Ev;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGameD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV10BBGlfwGame+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6BBGameD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L970
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
L970:
	leave
	ret
	.section	.text$_ZN10BBGlfwGameD0Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN10BBGlfwGameD0Ev
	.def	__ZN10BBGlfwGameD0Ev;	.scl	2;	.type	32;	.endef
__ZN10BBGlfwGameD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10BBGlfwGameD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	leave
	ret
	.section	.text$_ZN12BBMonkeyGameC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN12BBMonkeyGameC1Ev
	.def	__ZN12BBMonkeyGameC1Ev;	.scl	2;	.type	32;	.endef
__ZN12BBMonkeyGameC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10BBGlfwGameC2Ev
	movl	-12(%ebp), %eax
	movl	$__ZTV12BBMonkeyGame+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC62:
	.ascii "glfwInit failed\0"
	.text
	.align 2
	.globl	__ZN12BBMonkeyGame4MainEiPPKc
	.def	__ZN12BBMonkeyGame4MainEiPPKc;	.scl	2;	.type	32;	.endef
__ZN12BBMonkeyGame4MainEiPPKc:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA879, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %edi
	movl	%edi, (%eax)
	movl	$L985, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$__ZL11onGlfwErroriPKc, (%esp)
	movl	$-1, -88(%ebp)
	call	_glfwSetErrorCallback
	call	_glfwInit
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L977
	movl	$LC62, (%esp)
	call	_puts
	movl	$-1, (%esp)
	call	_exit
L977:
	movl	$80, (%esp)
	movl	$-1, -88(%ebp)
	call	__Znwj
	movl	%eax, %esi
	movl	%esi, -96(%ebp)
	movl	%esi, %ebx
	movl	$0, %eax
	movl	$20, %edx
	movl	%ebx, %edi
	movl	%edx, %ecx
	rep stosl
	movl	$1, -88(%ebp)
	movl	%esi, %ecx
	call	__ZN12BBMonkeyGameC1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -88(%ebp)
	call	__Z11bb_std_mainiPPKc
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	$-1, -88(%ebp)
	movl	%edx, %ecx
	call	*%eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L978
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame3RunEv
L978:
	movl	$-1, -88(%ebp)
	call	_glfwTerminate
	jmp	L989
L985:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %edx
	movl	-80(%ebp), %ecx
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	L986
	subl	$1, %eax
	testl	%eax, %eax
	je	L987
	subl	$1, %eax
	testl	%eax, %eax
	je	L988
	subl	$1, %eax
		.word	0x0b0f
L986:
	movl	%edx, -100(%ebp)
	movl	-96(%ebp), %esi
	movl	%esi, (%esp)
	call	__ZdlPv
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L988:
	movl	%edx, -96(%ebp)
	call	___cxa_end_catch
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L987:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L984
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L984:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	%eax, -32(%ebp)
	movl	$3, -88(%ebp)
	call	_glfwTerminate
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	addl	$116, %eax
	movl	(%eax), %ebx
	movl	-28(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	nop
	call	___cxa_end_catch
L989:
	nop
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
	.align 4
LLSDA879:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT879-LLSDATTD879
LLSDATTD879:
	.byte	0x1
	.uleb128 LLSDACSE879-LLSDACSB879
LLSDACSB879:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x2
	.uleb128 0
LLSDACSE879:
	.byte	0x1
	.byte	0
	.align 4
	.long	__ZTIP15ThrowableObject
LLSDATT879:
	.text
	.def	__ZL8Pow2Sizei;	.scl	3;	.type	32;	.endef
__ZL8Pow2Sizei:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	$1, -4(%ebp)
	jmp	L991
L992:
	movl	-4(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -4(%ebp)
L991:
	movl	-4(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L992
	movl	-4(%ebp), %eax
	leave
	ret
	.align 2
	.globl	__ZN12gxtkGraphicsC2Ev
	.def	__ZN12gxtkGraphicsC2Ev;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphicsC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA889, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1000, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-44(%ebp), %eax
	movl	$__ZTV12gxtkGraphics+8, (%eax)
	movl	-44(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-44(%ebp), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-44(%ebp), %eax
	movl	$0, 23628(%eax)
	call	__ZN10BBGlfwGame8GlfwGameEv
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame13GetGLFWwindowEv
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	L995
	movl	-44(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -100(%ebp)
	movl	-44(%ebp), %eax
	leal	16(%eax), %edi
	movl	%edi, -104(%ebp)
	call	__ZN10BBGlfwGame8GlfwGameEv
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame13GetGLFWwindowEv
	movl	-100(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	-104(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	_glfwGetWindowSize
L995:
	movl	$0, -28(%ebp)
	jmp	L996
L997:
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	-44(%ebp), %eax
	addl	$10272, %edx
	movw	%cx, 8(%eax,%edx,2)
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	1(%eax), %ecx
	movl	-44(%ebp), %eax
	addl	$10272, %edx
	movw	%cx, 8(%eax,%edx,2)
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	2(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	2(%eax), %ecx
	movl	-44(%ebp), %eax
	addl	$10272, %edx
	movw	%cx, 8(%eax,%edx,2)
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	3(%eax), %edx
	movl	-28(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	-44(%ebp), %eax
	addl	$10272, %edx
	movw	%cx, 8(%eax,%edx,2)
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	4(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	2(%eax), %ecx
	movl	-44(%ebp), %eax
	addl	$10272, %edx
	movw	%cx, 8(%eax,%edx,2)
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	5(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	3(%eax), %ecx
	movl	-44(%ebp), %eax
	addl	$10272, %edx
	movw	%cx, 8(%eax,%edx,2)
	addl	$1, -28(%ebp)
L996:
	cmpl	$255, -28(%ebp)
	jle	L997
	jmp	L1002
L1000:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1002:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA889:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE889-LLSDACSB889
LLSDACSB889:
	.uleb128 0
	.uleb128 0
LLSDACSE889:
	.text
	.globl	__ZN12gxtkGraphicsC1Ev
	.def	__ZN12gxtkGraphicsC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN12gxtkGraphicsC1Ev,__ZN12gxtkGraphicsC2Ev
	.align 2
	.globl	__ZN12gxtkGraphics5FlushEv
	.def	__ZN12gxtkGraphics5FlushEv;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics5FlushEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	23628(%eax), %eax
	testl	%eax, %eax
	jne	L1004
	jmp	L1003
L1004:
	movl	-28(%ebp), %eax
	movl	23632(%eax), %eax
	testl	%eax, %eax
	je	L1006
	movl	$3553, (%esp)
	call	_glEnable@4
	subl	$4, %esp
	movl	-28(%ebp), %eax
	movl	23632(%eax), %eax
	movl	%eax, %ecx
	call	__ZN11gxtkSurface4BindEv
L1006:
	movl	-28(%ebp), %eax
	movl	23624(%eax), %eax
	cmpl	$2, %eax
	je	L1008
	cmpl	$2, %eax
	jg	L1009
	cmpl	$1, %eax
	je	L1010
	jmp	L1007
L1009:
	cmpl	$3, %eax
	je	L1011
	cmpl	$4, %eax
	je	L1012
	jmp	L1007
L1010:
	movl	-28(%ebp), %eax
	movl	23628(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_glDrawArrays@12
	subl	$12, %esp
	jmp	L1013
L1008:
	movl	-28(%ebp), %eax
	movl	23628(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$1, (%esp)
	call	_glDrawArrays@12
	subl	$12, %esp
	jmp	L1013
L1011:
	movl	-28(%ebp), %eax
	movl	23628(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4, (%esp)
	call	_glDrawArrays@12
	subl	$12, %esp
	jmp	L1013
L1012:
	movl	-28(%ebp), %eax
	leal	20552(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	23628(%eax), %eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%ecx, 12(%esp)
	movl	$5123, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	_glDrawElements@16
	subl	$16, %esp
	jmp	L1013
L1007:
	movl	$0, -12(%ebp)
	jmp	L1014
L1015:
	movl	-28(%ebp), %eax
	movl	23624(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$6, (%esp)
	call	_glDrawArrays@12
	subl	$12, %esp
	movl	-28(%ebp), %eax
	movl	23624(%eax), %eax
	addl	%eax, -12(%ebp)
L1014:
	movl	-28(%ebp), %eax
	movl	23628(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L1015
	nop
L1013:
	movl	-28(%ebp), %eax
	movl	23632(%eax), %eax
	testl	%eax, %eax
	je	L1016
	movl	$3553, (%esp)
	call	_glDisable@4
	subl	$4, %esp
L1016:
	movl	-28(%ebp), %eax
	movl	$0, 23628(%eax)
L1003:
	leave
	ret
	.align 2
	.globl	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface
	.def	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics5BeginEiiP11gxtkSurface:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	23624(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	L1018
	movl	-28(%ebp), %eax
	movl	23632(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	L1018
	movl	-28(%ebp), %eax
	movl	23628(%eax), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	cmpl	$1024, %eax
	jle	L1019
L1018:
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5FlushEv
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 23624(%eax)
	movl	-28(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 23632(%eax)
L1019:
	movl	-28(%ebp), %eax
	leal	72(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	23628(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	23628(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 23628(%eax)
	movl	-12(%ebp), %eax
	leave
	ret	$12
	.align 2
	.globl	__ZN12gxtkGraphics5WidthEv
	.def	__ZN12gxtkGraphics5WidthEv;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics5WidthEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	leave
	ret
	.align 2
	.globl	__ZN12gxtkGraphics6HeightEv
	.def	__ZN12gxtkGraphics6HeightEv;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics6HeightEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	leave
	ret
	.align 2
	.globl	__ZN12gxtkGraphics11BeginRenderEv
	.def	__ZN12gxtkGraphics11BeginRenderEv;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics11BeginRenderEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$64, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	leal	20(%eax), %esi
	movl	-12(%ebp), %eax
	leal	16(%eax), %ebx
	call	__ZN10BBGlfwGame8GlfwGameEv
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame13GetGLFWwindowEv
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwGetWindowSize
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_glViewport@16
	subl	$16, %esp
	movl	$5889, (%esp)
	call	_glMatrixMode@4
	subl	$4, %esp
	call	_glLoadIdentity@0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	fildl	-16(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	fildl	-16(%ebp)
	fld1
	fstpl	40(%esp)
	fld1
	fchs
	fstpl	32(%esp)
	fldz
	fstpl	24(%esp)
	fxch	%st(1)
	fstpl	16(%esp)
	fstpl	8(%esp)
	fldz
	fstpl	(%esp)
	call	_glOrtho@48
	subl	$48, %esp
	movl	$5888, (%esp)
	call	_glMatrixMode@4
	subl	$4, %esp
	call	_glLoadIdentity@0
	movl	$32884, (%esp)
	call	_glEnableClientState@4
	subl	$4, %esp
	movl	-12(%ebp), %eax
	addl	$72, %eax
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	_glVertexPointer@16
	subl	$16, %esp
	movl	$32888, (%esp)
	call	_glEnableClientState@4
	subl	$4, %esp
	movl	-12(%ebp), %eax
	addl	$80, %eax
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	_glTexCoordPointer@16
	subl	$16, %esp
	movl	$32886, (%esp)
	call	_glEnableClientState@4
	subl	$4, %esp
	movl	-12(%ebp), %eax
	addl	$88, %eax
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5121, 4(%esp)
	movl	$4, (%esp)
	call	_glColorPointer@16
	subl	$16, %esp
	movl	$3042, (%esp)
	call	_glEnable@4
	subl	$4, %esp
	movl	$771, 4(%esp)
	movl	$1, (%esp)
	call	_glBlendFunc@8
	subl	$8, %esp
	movl	$3553, (%esp)
	call	_glDisable@4
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	$0, 23628(%eax)
	movl	$1, %eax
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.align 2
	.globl	__ZN12gxtkGraphics9EndRenderEv
	.def	__ZN12gxtkGraphics9EndRenderEv;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics9EndRenderEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5FlushEv
	leave
	ret
	.align 2
	.globl	__ZN12gxtkGraphics15DiscardGraphicsEv
	.def	__ZN12gxtkGraphics15DiscardGraphicsEv;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics15DiscardGraphicsEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret
	.align 2
	.globl	__ZN12gxtkGraphics3ClsEfff
	.def	__ZN12gxtkGraphics3ClsEfff;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics3ClsEfff:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$0, 23628(%eax)
	flds	16(%ebp)
	flds	LC64
	fdivrp	%st, %st(1)
	flds	12(%ebp)
	flds	LC64
	fdivrp	%st, %st(1)
	flds	8(%ebp)
	flds	LC64
	fdivrp	%st, %st(1)
	fxch	%st(2)
	movl	LC47, %eax
	movl	%eax, 12(%esp)
	fstps	8(%esp)
	fstps	4(%esp)
	fstps	(%esp)
	call	_glClearColor@16
	subl	$16, %esp
	movl	$16384, (%esp)
	call	_glClear@4
	subl	$4, %esp
	movl	$0, %eax
	leave
	ret	$12
	.align 2
	.globl	__ZN12gxtkGraphics8SetAlphaEf
	.def	__ZN12gxtkGraphics8SetAlphaEf;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics8SetAlphaEf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$28, %esp
	movl	%ecx, -20(%ebp)
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 40(%edx)
	flds	8(%ebp)
	flds	LC64
	fmulp	%st, %st(1)
	fnstcw	-22(%ebp)
	movzwl	-22(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -24(%ebp)
	fldcw	-24(%ebp)
	fistpl	-4(%ebp)
	fldcw	-22(%ebp)
	movl	-4(%ebp), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	flds	36(%eax)
	fmuls	8(%ebp)
	fldcw	-24(%ebp)
	fistpl	-28(%ebp)
	fldcw	-22(%ebp)
	movl	-28(%ebp), %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	flds	32(%eax)
	fmuls	8(%ebp)
	fldcw	-24(%ebp)
	fistpl	-28(%ebp)
	fldcw	-22(%ebp)
	movl	-28(%ebp), %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	flds	28(%eax)
	fmuls	8(%ebp)
	fldcw	-24(%ebp)
	fistpl	-28(%ebp)
	fldcw	-22(%ebp)
	movl	-28(%ebp), %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	$0, %eax
	leave
	ret	$4
	.align 2
	.globl	__ZN12gxtkGraphics8SetColorEfff
	.def	__ZN12gxtkGraphics8SetColorEfff;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics8SetColorEfff:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$28, %esp
	movl	%ecx, -20(%ebp)
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 28(%edx)
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 32(%edx)
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 36(%edx)
	movl	-20(%ebp), %eax
	flds	40(%eax)
	flds	LC64
	fmulp	%st, %st(1)
	fnstcw	-22(%ebp)
	movzwl	-22(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -24(%ebp)
	fldcw	-24(%ebp)
	fistpl	-4(%ebp)
	fldcw	-22(%ebp)
	movl	-4(%ebp), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	flds	40(%eax)
	fmuls	16(%ebp)
	fldcw	-24(%ebp)
	fistpl	-28(%ebp)
	fldcw	-22(%ebp)
	movl	-28(%ebp), %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	flds	40(%eax)
	fmuls	12(%ebp)
	fldcw	-24(%ebp)
	fistpl	-28(%ebp)
	fldcw	-22(%ebp)
	movl	-28(%ebp), %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	flds	40(%eax)
	fmuls	8(%ebp)
	fldcw	-24(%ebp)
	fistpl	-28(%ebp)
	fldcw	-22(%ebp)
	movl	-28(%ebp), %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	$0, %eax
	leave
	ret	$12
	.align 2
	.globl	__ZN12gxtkGraphics8SetBlendEi
	.def	__ZN12gxtkGraphics8SetBlendEi;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics8SetBlendEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5FlushEv
	movl	8(%ebp), %eax
	cmpl	$1, %eax
	jne	L1040
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	_glBlendFunc@8
	subl	$8, %esp
	jmp	L1038
L1040:
	movl	$771, 4(%esp)
	movl	$1, (%esp)
	call	_glBlendFunc@8
	subl	$8, %esp
L1038:
	movl	$0, %eax
	leave
	ret	$4
	.align 2
	.globl	__ZN12gxtkGraphics10SetScissorEiiii
	.def	__ZN12gxtkGraphics10SetScissorEiiii;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics10SetScissorEiiii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5FlushEv
	cmpl	$0, 8(%ebp)
	jne	L1042
	cmpl	$0, 12(%ebp)
	jne	L1042
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	cmpl	16(%ebp), %eax
	jne	L1042
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	cmpl	20(%ebp), %eax
	je	L1043
L1042:
	movl	$1, %eax
	jmp	L1044
L1043:
	movl	$0, %eax
L1044:
	testb	%al, %al
	je	L1045
	movl	$3089, (%esp)
	call	_glEnable@4
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	subl	12(%ebp), %eax
	subl	20(%ebp), %eax
	movl	%eax, 12(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_glScissor@16
	subl	$16, %esp
	jmp	L1046
L1045:
	movl	$3089, (%esp)
	call	_glDisable@4
	subl	$4, %esp
L1046:
	movl	$0, %eax
	leave
	ret	$16
	.align 2
	.globl	__ZN12gxtkGraphics9SetMatrixEffffff
	.def	__ZN12gxtkGraphics9SetMatrixEffffff;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics9SetMatrixEffffff:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	flds	8(%ebp)
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1049
	flds	8(%ebp)
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L1049
	flds	12(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1049
	flds	12(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L1049
	flds	16(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1049
	flds	16(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L1049
	flds	20(%ebp)
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1049
	flds	20(%ebp)
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L1049
	flds	24(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1049
	flds	24(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L1049
	flds	28(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1049
	flds	28(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L1054
L1049:
	movl	$1, %eax
	jmp	L1052
L1054:
	movl	$0, %eax
L1052:
	movl	-4(%ebp), %edx
	movb	%al, 68(%edx)
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 44(%edx)
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 48(%edx)
	movl	-4(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 52(%edx)
	movl	-4(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 56(%edx)
	movl	-4(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 60(%edx)
	movl	-4(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 64(%edx)
	movl	$0, %eax
	leave
	ret	$24
	.align 2
	.globl	__ZN12gxtkGraphics9DrawPointEff
	.def	__ZN12gxtkGraphics9DrawPointEff;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics9DrawPointEff:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1056
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	flds	44(%eax)
	fmuls	-12(%ebp)
	movl	-28(%ebp), %eax
	flds	52(%eax)
	fmuls	12(%ebp)
	faddp	%st, %st(1)
	movl	-28(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	8(%ebp)
	movl	-28(%ebp), %eax
	flds	48(%eax)
	fmuls	-12(%ebp)
	movl	-28(%ebp), %eax
	flds	56(%eax)
	fmuls	12(%ebp)
	faddp	%st, %st(1)
	movl	-28(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	12(%ebp)
L1056:
	movl	-28(%ebp), %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	flds	8(%ebp)
	flds	LC65
	faddp	%st, %st(1)
	movl	-16(%ebp), %eax
	fstps	(%eax)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	flds	12(%ebp)
	flds	LC65
	faddp	%st, %st(1)
	fstps	(%eax)
	movl	-16(%ebp), %eax
	leal	16(%eax), %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	$0, %eax
	leave
	ret	$8
	.align 2
	.globl	__ZN12gxtkGraphics8DrawLineEffff
	.def	__ZN12gxtkGraphics8DrawLineEffff;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics8DrawLineEffff:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1059
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-28(%ebp), %eax
	flds	44(%eax)
	fmuls	-12(%ebp)
	movl	-28(%ebp), %eax
	flds	52(%eax)
	fmuls	12(%ebp)
	faddp	%st, %st(1)
	movl	-28(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	8(%ebp)
	movl	-28(%ebp), %eax
	flds	48(%eax)
	fmuls	-12(%ebp)
	movl	-28(%ebp), %eax
	flds	56(%eax)
	fmuls	12(%ebp)
	faddp	%st, %st(1)
	movl	-28(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	12(%ebp)
	movl	-28(%ebp), %eax
	flds	44(%eax)
	fmuls	-16(%ebp)
	movl	-28(%ebp), %eax
	flds	52(%eax)
	fmuls	20(%ebp)
	faddp	%st, %st(1)
	movl	-28(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	16(%ebp)
	movl	-28(%ebp), %eax
	flds	48(%eax)
	fmuls	-16(%ebp)
	movl	-28(%ebp), %eax
	flds	56(%eax)
	fmuls	20(%ebp)
	faddp	%st, %st(1)
	movl	-28(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	20(%ebp)
L1059:
	movl	-28(%ebp), %eax
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$2, (%esp)
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface
	subl	$12, %esp
	movl	%eax, -20(%ebp)
	flds	8(%ebp)
	flds	LC65
	faddp	%st, %st(1)
	movl	-20(%ebp), %eax
	fstps	(%eax)
	movl	-20(%ebp), %eax
	addl	$4, %eax
	flds	12(%ebp)
	flds	LC65
	faddp	%st, %st(1)
	fstps	(%eax)
	movl	-20(%ebp), %eax
	leal	16(%eax), %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	-20(%ebp), %eax
	addl	$20, %eax
	flds	16(%ebp)
	flds	LC65
	faddp	%st, %st(1)
	fstps	(%eax)
	movl	-20(%ebp), %eax
	addl	$24, %eax
	flds	20(%ebp)
	flds	LC65
	faddp	%st, %st(1)
	fstps	(%eax)
	movl	-20(%ebp), %eax
	leal	36(%eax), %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	$0, %eax
	leave
	ret	$16
	.align 2
	.globl	__ZN12gxtkGraphics8DrawRectEffff
	.def	__ZN12gxtkGraphics8DrawRectEffff;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics8DrawRectEffff:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	%ecx, -76(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	flds	8(%ebp)
	fadds	16(%ebp)
	fstps	-16(%ebp)
	flds	8(%ebp)
	fadds	16(%ebp)
	fstps	-20(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	flds	12(%ebp)
	fadds	20(%ebp)
	fstps	-36(%ebp)
	flds	12(%ebp)
	fadds	20(%ebp)
	fstps	-40(%ebp)
	movl	-76(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1062
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-76(%ebp), %eax
	flds	44(%eax)
	fmuls	-44(%ebp)
	movl	-76(%ebp), %eax
	flds	52(%eax)
	fmuls	-28(%ebp)
	faddp	%st, %st(1)
	movl	-76(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-12(%ebp)
	movl	-76(%ebp), %eax
	flds	48(%eax)
	fmuls	-44(%ebp)
	movl	-76(%ebp), %eax
	flds	56(%eax)
	fmuls	-28(%ebp)
	faddp	%st, %st(1)
	movl	-76(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-28(%ebp)
	movl	-76(%ebp), %eax
	flds	44(%eax)
	fmuls	-48(%ebp)
	movl	-76(%ebp), %eax
	flds	52(%eax)
	fmuls	-32(%ebp)
	faddp	%st, %st(1)
	movl	-76(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-16(%ebp)
	movl	-76(%ebp), %eax
	flds	48(%eax)
	fmuls	-48(%ebp)
	movl	-76(%ebp), %eax
	flds	56(%eax)
	fmuls	-32(%ebp)
	faddp	%st, %st(1)
	movl	-76(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-32(%ebp)
	movl	-76(%ebp), %eax
	flds	44(%eax)
	fmuls	-52(%ebp)
	movl	-76(%ebp), %eax
	flds	52(%eax)
	fmuls	-36(%ebp)
	faddp	%st, %st(1)
	movl	-76(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-20(%ebp)
	movl	-76(%ebp), %eax
	flds	48(%eax)
	fmuls	-52(%ebp)
	movl	-76(%ebp), %eax
	flds	56(%eax)
	fmuls	-36(%ebp)
	faddp	%st, %st(1)
	movl	-76(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-36(%ebp)
	movl	-76(%ebp), %eax
	flds	44(%eax)
	fmuls	-56(%ebp)
	movl	-76(%ebp), %eax
	flds	52(%eax)
	fmuls	-40(%ebp)
	faddp	%st, %st(1)
	movl	-76(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-24(%ebp)
	movl	-76(%ebp), %eax
	flds	48(%eax)
	fmuls	-56(%ebp)
	movl	-76(%ebp), %eax
	flds	56(%eax)
	fmuls	-40(%ebp)
	faddp	%st, %st(1)
	movl	-76(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-40(%ebp)
L1062:
	movl	-76(%ebp), %eax
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	$4, (%esp)
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface
	subl	$12, %esp
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	leal	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	leal	16(%eax), %edx
	movl	-76(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	leal	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	leal	24(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	leal	36(%eax), %edx
	movl	-76(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	leal	40(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	leal	44(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	leal	56(%eax), %edx
	movl	-76(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	leal	60(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	leal	64(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	leal	76(%eax), %edx
	movl	-76(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	$0, %eax
	leave
	ret	$16
	.align 2
	.globl	__ZN12gxtkGraphics8DrawOvalEffff
	.def	__ZN12gxtkGraphics8DrawOvalEffff;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics8DrawOvalEffff:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$120, %esp
	movl	%ecx, -92(%ebp)
	flds	16(%ebp)
	flds	LC48
	fdivrp	%st, %st(1)
	fstps	-32(%ebp)
	flds	20(%ebp)
	flds	LC48
	fdivrp	%st, %st(1)
	fstps	-36(%ebp)
	movl	-92(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1065
	movl	-92(%ebp), %eax
	flds	44(%eax)
	fmuls	-32(%ebp)
	fstps	-40(%ebp)
	movl	-92(%ebp), %eax
	flds	48(%eax)
	fmuls	-32(%ebp)
	fstps	-44(%ebp)
	flds	-40(%ebp)
	fmuls	-40(%ebp)
	flds	-44(%ebp)
	fmuls	-44(%ebp)
	faddp	%st, %st(1)
	fstps	(%esp)
	call	_sqrtf
	fstps	-48(%ebp)
	movl	-92(%ebp), %eax
	flds	52(%eax)
	fmuls	-36(%ebp)
	fstps	-52(%ebp)
	movl	-92(%ebp), %eax
	flds	56(%eax)
	fmuls	-36(%ebp)
	fstps	-56(%ebp)
	flds	-52(%ebp)
	fmuls	-52(%ebp)
	flds	-56(%ebp)
	fmuls	-56(%ebp)
	faddp	%st, %st(1)
	fstps	(%esp)
	call	_sqrtf
	fstps	-60(%ebp)
	flds	-48(%ebp)
	fadds	-60(%ebp)
	fnstcw	-94(%ebp)
	movzwl	-94(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -96(%ebp)
	fldcw	-96(%ebp)
	fistpl	-12(%ebp)
	fldcw	-94(%ebp)
	jmp	L1066
L1065:
	flds	-32(%ebp)
	fabs
	flds	-36(%ebp)
	fabs
	faddp	%st, %st(1)
	fnstcw	-94(%ebp)
	movzwl	-94(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -96(%ebp)
	fldcw	-96(%ebp)
	fistpl	-12(%ebp)
	fldcw	-94(%ebp)
L1066:
	cmpl	$11, -12(%ebp)
	jg	L1067
	movl	$12, -12(%ebp)
	jmp	L1068
L1067:
	cmpl	$1024, -12(%ebp)
	jle	L1069
	movl	$1024, -12(%ebp)
	jmp	L1068
L1069:
	andl	$-4, -12(%ebp)
L1068:
	flds	8(%ebp)
	fadds	-32(%ebp)
	fstps	-64(%ebp)
	flds	12(%ebp)
	fadds	-36(%ebp)
	fstps	-68(%ebp)
	movl	-92(%ebp), %eax
	movl	$0, 8(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	movl	$0, -20(%ebp)
	jmp	L1070
L1072:
	fildl	-20(%ebp)
	flds	LC66
	fmulp	%st, %st(1)
	fildl	-12(%ebp)
	fdivrp	%st, %st(1)
	fstps	-72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_cosf
	fmuls	-32(%ebp)
	fadds	-64(%ebp)
	fstps	-24(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_sinf
	fmuls	-36(%ebp)
	flds	-68(%ebp)
	fsubp	%st, %st(1)
	fstps	-28(%ebp)
	movl	-92(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1071
	movl	-24(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-92(%ebp), %eax
	flds	44(%eax)
	fmuls	-76(%ebp)
	movl	-92(%ebp), %eax
	flds	52(%eax)
	fmuls	-28(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-24(%ebp)
	movl	-92(%ebp), %eax
	flds	48(%eax)
	fmuls	-76(%ebp)
	movl	-92(%ebp), %eax
	flds	56(%eax)
	fmuls	-28(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-28(%ebp)
L1071:
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	leal	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	leal	16(%eax), %edx
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	addl	$20, -16(%ebp)
	addl	$1, -20(%ebp)
L1070:
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	L1072
	movl	$0, %eax
	leave
	ret	$16
	.align 2
	.globl	__ZN12gxtkGraphics8DrawPolyE5ArrayIfE
	.def	__ZN12gxtkGraphics8DrawPolyE5ArrayIfE;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics8DrawPolyE5ArrayIfE:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNK5ArrayIfE6LengthEv
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jle	L1075
	cmpl	$1024, -20(%ebp)
	jle	L1076
L1075:
	movl	$0, %eax
	jmp	L1077
L1076:
	movl	-28(%ebp), %eax
	movl	$0, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L1078
L1081:
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1079
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	flds	(%eax)
	movl	-28(%ebp), %eax
	flds	44(%eax)
	fmulp	%st, %st(1)
	fstps	-32(%ebp)
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	flds	(%eax)
	movl	-28(%ebp), %eax
	flds	52(%eax)
	fmulp	%st, %st(1)
	flds	-32(%ebp)
	faddp	%st, %st(1)
	movl	-28(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	movl	-12(%ebp), %eax
	fstps	(%eax)
	movl	-12(%ebp), %eax
	leal	4(%eax), %ebx
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	flds	(%eax)
	movl	-28(%ebp), %eax
	flds	48(%eax)
	fmulp	%st, %st(1)
	fstps	-32(%ebp)
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	flds	(%eax)
	movl	-28(%ebp), %eax
	flds	56(%eax)
	fmulp	%st, %st(1)
	flds	-32(%ebp)
	faddp	%st, %st(1)
	movl	-28(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	(%ebx)
	jmp	L1080
L1079:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%eax, (%edx)
	movl	-12(%ebp), %eax
	leal	4(%eax), %ebx
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, (%ebx)
L1080:
	movl	-12(%ebp), %eax
	leal	16(%eax), %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	addl	$20, -12(%ebp)
	addl	$1, -16(%ebp)
L1078:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	L1081
	movl	$0, %eax
L1077:
	movl	-4(%ebp), %ebx
	leave
	ret	$4
	.align 2
	.globl	__ZN12gxtkGraphics9DrawPoly2E5ArrayIfEP11gxtkSurfaceii
	.def	__ZN12gxtkGraphics9DrawPoly2E5ArrayIfEP11gxtkSurfaceii;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics9DrawPoly2E5ArrayIfEP11gxtkSurfaceii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNK5ArrayIfE6LengthEv
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jle	L1083
	cmpl	$1024, -20(%ebp)
	jle	L1084
L1083:
	movl	$0, %eax
	jmp	L1085
L1084:
	movl	-28(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L1086
L1089:
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1087
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	flds	(%eax)
	movl	-28(%ebp), %eax
	flds	44(%eax)
	fmulp	%st, %st(1)
	fstps	-32(%ebp)
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	flds	(%eax)
	movl	-28(%ebp), %eax
	flds	52(%eax)
	fmulp	%st, %st(1)
	flds	-32(%ebp)
	faddp	%st, %st(1)
	movl	-28(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	movl	-12(%ebp), %eax
	fstps	(%eax)
	movl	-12(%ebp), %eax
	leal	4(%eax), %ebx
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	flds	(%eax)
	movl	-28(%ebp), %eax
	flds	48(%eax)
	fmulp	%st, %st(1)
	fstps	-32(%ebp)
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	flds	(%eax)
	movl	-28(%ebp), %eax
	flds	56(%eax)
	fmulp	%st, %st(1)
	flds	-32(%ebp)
	faddp	%st, %st(1)
	movl	-28(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	(%ebx)
	jmp	L1088
L1087:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%eax, (%edx)
	movl	-12(%ebp), %eax
	leal	4(%eax), %ebx
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, (%ebx)
L1088:
	movl	-12(%ebp), %eax
	leal	8(%eax), %ebx
	fildl	16(%ebp)
	fstps	-32(%ebp)
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	flds	(%eax)
	flds	-32(%ebp)
	faddp	%st, %st(1)
	movl	12(%ebp), %eax
	flds	44(%eax)
	fmulp	%st, %st(1)
	fstps	(%ebx)
	movl	-12(%ebp), %eax
	leal	12(%eax), %ebx
	fildl	20(%ebp)
	fstps	-32(%ebp)
	movl	-24(%ebp), %eax
	addl	$3, %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfEixEi
	subl	$4, %esp
	flds	(%eax)
	flds	-32(%ebp)
	faddp	%st, %st(1)
	movl	12(%ebp), %eax
	flds	48(%eax)
	fmulp	%st, %st(1)
	fstps	(%ebx)
	movl	-12(%ebp), %eax
	leal	16(%eax), %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	addl	$20, -12(%ebp)
	addl	$1, -16(%ebp)
L1086:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	L1089
	movl	$0, %eax
L1085:
	movl	-4(%ebp), %ebx
	leave
	ret	$16
	.align 2
	.globl	__ZN12gxtkGraphics11DrawSurfaceEP11gxtkSurfaceff
	.def	__ZN12gxtkGraphics11DrawSurfaceEP11gxtkSurfaceff;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics11DrawSurfaceEP11gxtkSurfaceff:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$120, %esp
	movl	%ecx, -92(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	8(%ebp), %ecx
	call	*%eax
	movl	%eax, -96(%ebp)
	fildl	-96(%ebp)
	fstps	-44(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	8(%ebp), %ecx
	call	*%eax
	movl	%eax, -96(%ebp)
	fildl	-96(%ebp)
	fstps	-48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	flds	12(%ebp)
	fadds	-44(%ebp)
	fstps	-16(%ebp)
	flds	12(%ebp)
	fadds	-44(%ebp)
	fstps	-20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	flds	16(%ebp)
	fadds	-48(%ebp)
	fstps	-36(%ebp)
	flds	16(%ebp)
	fadds	-48(%ebp)
	fstps	-40(%ebp)
	movl	LC46, %eax
	movl	%eax, -52(%ebp)
	movl	8(%ebp), %eax
	flds	44(%eax)
	fmuls	-44(%ebp)
	fstps	-56(%ebp)
	movl	LC46, %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	flds	48(%eax)
	fmuls	-48(%ebp)
	fstps	-64(%ebp)
	movl	-92(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1091
	movl	-12(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	-92(%ebp), %eax
	flds	44(%eax)
	fmuls	-68(%ebp)
	movl	-92(%ebp), %eax
	flds	52(%eax)
	fmuls	-28(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-12(%ebp)
	movl	-92(%ebp), %eax
	flds	48(%eax)
	fmuls	-68(%ebp)
	movl	-92(%ebp), %eax
	flds	56(%eax)
	fmuls	-28(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-28(%ebp)
	movl	-92(%ebp), %eax
	flds	44(%eax)
	fmuls	-72(%ebp)
	movl	-92(%ebp), %eax
	flds	52(%eax)
	fmuls	-32(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-16(%ebp)
	movl	-92(%ebp), %eax
	flds	48(%eax)
	fmuls	-72(%ebp)
	movl	-92(%ebp), %eax
	flds	56(%eax)
	fmuls	-32(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-32(%ebp)
	movl	-92(%ebp), %eax
	flds	44(%eax)
	fmuls	-76(%ebp)
	movl	-92(%ebp), %eax
	flds	52(%eax)
	fmuls	-36(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-20(%ebp)
	movl	-92(%ebp), %eax
	flds	48(%eax)
	fmuls	-76(%ebp)
	movl	-92(%ebp), %eax
	flds	56(%eax)
	fmuls	-36(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-36(%ebp)
	movl	-92(%ebp), %eax
	flds	44(%eax)
	fmuls	-80(%ebp)
	movl	-92(%ebp), %eax
	flds	52(%eax)
	fmuls	-40(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-24(%ebp)
	movl	-92(%ebp), %eax
	flds	48(%eax)
	fmuls	-80(%ebp)
	movl	-92(%ebp), %eax
	flds	56(%eax)
	fmuls	-40(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-40(%ebp)
L1091:
	movl	-92(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4, 4(%esp)
	movl	$4, (%esp)
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface
	subl	$12, %esp
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	8(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	12(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	16(%eax), %edx
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	24(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	28(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	32(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	36(%eax), %edx
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	40(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	44(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	48(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	52(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	56(%eax), %edx
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	60(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	64(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	68(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	72(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	76(%eax), %edx
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	$0, %eax
	leave
	ret	$12
	.align 2
	.globl	__ZN12gxtkGraphics12DrawSurface2EP11gxtkSurfaceffiiii
	.def	__ZN12gxtkGraphics12DrawSurface2EP11gxtkSurfaceffiiii;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics12DrawSurface2EP11gxtkSurfaceffiiii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$120, %esp
	movl	%ecx, -92(%ebp)
	fildl	28(%ebp)
	fstps	-44(%ebp)
	fildl	32(%ebp)
	fstps	-48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	flds	12(%ebp)
	fadds	-44(%ebp)
	fstps	-16(%ebp)
	flds	12(%ebp)
	fadds	-44(%ebp)
	fstps	-20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	flds	16(%ebp)
	fadds	-48(%ebp)
	fstps	-36(%ebp)
	flds	16(%ebp)
	fadds	-48(%ebp)
	fstps	-40(%ebp)
	fildl	20(%ebp)
	movl	8(%ebp), %eax
	flds	44(%eax)
	fmulp	%st, %st(1)
	fstps	-52(%ebp)
	movl	28(%ebp), %eax
	movl	20(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	fildl	-96(%ebp)
	movl	8(%ebp), %eax
	flds	44(%eax)
	fmulp	%st, %st(1)
	fstps	-56(%ebp)
	fildl	24(%ebp)
	movl	8(%ebp), %eax
	flds	48(%eax)
	fmulp	%st, %st(1)
	fstps	-60(%ebp)
	movl	32(%ebp), %eax
	movl	24(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	fildl	-96(%ebp)
	movl	8(%ebp), %eax
	flds	48(%eax)
	fmulp	%st, %st(1)
	fstps	-64(%ebp)
	movl	-92(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1094
	movl	-12(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	-92(%ebp), %eax
	flds	44(%eax)
	fmuls	-68(%ebp)
	movl	-92(%ebp), %eax
	flds	52(%eax)
	fmuls	-28(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-12(%ebp)
	movl	-92(%ebp), %eax
	flds	48(%eax)
	fmuls	-68(%ebp)
	movl	-92(%ebp), %eax
	flds	56(%eax)
	fmuls	-28(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-28(%ebp)
	movl	-92(%ebp), %eax
	flds	44(%eax)
	fmuls	-72(%ebp)
	movl	-92(%ebp), %eax
	flds	52(%eax)
	fmuls	-32(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-16(%ebp)
	movl	-92(%ebp), %eax
	flds	48(%eax)
	fmuls	-72(%ebp)
	movl	-92(%ebp), %eax
	flds	56(%eax)
	fmuls	-32(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-32(%ebp)
	movl	-92(%ebp), %eax
	flds	44(%eax)
	fmuls	-76(%ebp)
	movl	-92(%ebp), %eax
	flds	52(%eax)
	fmuls	-36(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-20(%ebp)
	movl	-92(%ebp), %eax
	flds	48(%eax)
	fmuls	-76(%ebp)
	movl	-92(%ebp), %eax
	flds	56(%eax)
	fmuls	-36(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-36(%ebp)
	movl	-92(%ebp), %eax
	flds	44(%eax)
	fmuls	-80(%ebp)
	movl	-92(%ebp), %eax
	flds	52(%eax)
	fmuls	-40(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	60(%eax)
	faddp	%st, %st(1)
	fstps	-24(%ebp)
	movl	-92(%ebp), %eax
	flds	48(%eax)
	fmuls	-80(%ebp)
	movl	-92(%ebp), %eax
	flds	56(%eax)
	fmuls	-40(%ebp)
	faddp	%st, %st(1)
	movl	-92(%ebp), %eax
	flds	64(%eax)
	faddp	%st, %st(1)
	fstps	-40(%ebp)
L1094:
	movl	-92(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4, 4(%esp)
	movl	$4, (%esp)
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface
	subl	$12, %esp
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	8(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	12(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	16(%eax), %edx
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	24(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	28(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	32(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	36(%eax), %edx
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	40(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	44(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	48(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	52(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	56(%eax), %edx
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	60(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	64(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	68(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	72(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	leal	76(%eax), %edx
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	movl	$0, %eax
	leave
	ret	$28
	.align 2
	.globl	__ZN12gxtkGraphics10ReadPixelsE5ArrayIiEiiiiii
	.def	__ZN12gxtkGraphics10ReadPixelsE5ArrayIiEiiiiii;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics10ReadPixelsE5ArrayIiEiiiiii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5FlushEv
	movl	20(%ebp), %eax
	imull	24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	subl	16(%ebp), %eax
	subl	24(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	$5121, 20(%esp)
	movl	$32993, 16(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_glReadPixels@28
	subl	$28, %esp
	movl	$0, -12(%ebp)
	jmp	L1097
L1098:
	movl	20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	24(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$1, %eax
	imull	20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %esi
	movl	-12(%ebp), %eax
	imull	32(%ebp), %eax
	movl	%eax, %edx
	movl	28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	addl	$1, -12(%ebp)
L1097:
	movl	-12(%ebp), %eax
	cmpl	24(%ebp), %eax
	jl	L1098
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, %eax
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret	$28
	.align 2
	.globl	__ZN12gxtkGraphics12WritePixels2EP11gxtkSurface5ArrayIiEiiiiii
	.def	__ZN12gxtkGraphics12WritePixels2EP11gxtkSurface5ArrayIiEiiiiii;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics12WritePixels2EP11gxtkSurface5ArrayIiEiiiiii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	12(%ebp), %eax
	movl	32(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	36(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN11gxtkSurface10SetSubDataEiiiiPji
	subl	$24, %esp
	movl	$0, %eax
	leave
	ret	$32
	.align 2
	.globl	__ZN11gxtkSurfaceC2Ev
	.def	__ZN11gxtkSurfaceC2Ev;	.scl	2;	.type	32;	.endef
__ZN11gxtkSurfaceC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV11gxtkSurface+8, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 24(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 28(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 32(%eax)
	movl	-4(%ebp), %eax
	movl	$-1, 36(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 40(%eax)
	movl	-4(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 44(%edx)
	movl	-4(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 48(%edx)
	leave
	ret
	.globl	__ZN11gxtkSurfaceC1Ev
	.def	__ZN11gxtkSurfaceC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN11gxtkSurfaceC1Ev,__ZN11gxtkSurfaceC2Ev
	.align 2
	.globl	__ZN11gxtkSurfaceD2Ev
	.def	__ZN11gxtkSurfaceD2Ev;	.scl	2;	.type	32;	.endef
__ZN11gxtkSurfaceD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	movl	%ecx, -28(%ebp)
	movl	$___gxx_personality_sj0, -56(%ebp)
	movl	$LLSDA918, -52(%ebp)
	leal	-48(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1107, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-28(%ebp), %eax
	movl	$__ZTV11gxtkSurface+8, (%eax)
	movl	-28(%ebp), %eax
	movl	$1, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN11gxtkSurface7DiscardEv
	movl	-28(%ebp), %eax
	movl	$-1, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1109
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	jmp	L1109
L1107:
	leal	24(%ebp), %ebp
	movl	-72(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-28(%ebp), %eax
	movl	$0, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -76(%ebp)
	call	__Unwind_SjLj_Resume
L1109:
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA918:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE918-LLSDACSB918
LLSDACSB918:
	.uleb128 0
	.uleb128 0
LLSDACSE918:
	.text
	.globl	__ZN11gxtkSurfaceD1Ev
	.def	__ZN11gxtkSurfaceD1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN11gxtkSurfaceD1Ev,__ZN11gxtkSurfaceD2Ev
	.align 2
	.globl	__ZN11gxtkSurfaceD0Ev
	.def	__ZN11gxtkSurfaceD0Ev;	.scl	2;	.type	32;	.endef
__ZN11gxtkSurfaceD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN11gxtkSurfaceD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	leave
	ret
	.align 2
	.globl	__ZN11gxtkSurface7DiscardEv
	.def	__ZN11gxtkSurface7DiscardEv;	.scl	2;	.type	32;	.endef
__ZN11gxtkSurface7DiscardEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	_glfwGraphicsSeq, %eax
	cmpl	%eax, %edx
	jne	L1113
	movl	-12(%ebp), %eax
	addl	$40, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_glDeleteTextures@8
	subl	$8, %esp
	movl	-12(%ebp), %eax
	movl	$-1, 36(%eax)
L1113:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1114
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
L1114:
	movl	$0, %eax
	leave
	ret
	.align 2
	.globl	__ZN11gxtkSurface5WidthEv
	.def	__ZN11gxtkSurface5WidthEv;	.scl	2;	.type	32;	.endef
__ZN11gxtkSurface5WidthEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	leave
	ret
	.align 2
	.globl	__ZN11gxtkSurface6HeightEv
	.def	__ZN11gxtkSurface6HeightEv;	.scl	2;	.type	32;	.endef
__ZN11gxtkSurface6HeightEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	leave
	ret
	.align 2
	.globl	__ZN11gxtkSurface6LoadedEv
	.def	__ZN11gxtkSurface6LoadedEv;	.scl	2;	.type	32;	.endef
__ZN11gxtkSurface6LoadedEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$1, %eax
	leave
	ret
	.align 2
	.globl	__ZN11gxtkSurface7SetDataEPhiii
	.def	__ZN11gxtkSurface7SetDataEPhiii;	.scl	2;	.type	32;	.endef
__ZN11gxtkSurface7SetDataEPhiii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	movl	%ecx, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-24(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	-24(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	-24(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	imull	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	20(%ebp), %eax
	cmpl	$2, %eax
	je	L1124
	cmpl	$2, %eax
	jg	L1125
	cmpl	$1, %eax
	je	L1126
	jmp	L1122
L1125:
	cmpl	$3, %eax
	je	L1127
	cmpl	$4, %eax
	je	L1128
	jmp	L1122
L1126:
	movl	-24(%ebp), %eax
	movl	$6409, 32(%eax)
	jmp	L1122
L1124:
	movl	-24(%ebp), %eax
	movl	$6410, 32(%eax)
	cmpl	$0, 8(%ebp)
	je	L1129
	jmp	L1130
L1131:
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	$-2139062143, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$7, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movb	%dl, (%eax)
	addl	$2, -8(%ebp)
L1130:
	movl	-12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -12(%ebp)
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	L1131
L1129:
	jmp	L1122
L1127:
	movl	-24(%ebp), %eax
	movl	$6407, 32(%eax)
	jmp	L1122
L1128:
	movl	-24(%ebp), %eax
	movl	$6408, 32(%eax)
	cmpl	$0, 8(%ebp)
	je	L1132
	jmp	L1133
L1134:
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	$-2139062143, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$7, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movb	%dl, (%eax)
	movl	-8(%ebp), %eax
	leal	1(%eax), %ebx
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	$-2139062143, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$7, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, (%ebx)
	movl	-8(%ebp), %eax
	leal	2(%eax), %ebx
	movl	-8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	$-2139062143, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$7, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, (%ebx)
	addl	$4, -8(%ebp)
L1133:
	movl	-12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -12(%ebp)
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	L1134
L1132:
	nop
L1122:
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret	$16
	.align 2
	.globl	__ZN11gxtkSurface10SetSubDataEiiiiPji
	.def	__ZN11gxtkSurface10SetSubDataEiiiiPji;	.scl	2;	.type	32;	.endef
__ZN11gxtkSurface10SetSubDataEiiiiPji:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	movl	%ecx, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$6408, %eax
	je	L1136
	jmp	L1135
L1136:
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1138
	movl	-44(%ebp), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	imull	%edx, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
L1138:
	movl	-44(%ebp), %eax
	movl	16(%eax), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	imull	12(%ebp), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -12(%ebp)
	jmp	L1139
L1142:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	imull	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	imull	28(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	24(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -24(%ebp)
	jmp	L1140
L1141:
	movl	-20(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -20(%ebp)
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	shrl	$24, %eax
	movl	%eax, -40(%ebp)
	movl	-16(%ebp), %ecx
	leal	4(%ecx), %eax
	movl	%eax, -16(%ebp)
	movl	-40(%ebp), %eax
	sall	$24, %eax
	movl	%eax, %ebx
	movl	-36(%ebp), %eax
	movzbl	%al, %eax
	imull	-40(%ebp), %eax
	movl	$-2139062143, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$7, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movl	-36(%ebp), %eax
	shrl	$8, %eax
	movzbl	%al, %eax
	imull	-40(%ebp), %eax
	movl	$-2139062143, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$7, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movl	-36(%ebp), %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	imull	-40(%ebp), %eax
	movl	$-2139062143, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$7, %eax
	orl	%ebx, %eax
	movl	%eax, (%ecx)
	addl	$1, -24(%ebp)
L1140:
	movl	-24(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	L1141
	addl	$1, -12(%ebp)
L1139:
	movl	-12(%ebp), %eax
	cmpl	20(%ebp), %eax
	jl	L1142
	movl	-44(%ebp), %eax
	movl	36(%eax), %edx
	movl	_glfwGraphicsSeq, %eax
	cmpl	%eax, %edx
	jne	L1135
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$3553, (%esp)
	call	_glBindTexture@8
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	$3317, (%esp)
	call	_glPixelStorei@8
	subl	$8, %esp
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	28(%ebp), %eax
	jne	L1143
	movl	-44(%ebp), %eax
	movl	32(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	$5121, 28(%esp)
	movl	%eax, 24(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	_glTexSubImage2D@36
	subl	$36, %esp
	jmp	L1144
L1143:
	movl	$0, -28(%ebp)
	jmp	L1145
L1146:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	imull	-28(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-44(%ebp), %eax
	movl	32(%eax), %eax
	movl	-28(%ebp), %edx
	movl	12(%ebp), %ebx
	addl	%ebx, %edx
	movl	%ecx, 32(%esp)
	movl	$5121, 28(%esp)
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	_glTexSubImage2D@36
	subl	$36, %esp
	addl	$1, -28(%ebp)
L1145:
	movl	-28(%ebp), %eax
	cmpl	20(%ebp), %eax
	jl	L1146
L1144:
L1135:
	movl	-4(%ebp), %ebx
	leave
	ret	$24
	.align 2
	.globl	__ZN11gxtkSurface4BindEv
	.def	__ZN11gxtkSurface4BindEv;	.scl	2;	.type	32;	.endef
__ZN11gxtkSurface4BindEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$68, %esp
	movl	%ecx, -28(%ebp)
	movl	_glfwGraphicsSeq, %eax
	testl	%eax, %eax
	jne	L1148
	jmp	L1147
L1148:
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	_glfwGraphicsSeq, %eax
	cmpl	%eax, %edx
	jne	L1150
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$3553, (%esp)
	call	_glBindTexture@8
	subl	$8, %esp
	jmp	L1147
L1150:
	movl	_glfwGraphicsSeq, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	-28(%ebp), %eax
	addl	$40, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_glGenTextures@8
	subl	$8, %esp
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$3553, (%esp)
	call	_glBindTexture@8
	subl	$8, %esp
	movl	$9729, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	_glTexParameteri@12
	subl	$12, %esp
	movl	$9729, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	_glTexParameteri@12
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	_glTexParameteri@12
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	_glTexParameteri@12
	subl	$12, %esp
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	movl	$0, 32(%esp)
	movl	$5121, 28(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 20(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	_glTexImage2D@36
	subl	$36, %esp
	call	_glGetError@0
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1151
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	__ZL8Pow2Sizei
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	__ZL8Pow2Sizei
	movl	%eax, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	movl	$0, 32(%esp)
	movl	$5121, 28(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 20(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	_glTexImage2D@36
	subl	$36, %esp
L1151:
	fildl	-12(%ebp)
	fld1
	fdivp	%st, %st(1)
	fstps	-32(%ebp)
	flds	-32(%ebp)
	movl	-28(%ebp), %eax
	fstps	44(%eax)
	fildl	-16(%ebp)
	fld1
	fdivp	%st, %st(1)
	fstps	-32(%ebp)
	flds	-32(%ebp)
	movl	-28(%ebp), %eax
	fstps	48(%eax)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1147
	movl	$1, 4(%esp)
	movl	$3317, (%esp)
	call	_glPixelStorei@8
	subl	$8, %esp
	movl	-28(%ebp), %eax
	movl	16(%eax), %ebx
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	movl	24(%eax), %edx
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%ebx, 32(%esp)
	movl	$5121, 28(%esp)
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	_glTexSubImage2D@36
	subl	$36, %esp
L1147:
	movl	-4(%ebp), %ebx
	leave
	ret
	.align 2
	.globl	__ZN11gxtkSurface20OnUnsafeLoadCompleteEv
	.def	__ZN11gxtkSurface20OnUnsafeLoadCompleteEv;	.scl	2;	.type	32;	.endef
__ZN11gxtkSurface20OnUnsafeLoadCompleteEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN11gxtkSurface4BindEv
	leave
	ret
	.align 2
	.globl	__ZN12gxtkGraphics21LoadSurface__UNSAFE__EP11gxtkSurface6String
	.def	__ZN12gxtkGraphics21LoadSurface__UNSAFE__EP11gxtkSurface6String;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics21LoadSurface__UNSAFE__EP11gxtkSurface6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA929, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1158, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	call	__ZN10BBGlfwGame8GlfwGameEv
	movl	%eax, -116(%ebp)
	movl	(%eax), %eax
	addl	$108, %eax
	movl	(%eax), %esi
	movl	%esi, -120(%ebp)
	leal	-32(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	movl	-116(%ebp), %ecx
	call	*-120(%ebp)
	subl	$16, %esp
	movl	%eax, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpl	$0, -28(%ebp)
	jne	L1154
	movl	$0, %eax
	jmp	L1156
L1154:
	movl	-44(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN11gxtkSurface7SetDataEPhiii
	subl	$16, %esp
	movl	$1, %eax
L1156:
	movb	%al, -116(%ebp)
	jmp	L1160
L1158:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1160:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA929:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE929-LLSDACSB929
LLSDACSB929:
	.uleb128 0
	.uleb128 0
LLSDACSE929:
	.text
	.align 2
	.globl	__ZN12gxtkGraphics11LoadSurfaceE6String
	.def	__ZN12gxtkGraphics11LoadSurfaceE6String;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics11LoadSurfaceE6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA930, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1165, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$52, (%esp)
	movl	$-1, -92(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -100(%ebp)
	movl	%eax, %ecx
	call	__ZN11gxtkSurfaceC1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$52, %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-44(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	*-100(%ebp)
	subl	$8, %esp
	xorl	$1, %eax
	movb	%al, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -100(%ebp)
	je	L1162
	movl	$0, %eax
	jmp	L1163
L1162:
	movl	-28(%ebp), %eax
	movl	$-1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN11gxtkSurface4BindEv
	movl	-28(%ebp), %eax
L1163:
	movl	%eax, -100(%ebp)
	jmp	L1167
L1165:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1167:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA930:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE930-LLSDACSB930
LLSDACSB930:
	.uleb128 0
	.uleb128 0
LLSDACSE930:
	.text
	.align 2
	.globl	__ZN12gxtkGraphics13CreateSurfaceEii
	.def	__ZN12gxtkGraphics13CreateSurfaceEii;	.scl	2;	.type	32;	.endef
__ZN12gxtkGraphics13CreateSurfaceEii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	%ecx, -28(%ebp)
	movl	$52, (%esp)
	call	__ZN9gc_objectnwEj
	movl	%eax, %ebx
	movl	%ebx, %ecx
	call	__ZN11gxtkSurfaceC1Ev
	movl	%ebx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$4, 12(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZN11gxtkSurface7SetDataEPhiii
	subl	$16, %esp
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN11gxtkSurface4BindEv
	movl	-12(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	ret	$8
	.globl	__ZN9gxtkAudio5audioE
	.bss
	.align 4
__ZN9gxtkAudio5audioE:
	.space 4
.lcomm __ZL9discarded,12,4
	.text
	.def	__ZL14FlushDiscardedv;	.scl	3;	.type	32;	.endef
__ZL14FlushDiscardedv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	$___gxx_personality_sj0, -100(%ebp)
	movl	$LLSDA932, -96(%ebp)
	leal	-92(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1184, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$__ZL9discarded, %ecx
	call	__ZNKSt6vectorIjSaIjEE4sizeEv
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L1171
	jmp	L1170
L1171:
	movl	$0, -28(%ebp)
	jmp	L1173
L1176:
	movl	__ZN9gxtkAudio5audioE, %eax
	movl	-28(%ebp), %edx
	addl	$1, %edx
	sall	$4, %edx
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L1174
	movl	$0, -56(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	leal	-56(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4112, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__alGetSourcei, %eax
	movl	$1, -120(%ebp)
	call	*%eax
	movl	-56(%ebp), %eax
	cmpl	$4116, %eax
	jne	L1175
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	$4105, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__alSourcei, %eax
	call	*%eax
L1175:
L1174:
	addl	$1, -28(%ebp)
L1173:
	cmpl	$32, -28(%ebp)
	jle	L1176
	leal	-52(%ebp), %eax
	movl	$2, -120(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEEC1Ev
	movl	$0, -32(%ebp)
	jmp	L1177
L1179:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$__ZL9discarded, %ecx
	call	__ZNSt6vectorIjSaIjEEixEj
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	movl	__imp__alDeleteBuffers, %eax
	movl	$3, -120(%ebp)
	call	*%eax
	movl	__imp__alGetError, %eax
	call	*%eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	L1178
	leal	-52(%ebp), %eax
	leal	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEE9push_backERKj
	subl	$4, %esp
L1178:
	addl	$1, -32(%ebp)
L1177:
	movl	-32(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	$__ZL9discarded, %ecx
	call	__ZNKSt6vectorIjSaIjEE4sizeEv
	cmpl	%eax, -128(%ebp)
	setb	%al
	testb	%al, %al
	jne	L1179
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, -120(%ebp)
	movl	$__ZL9discarded, %ecx
	call	__ZNSt6vectorIjSaIjEEaSERKS1_
	subl	$4, %esp
	leal	-52(%ebp), %eax
	movl	$2, -120(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEED1Ev
	jmp	L1170
L1184:
	leal	24(%ebp), %ebp
	movl	-116(%ebp), %edx
	movl	-120(%ebp), %eax
	testl	%eax, %eax
	je	L1185
	subl	$1, %eax
	testl	%eax, %eax
	je	L1186
	subl	$1, %eax
	testl	%eax, %eax
	je	L1187
	subl	$1, %eax
	testl	%eax, %eax
	je	L1188
	subl	$1, %eax
		.word	0x0b0f
L1185:
	movl	%edx, %eax
	jmp	L1181
L1187:
	movl	%edx, %eax
	movl	%eax, -128(%ebp)
	jmp	L1183
L1188:
	movl	%edx, -128(%ebp)
L1183:
	leal	-52(%ebp), %eax
	movl	$0, -120(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEED1Ev
	movl	-128(%ebp), %eax
	jmp	L1181
L1186:
	movl	%edx, %eax
L1181:
	movl	%eax, (%esp)
	movl	$-1, -120(%ebp)
	call	__Unwind_SjLj_Resume
L1170:
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA932:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE932-LLSDACSB932
LLSDACSB932:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE932:
	.text
	.align 2
	.globl	__ZN11gxtkChannel9AL_SourceEv
	.def	__ZN11gxtkChannel9AL_SourceEv;	.scl	2;	.type	32;	.endef
__ZN11gxtkChannel9AL_SourceEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1190
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	jmp	L1191
L1190:
	movl	__imp__alGetError, %eax
	call	*%eax
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	movl	__imp__alGenSources, %eax
	call	*%eax
	movl	__imp__alGetError, %eax
	call	*%eax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L1192
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	jmp	L1191
L1192:
	movl	-28(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, -12(%ebp)
	jmp	L1193
L1200:
	movl	__ZN9gxtkAudio5audioE, %eax
	movl	-12(%ebp), %edx
	addl	$1, %edx
	sall	$4, %edx
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1194
	movl	__ZN9gxtkAudio5audioE, %eax
	movl	(%eax), %eax
	addl	$56, %eax
	movl	(%eax), %ebx
	movl	__ZN9gxtkAudio5audioE, %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	testl	%eax, %eax
	je	L1195
L1194:
	movl	$1, %eax
	jmp	L1196
L1195:
	movl	$0, %eax
L1196:
	testb	%al, %al
	je	L1197
	nop
	addl	$1, -12(%ebp)
	jmp	L1193
L1197:
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	jmp	L1199
L1193:
	cmpl	$31, -12(%ebp)
	jle	L1200
L1199:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
L1191:
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC67:
	.ascii "Generic Hardware\0"
LC68:
	.ascii "Generic Software\0"
	.align 4
LC69:
	.ascii "OpenAl error: alcMakeContextCurrent failed\0"
	.align 4
LC70:
	.ascii "OpenAl error: alcCreateContext failed\0"
	.align 4
LC71:
	.ascii "OpenAl error: alcOpenDevice failed\0"
	.text
	.align 2
	.globl	__ZN9gxtkAudioC2Ev
	.def	__ZN9gxtkAudioC2Ev;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudioC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA935, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1212, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-44(%ebp), %eax
	movl	$__ZTV9gxtkAudio+8, (%eax)
	movl	-44(%ebp), %eax
	movl	%eax, __ZN9gxtkAudio5audioE
	movl	$0, (%esp)
	movl	__imp__alcOpenDevice, %eax
	movl	$1, -92(%ebp)
	call	*%eax
	movl	-44(%ebp), %edx
	movl	%eax, 16(%edx)
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1202
	movl	$LC67, (%esp)
	movl	__imp__alcOpenDevice, %eax
	call	*%eax
	movl	-44(%ebp), %edx
	movl	%eax, 16(%edx)
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1202
	movl	$LC68, (%esp)
	movl	__imp__alcOpenDevice, %eax
	call	*%eax
	movl	-44(%ebp), %edx
	movl	%eax, 16(%edx)
L1202:
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1203
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__alcCreateContext, %eax
	movl	$1, -92(%ebp)
	call	*%eax
	movl	-44(%ebp), %edx
	movl	%eax, 20(%edx)
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1204
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alcMakeContextCurrent, %eax
	call	*%eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	jne	L1207
	leal	-36(%ebp), %eax
	movl	$LC69, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -92(%ebp)
	call	__Z7bbPrint6String
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L1207
L1204:
	leal	-32(%ebp), %eax
	movl	$LC70, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$3, -92(%ebp)
	call	__Z7bbPrint6String
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L1207
L1203:
	leal	-28(%ebp), %eax
	movl	$LC71, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, -92(%ebp)
	call	__Z7bbPrint6String
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L1207:
	movl	$0, (%esp)
	movl	__imp__alDistanceModel, %eax
	movl	$1, -92(%ebp)
	call	*%eax
	movl	-44(%ebp), %eax
	addl	$24, %eax
	movl	$528, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-44(%ebp), %eax
	addl	$536, %eax
	movl	%eax, %ecx
	call	__ZN11gxtkChannel9AL_SourceEv
	jmp	L1217
L1214:
	movl	%edx, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1209
L1215:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1209
L1216:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1209
L1212:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L1213
	subl	$1, %eax
	testl	%eax, %eax
	je	L1214
	subl	$1, %eax
	testl	%eax, %eax
	je	L1215
	subl	$1, %eax
	testl	%eax, %eax
	je	L1216
	subl	$1, %eax
		.word	0x0b0f
L1213:
	movl	%edx, -100(%ebp)
L1209:
	movl	-44(%ebp), %eax
	movl	$0, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1217:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA935:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE935-LLSDACSB935
LLSDACSB935:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE935:
	.text
	.globl	__ZN9gxtkAudioC1Ev
	.def	__ZN9gxtkAudioC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN9gxtkAudioC1Ev,__ZN9gxtkAudioC2Ev
	.align 2
	.globl	__ZN9gxtkAudio4markEv
	.def	__ZN9gxtkAudio4markEv;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA937, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1224, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$0, -28(%ebp)
	jmp	L1219
L1222:
	movl	-28(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L1220
	movl	$0, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	leal	-36(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4112, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__alGetSourcei, %eax
	movl	$1, -92(%ebp)
	call	*%eax
	movl	-36(%ebp), %eax
	cmpl	$4116, %eax
	je	L1221
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__Z7gc_markI10gxtkSampleEvPT_
L1221:
L1220:
	addl	$1, -28(%ebp)
L1219:
	cmpl	$32, -28(%ebp)
	jle	L1222
	jmp	L1226
L1224:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1226:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA937:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE937-LLSDACSB937
LLSDACSB937:
	.uleb128 0
	.uleb128 0
LLSDACSE937:
	.text
	.align 2
	.globl	__ZN9gxtkAudio7SuspendEv
	.def	__ZN9gxtkAudio7SuspendEv;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio7SuspendEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA938, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1234, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$0, -28(%ebp)
	jmp	L1228
L1231:
	movl	-28(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	L1229
	movl	$0, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	leal	-36(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4112, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__alGetSourcei, %eax
	movl	$1, -92(%ebp)
	call	*%eax
	movl	-36(%ebp), %eax
	cmpl	$4114, %eax
	jne	L1230
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourcePause, %eax
	call	*%eax
L1230:
L1229:
	addl	$1, -28(%ebp)
L1228:
	cmpl	$32, -28(%ebp)
	jle	L1231
	movl	$0, %eax
	movl	%eax, -100(%ebp)
	jmp	L1236
L1234:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1236:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA938:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE938-LLSDACSB938
LLSDACSB938:
	.uleb128 0
	.uleb128 0
LLSDACSE938:
	.text
	.align 2
	.globl	__ZN9gxtkAudio6ResumeEv
	.def	__ZN9gxtkAudio6ResumeEv;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio6ResumeEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA939, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1244, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$0, -28(%ebp)
	jmp	L1238
L1241:
	movl	-28(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	L1239
	movl	$0, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	leal	-36(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4112, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__alGetSourcei, %eax
	movl	$1, -92(%ebp)
	call	*%eax
	movl	-36(%ebp), %eax
	cmpl	$4115, %eax
	jne	L1240
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourcePlay, %eax
	call	*%eax
L1240:
L1239:
	addl	$1, -28(%ebp)
L1238:
	cmpl	$32, -28(%ebp)
	jle	L1241
	movl	$0, %eax
	movl	%eax, -100(%ebp)
	jmp	L1246
L1244:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1246:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA939:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE939-LLSDACSB939
LLSDACSB939:
	.uleb128 0
	.uleb128 0
LLSDACSE939:
	.text
	.align 2
	.globl	__ZN9gxtkAudio20LoadSample__UNSAFE__EP10gxtkSample6String
	.def	__ZN9gxtkAudio20LoadSample__UNSAFE__EP10gxtkSample6String;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio20LoadSample__UNSAFE__EP10gxtkSample6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA940, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1257, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -56(%ebp)
	call	__ZN10BBGlfwGame8GlfwGameEv
	movl	%eax, -132(%ebp)
	movl	(%eax), %eax
	addl	$112, %eax
	movl	(%eax), %esi
	movl	%esi, -136(%ebp)
	leal	-40(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -124(%ebp)
	movl	-132(%ebp), %ecx
	call	*-136(%ebp)
	subl	$20, %esp
	movl	%eax, -32(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpl	$0, -32(%ebp)
	jne	L1248
	movl	$0, %eax
	jmp	L1254
L1248:
	movl	$0, -28(%ebp)
	movl	-52(%ebp), %eax
	cmpl	$1, %eax
	jne	L1250
	movl	-48(%ebp), %eax
	cmpl	$1, %eax
	jne	L1250
	movl	$4352, -28(%ebp)
	jmp	L1251
L1250:
	movl	-52(%ebp), %eax
	cmpl	$1, %eax
	jne	L1252
	movl	-48(%ebp), %eax
	cmpl	$2, %eax
	jne	L1252
	movl	$4354, -28(%ebp)
	jmp	L1251
L1252:
	movl	-52(%ebp), %eax
	cmpl	$2, %eax
	jne	L1253
	movl	-48(%ebp), %eax
	cmpl	$1, %eax
	jne	L1253
	movl	$4353, -28(%ebp)
	jmp	L1251
L1253:
	movl	-52(%ebp), %eax
	cmpl	$2, %eax
	jne	L1251
	movl	-48(%ebp), %eax
	cmpl	$2, %eax
	jne	L1251
	movl	$4355, -28(%ebp)
L1251:
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %eax
	imull	%eax, %edx
	movl	-52(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -36(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	movl	__imp__alGenBuffers, %eax
	movl	$1, -124(%ebp)
	call	*%eax
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__alBufferData, %eax
	call	*%eax
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN10gxtkSample9SetBufferEj
	subl	$4, %esp
	movl	$1, %eax
L1254:
	movb	%al, -132(%ebp)
	jmp	L1260
L1259:
	movl	%edx, -132(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	jmp	L1256
L1257:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L1258
	subl	$1, %eax
	testl	%eax, %eax
	je	L1259
	subl	$1, %eax
		.word	0x0b0f
L1258:
	movl	%edx, %eax
L1256:
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L1260:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-132(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA940:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE940-LLSDACSB940
LLSDACSB940:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE940:
	.text
	.align 2
	.globl	__ZN9gxtkAudio10LoadSampleE6String
	.def	__ZN9gxtkAudio10LoadSampleE6String;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio10LoadSampleE6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA941, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1266, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$-1, -92(%ebp)
	call	__ZL14FlushDiscardedv
	movl	$20, (%esp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -100(%ebp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN10gxtkSampleC1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	leal	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-44(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	*-104(%ebp)
	subl	$8, %esp
	xorl	$1, %eax
	movb	%al, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -100(%ebp)
	je	L1262
	movl	$0, %eax
	jmp	L1263
L1262:
	movl	-28(%ebp), %eax
L1263:
	movl	%eax, -100(%ebp)
	jmp	L1269
L1266:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L1267
	subl	$1, %eax
	testl	%eax, %eax
	je	L1268
	subl	$1, %eax
		.word	0x0b0f
L1267:
	movl	%edx, -104(%ebp)
	movl	-100(%ebp), %esi
	movl	%esi, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1268:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1269:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA941:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE941-LLSDACSB941
LLSDACSB941:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE941:
	.text
	.align 2
	.globl	__ZN9gxtkAudio10PlaySampleEP10gxtkSampleii
	.def	__ZN9gxtkAudio10PlaySampleEP10gxtkSampleii;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio10PlaySampleEP10gxtkSampleii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	call	__ZL14FlushDiscardedv
	movl	12(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN11gxtkChannel9AL_SourceEv
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L1271
	movl	$-1, %eax
	jmp	L1272
L1271:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourceStop, %eax
	call	*%eax
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$4105, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__alSourcei, %eax
	call	*%eax
	cmpl	$0, 16(%ebp)
	je	L1273
	movl	$1, %eax
	jmp	L1274
L1273:
	movl	$0, %eax
L1274:
	movl	-12(%ebp), %edx
	movl	(%edx), %edx
	movl	%eax, 8(%esp)
	movl	$4103, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__alSourcei, %eax
	call	*%eax
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourcePlay, %eax
	call	*%eax
	movl	-12(%ebp), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI10gxtkSampleS0_EvRPT_PT0_
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	$1, 12(%eax)
	movl	$0, %eax
L1272:
	leave
	ret	$12
	.align 2
	.globl	__ZN9gxtkAudio11StopChannelEi
	.def	__ZN9gxtkAudio11StopChannelEi;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio11StopChannelEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L1276
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourceStop, %eax
	call	*%eax
	movl	-12(%ebp), %eax
	movl	$0, 12(%eax)
L1276:
	movl	$0, %eax
	leave
	ret	$4
	.align 2
	.globl	__ZN9gxtkAudio12PauseChannelEi
	.def	__ZN9gxtkAudio12PauseChannelEi;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio12PauseChannelEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA944, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1284, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	8(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	L1279
	movl	$0, -32(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4112, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__alGetSourcei, %eax
	movl	$1, -92(%ebp)
	call	*%eax
	movl	-32(%ebp), %eax
	cmpl	$4116, %eax
	jne	L1280
	movl	-28(%ebp), %eax
	movl	$0, 12(%eax)
	jmp	L1279
L1280:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourcePause, %eax
	movl	$1, -92(%ebp)
	call	*%eax
	movl	-28(%ebp), %eax
	movl	$2, 12(%eax)
L1279:
	movl	$0, %eax
	movl	%eax, -100(%ebp)
	jmp	L1286
L1284:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1286:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA944:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE944-LLSDACSB944
LLSDACSB944:
	.uleb128 0
	.uleb128 0
LLSDACSE944:
	.text
	.align 2
	.globl	__ZN9gxtkAudio13ResumeChannelEi
	.def	__ZN9gxtkAudio13ResumeChannelEi;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio13ResumeChannelEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	jne	L1288
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourcePlay, %eax
	call	*%eax
	movl	-12(%ebp), %eax
	movl	$1, 12(%eax)
L1288:
	movl	$0, %eax
	leave
	ret	$4
	.align 2
	.globl	__ZN9gxtkAudio12ChannelStateEi
	.def	__ZN9gxtkAudio12ChannelStateEi;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio12ChannelStateEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA946, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1295, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	8(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	L1291
	movl	$0, -32(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$4112, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__alGetSourcei, %eax
	movl	$1, -92(%ebp)
	call	*%eax
	movl	-32(%ebp), %eax
	cmpl	$4116, %eax
	jne	L1292
	movl	-28(%ebp), %eax
	movl	$0, 12(%eax)
L1292:
L1291:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	L1297
L1295:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1297:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA946:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE946-LLSDACSB946
LLSDACSB946:
	.uleb128 0
	.uleb128 0
LLSDACSE946:
	.text
	.align 2
	.globl	__ZN9gxtkAudio9SetVolumeEif
	.def	__ZN9gxtkAudio9SetVolumeEif;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio9SetVolumeEif:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN11gxtkChannel9AL_SourceEv
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4106, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__alSourcef, %eax
	call	*%eax
	movl	$0, %eax
	leave
	ret	$8
	.align 2
	.globl	__ZN9gxtkAudio6SetPanEif
	.def	__ZN9gxtkAudio6SetPanEif;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio6SetPanEif:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_sinf
	fstps	-16(%ebp)
	movl	LC46, %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_cosf
	fchs
	fstps	-24(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN11gxtkChannel9AL_SourceEv
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4100, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__alSource3f, %eax
	call	*%eax
	movl	$0, %eax
	leave
	ret	$8
	.align 2
	.globl	__ZN9gxtkAudio7SetRateEif
	.def	__ZN9gxtkAudio7SetRateEif;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio7SetRateEif:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN11gxtkChannel9AL_SourceEv
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4099, 4(%esp)
	movl	%edx, (%esp)
	movl	__imp__alSourcef, %eax
	call	*%eax
	movl	$0, %eax
	leave
	ret	$8
	.align 2
	.globl	__ZN9gxtkAudio9PlayMusicE6Stringi
	.def	__ZN9gxtkAudio9PlayMusicE6Stringi;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio9PlayMusicE6Stringi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA950, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L1308, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$76, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-44(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	*-100(%ebp)
	subl	$4, %esp
	movl	%eax, -28(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpl	$0, -28(%ebp)
	jne	L1305
	movl	$-1, %eax
	jmp	L1306
L1305:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$40, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$32, 4(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$-1, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$12, %esp
	movl	$0, %eax
L1306:
	movl	%eax, -100(%ebp)
	jmp	L1310
L1308:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1310:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA950:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE950-LLSDACSB950
LLSDACSB950:
	.uleb128 0
	.uleb128 0
LLSDACSE950:
	.text
	.align 2
	.globl	__ZN9gxtkAudio9StopMusicEv
	.def	__ZN9gxtkAudio9StopMusicEv;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio9StopMusicEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$44, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	$32, (%esp)
	movl	%eax, %ecx
	call	*%edx
	subl	$4, %esp
	movl	$0, %eax
	leave
	ret
	.align 2
	.globl	__ZN9gxtkAudio10PauseMusicEv
	.def	__ZN9gxtkAudio10PauseMusicEv;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio10PauseMusicEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$48, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	$32, (%esp)
	movl	%eax, %ecx
	call	*%edx
	subl	$4, %esp
	movl	$0, %eax
	leave
	ret
	.align 2
	.globl	__ZN9gxtkAudio11ResumeMusicEv
	.def	__ZN9gxtkAudio11ResumeMusicEv;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio11ResumeMusicEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$52, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	$32, (%esp)
	movl	%eax, %ecx
	call	*%edx
	subl	$4, %esp
	movl	$0, %eax
	leave
	ret
	.align 2
	.globl	__ZN9gxtkAudio10MusicStateEv
	.def	__ZN9gxtkAudio10MusicStateEv;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio10MusicStateEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$56, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	$32, (%esp)
	movl	%eax, %ecx
	call	*%edx
	subl	$4, %esp
	leave
	ret
	.align 2
	.globl	__ZN9gxtkAudio14SetMusicVolumeEf
	.def	__ZN9gxtkAudio14SetMusicVolumeEf;	.scl	2;	.type	32;	.endef
__ZN9gxtkAudio14SetMusicVolumeEf:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$60, %eax
	movl	(%eax), %ebx
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	movl	%edx, %ecx
	call	*%ebx
	subl	$8, %esp
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
	ret	$4
	.align 2
	.globl	__ZN10gxtkSampleC2Ev
	.def	__ZN10gxtkSampleC2Ev;	.scl	2;	.type	32;	.endef
__ZN10gxtkSampleC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV10gxtkSample+8, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 16(%eax)
	leave
	ret
	.globl	__ZN10gxtkSampleC1Ev
	.def	__ZN10gxtkSampleC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN10gxtkSampleC1Ev,__ZN10gxtkSampleC2Ev
	.align 2
	.globl	__ZN10gxtkSampleC2Ej
	.def	__ZN10gxtkSampleC2Ej;	.scl	2;	.type	32;	.endef
__ZN10gxtkSampleC2Ej:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV10gxtkSample+8, (%eax)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 16(%eax)
	leave
	ret	$4
	.globl	__ZN10gxtkSampleC1Ej
	.def	__ZN10gxtkSampleC1Ej;	.scl	2;	.type	32;	.endef
	.set	__ZN10gxtkSampleC1Ej,__ZN10gxtkSampleC2Ej
	.align 2
	.globl	__ZN10gxtkSampleD2Ev
	.def	__ZN10gxtkSampleD2Ev;	.scl	2;	.type	32;	.endef
__ZN10gxtkSampleD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	movl	%ecx, -28(%ebp)
	movl	$___gxx_personality_sj0, -56(%ebp)
	movl	$LLSDA963, -52(%ebp)
	leal	-48(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1327, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-28(%ebp), %eax
	movl	$__ZTV10gxtkSample+8, (%eax)
	movl	-28(%ebp), %eax
	movl	$1, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN10gxtkSample7DiscardEv
	movl	-28(%ebp), %eax
	movl	$-1, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1329
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	jmp	L1329
L1327:
	leal	24(%ebp), %ebp
	movl	-72(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-28(%ebp), %eax
	movl	$0, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -76(%ebp)
	call	__Unwind_SjLj_Resume
L1329:
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA963:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE963-LLSDACSB963
LLSDACSB963:
	.uleb128 0
	.uleb128 0
LLSDACSE963:
	.text
	.globl	__ZN10gxtkSampleD1Ev
	.def	__ZN10gxtkSampleD1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN10gxtkSampleD1Ev,__ZN10gxtkSampleD2Ev
	.align 2
	.globl	__ZN10gxtkSampleD0Ev
	.def	__ZN10gxtkSampleD0Ev;	.scl	2;	.type	32;	.endef
__ZN10gxtkSampleD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10gxtkSampleD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	leave
	ret
	.align 2
	.globl	__ZN10gxtkSample9SetBufferEj
	.def	__ZN10gxtkSample9SetBufferEj;	.scl	2;	.type	32;	.endef
__ZN10gxtkSample9SetBufferEj:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 16(%eax)
	leave
	ret	$4
	.align 2
	.globl	__ZN10gxtkSample7DiscardEv
	.def	__ZN10gxtkSample7DiscardEv;	.scl	2;	.type	32;	.endef
__ZN10gxtkSample7DiscardEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1334
	movl	-12(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	movl	$__ZL9discarded, %ecx
	call	__ZNSt6vectorIjSaIjEE9push_backERKj
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
L1334:
	movl	$0, %eax
	leave
	ret
	.align 2
	.globl	__ZN8BBThreadC2Ev
	.def	__ZN8BBThreadC2Ev;	.scl	2;	.type	32;	.endef
__ZN8BBThreadC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV8BBThread+8, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 24(%eax)
	leave
	ret
	.globl	__ZN8BBThreadC1Ev
	.def	__ZN8BBThreadC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN8BBThreadC1Ev,__ZN8BBThreadC2Ev
	.align 2
	.globl	__ZN8BBThread9IsRunningEv
	.def	__ZN8BBThread9IsRunningEv;	.scl	2;	.type	32;	.endef
__ZN8BBThread9IsRunningEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$1, %eax
	sete	%al
	leave
	ret
	.align 2
	.globl	__ZN8BBThread6ResultEv
	.def	__ZN8BBThread6ResultEv;	.scl	2;	.type	32;	.endef
__ZN8BBThread6ResultEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	leave
	ret
	.align 2
	.globl	__ZN8BBThread9SetResultEP6Object
	.def	__ZN8BBThread9SetResultEP6Object;	.scl	2;	.type	32;	.endef
__ZN8BBThread9SetResultEP6Object:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 24(%eax)
	leave
	ret	$4
	.align 2
	.globl	__ZN8BBThread6StrdupERK6String
	.def	__ZN8BBThread6StrdupERK6String;	.scl	2;	.type	32;	.endef
__ZN8BBThread6StrdupERK6String:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String4CopyEv
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.align 2
	.globl	__ZN8BBThread13Run__UNSAFE__Ev
	.def	__ZN8BBThread13Run__UNSAFE__Ev;	.scl	2;	.type	32;	.endef
__ZN8BBThread13Run__UNSAFE__Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret
	.section .rdata,"dr"
LC72:
	.ascii "CreateThread failed!\0"
	.text
	.align 2
	.globl	__ZN8BBThread5StartEv
	.def	__ZN8BBThread5StartEv;	.scl	2;	.type	32;	.endef
__ZN8BBThread5StartEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA976, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1351, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$1, %eax
	jne	L1346
	jmp	L1345
L1346:
	movl	-44(%ebp), %eax
	movl	$0, 24(%eax)
	movl	-44(%ebp), %eax
	movl	$1, 20(%eax)
	leal	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$__ZN8BBThread3runEPv@4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	$1, -92(%ebp)
	call	_CreateThread@24
	subl	$24, %esp
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	setne	%al
	testb	%al, %al
	je	L1348
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_CloseHandle@4
	subl	$4, %esp
	jmp	L1345
L1348:
	movl	$LC72, (%esp)
	call	_puts
	movl	$-1, (%esp)
	call	_exit
L1351:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1345:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA976:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE976-LLSDACSB976
LLSDACSB976:
	.uleb128 0
	.uleb128 0
LLSDACSE976:
	.text
	.align 2
	.globl	__ZN8BBThread3runEPv@4
	.def	__ZN8BBThread3runEPv@4;	.scl	2;	.type	32;	.endef
__ZN8BBThread3runEPv@4:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$40, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	movl	-12(%ebp), %eax
	movl	$2, 20(%eax)
	movl	$0, %eax
	leave
	ret	$4
	.section	.text$_ZN12BBDataBuffer11ReadPointerEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZN12BBDataBuffer11ReadPointerEi
	.def	__ZN12BBDataBuffer11ReadPointerEi;	.scl	2;	.type	32;	.endef
__ZN12BBDataBuffer11ReadPointerEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	leave
	ret	$4
	.section	.text$_ZN12BBDataBuffer12WritePointerEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZN12BBDataBuffer12WritePointerEi
	.def	__ZN12BBDataBuffer12WritePointerEi;	.scl	2;	.type	32;	.endef
__ZN12BBDataBuffer12WritePointerEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	leave
	ret	$4
	.section	.text$_ZN12BBDataBuffer6LengthEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN12BBDataBuffer6LengthEv
	.def	__ZN12BBDataBuffer6LengthEv;	.scl	2;	.type	32;	.endef
__ZN12BBDataBuffer6LengthEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	leave
	ret
	.section	.text$_ZN12BBDataBuffer8PokeByteEii,"x"
	.linkonce discard
	.align 2
	.globl	__ZN12BBDataBuffer8PokeByteEii
	.def	__ZN12BBDataBuffer8PokeByteEii;	.scl	2;	.type	32;	.endef
__ZN12BBDataBuffer8PokeByteEii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%al, (%edx)
	leave
	ret	$8
	.section	.text$_ZN12BBDataBuffer8PeekByteEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZN12BBDataBuffer8PeekByteEi
	.def	__ZN12BBDataBuffer8PeekByteEi;	.scl	2;	.type	32;	.endef
__ZN12BBDataBuffer8PeekByteEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	leave
	ret	$4
	.text
	.align 2
	.globl	__ZN12BBDataBufferC2Ev
	.def	__ZN12BBDataBufferC2Ev;	.scl	2;	.type	32;	.endef
__ZN12BBDataBufferC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV12BBDataBuffer+8, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 20(%eax)
	leave
	ret
	.globl	__ZN12BBDataBufferC1Ev
	.def	__ZN12BBDataBufferC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN12BBDataBufferC1Ev,__ZN12BBDataBufferC2Ev
	.align 2
	.globl	__ZN12BBDataBufferD2Ev
	.def	__ZN12BBDataBufferD2Ev;	.scl	2;	.type	32;	.endef
__ZN12BBDataBufferD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV12BBDataBuffer+8, (%eax)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1366
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_free
L1366:
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1365
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1365:
	leave
	ret
	.globl	__ZN12BBDataBufferD1Ev
	.def	__ZN12BBDataBufferD1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN12BBDataBufferD1Ev,__ZN12BBDataBufferD2Ev
	.align 2
	.globl	__ZN12BBDataBufferD0Ev
	.def	__ZN12BBDataBufferD0Ev;	.scl	2;	.type	32;	.endef
__ZN12BBDataBufferD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12BBDataBufferD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	leave
	ret
	.align 2
	.globl	__ZN12BBDataBuffer4_NewEiPv
	.def	__ZN12BBDataBuffer4_NewEiPv;	.scl	2;	.type	32;	.endef
__ZN12BBDataBuffer4_NewEiPv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1372
	movl	$0, %eax
	jmp	L1373
L1372:
	cmpl	$0, 12(%ebp)
	jne	L1374
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 12(%ebp)
L1374:
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	$1, %eax
L1373:
	leave
	ret	$8
	.align 2
	.globl	__ZN12BBDataBuffer5_LoadE6String
	.def	__ZN12BBDataBuffer5_LoadE6String;	.scl	2;	.type	32;	.endef
__ZN12BBDataBuffer5_LoadE6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA997, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1380, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1376
	movl	$0, %eax
	jmp	L1377
L1376:
	call	__ZN6BBGame4GameEv
	movl	%eax, -100(%ebp)
	movl	(%eax), %eax
	addl	$104, %eax
	movl	(%eax), %esi
	movl	%esi, -104(%ebp)
	movl	-44(%ebp), %eax
	leal	20(%eax), %edi
	movl	%edi, -108(%ebp)
	leal	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-108(%ebp), %edi
	movl	%edi, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	movl	-100(%ebp), %ecx
	call	*-104(%ebp)
	subl	$8, %esp
	movl	-44(%ebp), %edx
	movl	%eax, 16(%edx)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1378
	movl	$0, %eax
	jmp	L1377
L1378:
	movl	$1, %eax
L1377:
	movb	%al, -100(%ebp)
	jmp	L1382
L1380:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1382:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA997:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE997-LLSDACSB997
LLSDACSB997:
	.uleb128 0
	.uleb128 0
LLSDACSE997:
	.text
	.align 2
	.globl	__ZN12BBDataBuffer10_LoadAsyncERK6StringP8BBThread
	.def	__ZN12BBDataBuffer10_LoadAsyncERK6StringP8BBThread;	.scl	2;	.type	32;	.endef
__ZN12BBDataBuffer10_LoadAsyncERK6StringP8BBThread:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA998, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L1387, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String4CopyEv
	subl	$4, %esp
	leal	-28(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-44(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN12BBDataBuffer5_LoadE6String
	subl	$4, %esp
	movb	%al, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -100(%ebp)
	je	L1384
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
L1384:
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L1390
L1389:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1386
L1387:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L1388
	subl	$1, %eax
	testl	%eax, %eax
	je	L1389
	subl	$1, %eax
		.word	0x0b0f
L1388:
	movl	%edx, -100(%ebp)
L1386:
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1390:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA998:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE998-LLSDACSB998
LLSDACSB998:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE998:
	.text
	.align 2
	.globl	__ZN12BBDataBuffer7DiscardEv
	.def	__ZN12BBDataBuffer7DiscardEv;	.scl	2;	.type	32;	.endef
__ZN12BBDataBuffer7DiscardEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1392
	jmp	L1391
L1392:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 20(%eax)
L1391:
	leave
	ret
	.section	.text$_ZN8BBStream3EofEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8BBStream3EofEv
	.def	__ZN8BBStream3EofEv;	.scl	2;	.type	32;	.endef
__ZN8BBStream3EofEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret
	.section	.text$_ZN8BBStream5CloseEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8BBStream5CloseEv
	.def	__ZN8BBStream5CloseEv;	.scl	2;	.type	32;	.endef
__ZN8BBStream5CloseEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	leave
	ret
	.section	.text$_ZN8BBStream6LengthEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8BBStream6LengthEv
	.def	__ZN8BBStream6LengthEv;	.scl	2;	.type	32;	.endef
__ZN8BBStream6LengthEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret
	.section	.text$_ZN8BBStream8PositionEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8BBStream8PositionEv
	.def	__ZN8BBStream8PositionEv;	.scl	2;	.type	32;	.endef
__ZN8BBStream8PositionEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret
	.section	.text$_ZN8BBStream4SeekEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8BBStream4SeekEi
	.def	__ZN8BBStream4SeekEi;	.scl	2;	.type	32;	.endef
__ZN8BBStream4SeekEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret	$4
	.section	.text$_ZN8BBStream4ReadEP12BBDataBufferii,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8BBStream4ReadEP12BBDataBufferii
	.def	__ZN8BBStream4ReadEP12BBDataBufferii;	.scl	2;	.type	32;	.endef
__ZN8BBStream4ReadEP12BBDataBufferii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret	$12
	.section	.text$_ZN8BBStream5WriteEP12BBDataBufferii,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8BBStream5WriteEP12BBDataBufferii
	.def	__ZN8BBStream5WriteEP12BBDataBufferii;	.scl	2;	.type	32;	.endef
__ZN8BBStream5WriteEP12BBDataBufferii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$0, %eax
	leave
	ret	$12
	.section	.text$_ZN8BBStreamC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8BBStreamC2Ev
	.def	__ZN8BBStreamC2Ev;	.scl	2;	.type	32;	.endef
__ZN8BBStreamC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV8BBStream+8, (%eax)
	leave
	ret
	.section	.text$_ZN8BBStreamD2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8BBStreamD2Ev
	.def	__ZN8BBStreamD2Ev;	.scl	2;	.type	32;	.endef
__ZN8BBStreamD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV8BBStream+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1408
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1408:
	leave
	ret
	.section	.text$_ZN8BBStreamD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8BBStreamD1Ev
	.def	__ZN8BBStreamD1Ev;	.scl	2;	.type	32;	.endef
__ZN8BBStreamD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV8BBStream+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1411
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1411:
	leave
	ret
	.section	.text$_ZN8BBStreamD0Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN8BBStreamD0Ev
	.def	__ZN8BBStreamD0Ev;	.scl	2;	.type	32;	.endef
__ZN8BBStreamD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8BBStreamD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	leave
	ret
	.text
	.align 2
	.globl	__ZN12BBFileStreamC2Ev
	.def	__ZN12BBFileStreamC2Ev;	.scl	2;	.type	32;	.endef
__ZN12BBFileStreamC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8BBStreamC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV12BBFileStream+8, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 24(%eax)
	leave
	ret
	.globl	__ZN12BBFileStreamC1Ev
	.def	__ZN12BBFileStreamC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN12BBFileStreamC1Ev,__ZN12BBFileStreamC2Ev
	.align 2
	.globl	__ZN12BBFileStreamD2Ev
	.def	__ZN12BBFileStreamD2Ev;	.scl	2;	.type	32;	.endef
__ZN12BBFileStreamD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV12BBFileStream+8, (%eax)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1418
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_fclose
L1418:
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8BBStreamD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1417
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1417:
	leave
	ret
	.globl	__ZN12BBFileStreamD1Ev
	.def	__ZN12BBFileStreamD1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN12BBFileStreamD1Ev,__ZN12BBFileStreamD2Ev
	.align 2
	.globl	__ZN12BBFileStreamD0Ev
	.def	__ZN12BBFileStreamD0Ev;	.scl	2;	.type	32;	.endef
__ZN12BBFileStreamD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12BBFileStreamD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	leave
	ret
	.section .rdata,"dr"
LC73:
	.ascii "r\0"
LC74:
	.ascii "w\0"
LC75:
	.ascii "u\0"
LC76:
	.ascii "rb+\0"
LC77:
	.ascii "wb+\0"
	.text
	.align 2
	.globl	__ZN12BBFileStream4OpenE6StringS0_
	.def	__ZN12BBFileStream4OpenE6StringS0_;	.scl	2;	.type	32;	.endef
__ZN12BBFileStream4OpenE6StringS0_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA1021, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1440, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1424
	movb	$0, -132(%ebp)
	jmp	L1436
L1424:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	leal	-68(%ebp), %eax
	movl	$LC73, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	12(%ebp), %eax
	leal	-68(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -132(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -132(%ebp)
	je	L1426
	leal	-64(%ebp), %eax
	movl	$LC37, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-72(%ebp), %eax
	leal	-64(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L1427
L1426:
	leal	-60(%ebp), %eax
	movl	$LC74, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	12(%ebp), %eax
	leal	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -132(%ebp)
	je	L1428
	leal	-56(%ebp), %eax
	movl	$LC35, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-72(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L1427
L1428:
	leal	-52(%ebp), %eax
	movl	$LC75, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	12(%ebp), %eax
	leal	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -132(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -132(%ebp)
	je	L1429
	leal	-48(%ebp), %eax
	movl	$LC76, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-72(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L1427
L1429:
	movb	$0, -132(%ebp)
	jmp	L1430
L1427:
	call	__ZN6BBGame4GameEv
	movl	%eax, -132(%ebp)
	movl	(%eax), %eax
	addl	$100, %eax
	movl	(%eax), %esi
	movl	%esi, -136(%ebp)
	leal	-44(%ebp), %eax
	leal	-72(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	movl	-132(%ebp), %ecx
	call	*-136(%ebp)
	subl	$8, %esp
	movl	-76(%ebp), %edx
	movl	%eax, 16(%edx)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movb	$0, -132(%ebp)
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1431
	leal	-36(%ebp), %eax
	movl	$LC75, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movb	$1, -132(%ebp)
	movl	12(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	testb	%al, %al
	je	L1431
	movl	$1, %eax
	jmp	L1432
L1431:
	movl	$0, %eax
L1432:
	movb	%al, -136(%ebp)
	cmpb	$0, -132(%ebp)
	je	L1433
	nop
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L1433:
	cmpb	$0, -136(%ebp)
	je	L1434
	call	__ZN6BBGame4GameEv
	movl	%eax, -132(%ebp)
	movl	(%eax), %eax
	addl	$100, %eax
	movl	(%eax), %edi
	movl	%edi, -136(%ebp)
	leal	-32(%ebp), %eax
	movl	$LC77, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -124(%ebp)
	movl	-132(%ebp), %ecx
	call	*-136(%ebp)
	subl	$8, %esp
	movl	-76(%ebp), %edx
	movl	%eax, 16(%edx)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L1434:
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1435
	movb	$0, -132(%ebp)
	jmp	L1430
L1435:
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_ftell
	movl	-76(%ebp), %edx
	movl	%eax, 24(%edx)
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	-76(%ebp), %eax
	movl	$0, 20(%eax)
	movb	$1, -132(%ebp)
L1430:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L1436:
	movzbl	-132(%ebp), %eax
	movb	%al, -132(%ebp)
	jmp	L1443
L1440:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L1441
	subl	$1, %eax
	testl	%eax, %eax
	je	L1442
	subl	$1, %eax
		.word	0x0b0f
L1441:
	movl	%edx, -132(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L1438
L1442:
	movl	%edx, -132(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
L1438:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L1443:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-132(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1021:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1021-LLSDACSB1021
LLSDACSB1021:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1021:
	.text
	.align 2
	.globl	__ZN12BBFileStream5CloseEv
	.def	__ZN12BBFileStream5CloseEv;	.scl	2;	.type	32;	.endef
__ZN12BBFileStream5CloseEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1445
	jmp	L1444
L1445:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 24(%eax)
L1444:
	leave
	ret
	.align 2
	.globl	__ZN12BBFileStream3EofEv
	.def	__ZN12BBFileStream3EofEv;	.scl	2;	.type	32;	.endef
__ZN12BBFileStream3EofEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1448
	movl	$-1, %eax
	jmp	L1449
L1448:
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
L1449:
	leave
	ret
	.align 2
	.globl	__ZN12BBFileStream6LengthEv
	.def	__ZN12BBFileStream6LengthEv;	.scl	2;	.type	32;	.endef
__ZN12BBFileStream6LengthEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	leave
	ret
	.align 2
	.globl	__ZN12BBFileStream8PositionEv
	.def	__ZN12BBFileStream8PositionEv;	.scl	2;	.type	32;	.endef
__ZN12BBFileStream8PositionEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	leave
	ret
	.align 2
	.globl	__ZN12BBFileStream4SeekEi
	.def	__ZN12BBFileStream4SeekEi;	.scl	2;	.type	32;	.endef
__ZN12BBFileStream4SeekEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1455
	movl	$0, %eax
	jmp	L1456
L1455:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_ftell
	movl	-12(%ebp), %edx
	movl	%eax, 20(%edx)
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
L1456:
	leave
	ret	$4
	.align 2
	.globl	__ZN12BBFileStream4ReadEP12BBDataBufferii
	.def	__ZN12BBFileStream4ReadEP12BBDataBufferii;	.scl	2;	.type	32;	.endef
__ZN12BBFileStream4ReadEP12BBDataBufferii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1458
	movl	$0, %eax
	jmp	L1459
L1458:
	movl	-28(%ebp), %eax
	movl	16(%eax), %esi
	movl	16(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN12BBDataBuffer12WritePointerEi
	subl	$4, %esp
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_fread
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	-12(%ebp), %eax
L1459:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret	$12
	.align 2
	.globl	__ZN12BBFileStream5WriteEP12BBDataBufferii
	.def	__ZN12BBFileStream5WriteEP12BBDataBufferii;	.scl	2;	.type	32;	.endef
__ZN12BBFileStream5WriteEP12BBDataBufferii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1461
	movl	$0, %eax
	jmp	L1462
L1461:
	movl	-28(%ebp), %eax
	movl	16(%eax), %esi
	movl	16(%ebp), %ebx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN12BBDataBuffer11ReadPointerEi
	subl	$4, %esp
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_fwrite
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jle	L1463
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 24(%eax)
L1463:
	movl	-12(%ebp), %eax
L1462:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret	$12
	.def	__ZL11setsockaddrP11sockaddr_in6Stringi;	.scl	3;	.type	32;	.endef
__ZL11setsockaddrP11sockaddr_in6Stringi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$1132, %esp
	movl	$___gxx_personality_sj0, -1092(%ebp)
	movl	$LLSDA1031, -1088(%ebp)
	leal	-1084(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1473, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-1116(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	8(%ebp), %eax
	movw	$2, (%eax)
	movl	16(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	movl	$-1, -1112(%ebp)
	call	_htons@4
	subl	$4, %esp
	movl	8(%ebp), %edx
	movw	%ax, 2(%edx)
	movl	$0, (%esp)
	call	_htonl@4
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String6LengthEv
	testl	%eax, %eax
	je	L1465
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String6LengthEv
	cmpl	$1023, %eax
	jg	L1465
	movl	$1, %eax
	jmp	L1466
L1465:
	movl	$0, %eax
L1466:
	testb	%al, %al
	je	L1475
	movl	$0, -28(%ebp)
	jmp	L1468
L1469:
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringixEi
	subl	$4, %esp
	leal	-1060(%ebp), %ecx
	movl	-28(%ebp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
	addl	$1, -28(%ebp)
L1468:
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String6LengthEv
	cmpl	-28(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	L1469
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String6LengthEv
	movb	$0, -1060(%ebp,%eax)
	leal	-1060(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -1112(%ebp)
	call	_gethostbyname@4
	subl	$4, %esp
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	L1470
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_inet_ntoa@4
	subl	$4, %esp
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	L1471
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_inet_addr@4
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
L1471:
L1470:
	jmp	L1475
L1473:
	leal	24(%ebp), %ebp
	movl	-1108(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -1112(%ebp)
	call	__Unwind_SjLj_Resume
L1475:
	leal	-1116(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1031:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1031-LLSDACSB1031
LLSDACSB1031:
	.uleb128 0
	.uleb128 0
LLSDACSE1031:
	.text
	.align 2
	.globl	__ZN8BBSocket11InitSocketsEv
	.def	__ZN8BBSocket11InitSocketsEv;	.scl	2;	.type	32;	.endef
__ZN8BBSocket11InitSocketsEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$492, %esp
	movl	$___gxx_personality_sj0, -452(%ebp)
	movl	$LLSDA1032, -448(%ebp)
	leal	-444(%ebp), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	$L1479, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movzbl	__ZZN8BBSocket11InitSocketsEvE7started, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L1481
	leal	-424(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$257, (%esp)
	movl	$1, -472(%ebp)
	call	_WSAStartup@8
	subl	$8, %esp
	movb	$1, __ZZN8BBSocket11InitSocketsEvE7started
	jmp	L1481
L1479:
	leal	24(%ebp), %ebp
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -472(%ebp)
	call	__Unwind_SjLj_Resume
L1481:
	leal	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1032:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1032-LLSDACSB1032
LLSDACSB1032:
	.uleb128 0
	.uleb128 0
LLSDACSE1032:
	.text
	.align 2
	.globl	__ZN15BBSocketAddressC2Ev
	.def	__ZN15BBSocketAddressC2Ev;	.scl	2;	.type	32;	.endef
__ZN15BBSocketAddressC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	movl	%ecx, -28(%ebp)
	movl	$___gxx_personality_sj0, -56(%ebp)
	movl	$LLSDA1034, -52(%ebp)
	leal	-48(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1484, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-28(%ebp), %eax
	movl	$__ZTV15BBSocketAddress+8, (%eax)
	movl	-28(%ebp), %eax
	movb	$0, 32(%eax)
	movl	-28(%ebp), %eax
	addl	$36, %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	$1, -76(%ebp)
	call	__ZN8BBSocket11InitSocketsEv
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-28(%ebp), %eax
	movw	$2, 16(%eax)
	jmp	L1486
L1484:
	leal	24(%ebp), %ebp
	movl	-72(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-28(%ebp), %eax
	addl	$36, %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-84(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-28(%ebp), %eax
	movl	$0, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -76(%ebp)
	call	__Unwind_SjLj_Resume
L1486:
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1034:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1034-LLSDACSB1034
LLSDACSB1034:
	.uleb128 0
	.uleb128 0
LLSDACSE1034:
	.text
	.globl	__ZN15BBSocketAddressC1Ev
	.def	__ZN15BBSocketAddressC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN15BBSocketAddressC1Ev,__ZN15BBSocketAddressC2Ev
	.align 2
	.globl	__ZN15BBSocketAddress3SetE6Stringi
	.def	__ZN15BBSocketAddress3SetE6Stringi;	.scl	2;	.type	32;	.endef
__ZN15BBSocketAddress3SetE6Stringi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1036, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1489, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-44(%ebp), %eax
	leal	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$1, -92(%ebp)
	call	__ZL11setsockaddrP11sockaddr_in6Stringi
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-44(%ebp), %eax
	movb	$0, 32(%eax)
	jmp	L1491
L1489:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1491:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1036:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1036-LLSDACSB1036
LLSDACSB1036:
	.uleb128 0
	.uleb128 0
LLSDACSE1036:
	.text
	.align 2
	.globl	__ZN15BBSocketAddress3SetEPS_
	.def	__ZN15BBSocketAddress3SetEPS_;	.scl	2;	.type	32;	.endef
__ZN15BBSocketAddress3SetEPS_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	16(%edx), %ecx
	movl	%ecx, 16(%eax)
	movl	20(%edx), %ecx
	movl	%ecx, 20(%eax)
	movl	24(%edx), %ecx
	movl	%ecx, 24(%eax)
	movl	28(%edx), %edx
	movl	%edx, 28(%eax)
	movl	-4(%ebp), %eax
	movb	$0, 32(%eax)
	leave
	ret	$4
	.align 2
	.globl	__ZN15BBSocketAddress3SetERK11sockaddr_in
	.def	__ZN15BBSocketAddress3SetERK11sockaddr_in;	.scl	2;	.type	32;	.endef
__ZN15BBSocketAddress3SetERK11sockaddr_in:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %ecx
	movl	%ecx, 16(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 20(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 24(%eax)
	movl	12(%edx), %edx
	movl	%edx, 28(%eax)
	movl	-4(%ebp), %eax
	movb	$0, 32(%eax)
	leave
	ret	$4
	.section .rdata,"dr"
LC78:
	.ascii ".\0"
	.text
	.align 2
	.globl	__ZN15BBSocketAddress8ValidateEv
	.def	__ZN15BBSocketAddress8ValidateEv;	.scl	2;	.type	32;	.endef
__ZN15BBSocketAddress8ValidateEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	%ecx, -76(%ebp)
	movl	-76(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	je	L1495
	jmp	L1494
L1495:
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	leal	-56(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1Ei
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	$LC78, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	shrl	$16, %eax
	movzbl	%al, %edx
	leal	-40(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1Ei
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	$LC78, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	shrl	$8, %eax
	movzbl	%al, %edx
	leal	-24(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1Ei
	subl	$4, %esp
	leal	-16(%ebp), %eax
	movl	$LC78, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	%al, %edx
	leal	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1Ei
	subl	$4, %esp
	leal	-20(%ebp), %eax
	leal	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-28(%ebp), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-20(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-36(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-44(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-52(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-60(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	movl	-76(%ebp), %eax
	leal	36(%eax), %edx
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-20(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-24(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-76(%ebp), %eax
	movzwl	18(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	_htons@4
	subl	$4, %esp
	movzwl	%ax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, 40(%eax)
	movl	-76(%ebp), %eax
	movb	$1, 32(%eax)
L1494:
	leave
	ret
	.align 2
	.globl	__ZN8BBSocketC2Ev
	.def	__ZN8BBSocketC2Ev;	.scl	2;	.type	32;	.endef
__ZN8BBSocketC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	movl	%ecx, -28(%ebp)
	movl	$___gxx_personality_sj0, -56(%ebp)
	movl	$LLSDA1041, -52(%ebp)
	leal	-48(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1499, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-28(%ebp), %eax
	movl	$__ZTV8BBSocket+8, (%eax)
	movl	-28(%ebp), %eax
	movl	$-1, 16(%eax)
	movl	$1, -76(%ebp)
	call	__ZN8BBSocket11InitSocketsEv
	jmp	L1501
L1499:
	leal	24(%ebp), %ebp
	movl	-72(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-28(%ebp), %eax
	movl	$0, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -76(%ebp)
	call	__Unwind_SjLj_Resume
L1501:
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1041:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1041-LLSDACSB1041
LLSDACSB1041:
	.uleb128 0
	.uleb128 0
LLSDACSE1041:
	.text
	.globl	__ZN8BBSocketC1Ev
	.def	__ZN8BBSocketC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN8BBSocketC1Ev,__ZN8BBSocketC2Ev
	.align 2
	.globl	__ZN8BBSocketC2Ei
	.def	__ZN8BBSocketC2Ei;	.scl	2;	.type	32;	.endef
__ZN8BBSocketC2Ei:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV8BBSocket+8, (%eax)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 16(%eax)
	leave
	ret	$4
	.globl	__ZN8BBSocketC1Ei
	.def	__ZN8BBSocketC1Ei;	.scl	2;	.type	32;	.endef
	.set	__ZN8BBSocketC1Ei,__ZN8BBSocketC2Ei
	.align 2
	.globl	__ZN8BBSocketD2Ev
	.def	__ZN8BBSocketD2Ev;	.scl	2;	.type	32;	.endef
__ZN8BBSocketD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	movl	%ecx, -28(%ebp)
	movl	$___gxx_personality_sj0, -56(%ebp)
	movl	$LLSDA1047, -52(%ebp)
	leal	-48(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1508, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-28(%ebp), %eax
	movl	$__ZTV8BBSocket+8, (%eax)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	js	L1504
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	movl	$1, -76(%ebp)
	call	_closesocket@4
	subl	$4, %esp
L1504:
	movl	-28(%ebp), %eax
	movl	$-1, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1510
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	jmp	L1510
L1508:
	leal	24(%ebp), %ebp
	movl	-72(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-28(%ebp), %eax
	movl	$0, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -76(%ebp)
	call	__Unwind_SjLj_Resume
L1510:
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1047:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1047-LLSDACSB1047
LLSDACSB1047:
	.uleb128 0
	.uleb128 0
LLSDACSE1047:
	.text
	.globl	__ZN8BBSocketD1Ev
	.def	__ZN8BBSocketD1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN8BBSocketD1Ev,__ZN8BBSocketD2Ev
	.align 2
	.globl	__ZN8BBSocketD0Ev
	.def	__ZN8BBSocketD0Ev;	.scl	2;	.type	32;	.endef
__ZN8BBSocketD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8BBSocketD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	leave
	ret
	.align 2
	.globl	__ZN8BBSocket4OpenEi
	.def	__ZN8BBSocket4OpenEi;	.scl	2;	.type	32;	.endef
__ZN8BBSocket4OpenEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1050, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1522, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	js	L1514
	movl	$0, %eax
	jmp	L1515
L1514:
	movl	8(%ebp), %eax
	cmpl	$1, %eax
	jl	L1516
	cmpl	$2, %eax
	jle	L1517
	cmpl	$3, %eax
	je	L1518
	jmp	L1516
L1517:
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	movl	$2, (%esp)
	movl	$-1, -92(%ebp)
	call	_socket@12
	subl	$12, %esp
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	js	L1519
	movl	$1, -28(%ebp)
	movl	$4, %edx
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 16(%esp)
	leal	-28(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	$6, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	_setsockopt@20
	subl	$20, %esp
	jmp	L1516
L1519:
	jmp	L1516
L1518:
	movl	$17, 8(%esp)
	movl	$2, 4(%esp)
	movl	$2, (%esp)
	movl	$-1, -92(%ebp)
	call	_socket@12
	subl	$12, %esp
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
	nop
L1516:
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jns	L1520
	movl	$0, %eax
	jmp	L1515
L1520:
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	$1, %eax
L1515:
	movb	%al, -97(%ebp)
	jmp	L1524
L1522:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1524:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-97(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1050:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1050-LLSDACSB1050
LLSDACSB1050:
	.uleb128 0
	.uleb128 0
LLSDACSE1050:
	.text
	.align 2
	.globl	__ZN8BBSocket5CloseEv
	.def	__ZN8BBSocket5CloseEv;	.scl	2;	.type	32;	.endef
__ZN8BBSocket5CloseEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jns	L1526
	jmp	L1525
L1526:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_closesocket@4
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	$-1, 16(%eax)
L1525:
	leave
	ret
	.align 2
	.globl	__ZN8BBSocket15GetLocalAddressEP15BBSocketAddress
	.def	__ZN8BBSocket15GetLocalAddressEP15BBSocketAddress;	.scl	2;	.type	32;	.endef
__ZN8BBSocket15GetLocalAddressEP15BBSocketAddress:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1052, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1531, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movw	$2, -40(%ebp)
	movl	$16, %eax
	movl	%eax, -44(%ebp)
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	js	L1529
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	leal	-44(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	call	_getsockname@12
	subl	$12, %esp
L1529:
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN15BBSocketAddress3SetERK11sockaddr_in
	subl	$4, %esp
	jmp	L1533
L1531:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1533:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1052:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1052-LLSDACSB1052
LLSDACSB1052:
	.uleb128 0
	.uleb128 0
LLSDACSE1052:
	.text
	.align 2
	.globl	__ZN8BBSocket16GetRemoteAddressEP15BBSocketAddress
	.def	__ZN8BBSocket16GetRemoteAddressEP15BBSocketAddress;	.scl	2;	.type	32;	.endef
__ZN8BBSocket16GetRemoteAddressEP15BBSocketAddress:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1053, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1537, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movw	$2, -40(%ebp)
	movl	$16, %eax
	movl	%eax, -44(%ebp)
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	js	L1535
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	leal	-44(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	call	_getpeername@12
	subl	$12, %esp
L1535:
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN15BBSocketAddress3SetERK11sockaddr_in
	subl	$4, %esp
	jmp	L1539
L1537:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1539:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1053:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1053-LLSDACSB1053
LLSDACSB1053:
	.uleb128 0
	.uleb128 0
LLSDACSE1053:
	.text
	.align 2
	.globl	__ZN8BBSocket4BindE6Stringi
	.def	__ZN8BBSocket4BindE6Stringi;	.scl	2;	.type	32;	.endef
__ZN8BBSocket4BindE6Stringi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1054, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1544, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -108(%ebp)
	call	__ZL11setsockaddrP11sockaddr_in6Stringi
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$16, %edx
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 8(%esp)
	leal	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	call	_bind@12
	subl	$12, %esp
	notl	%eax
	shrl	$31, %eax
	movb	%al, -116(%ebp)
	jmp	L1547
L1546:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	jmp	L1543
L1544:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L1545
	subl	$1, %eax
	testl	%eax, %eax
	je	L1546
	subl	$1, %eax
		.word	0x0b0f
L1545:
	movl	%edx, %eax
L1543:
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1547:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1054:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1054-LLSDACSB1054
LLSDACSB1054:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1054:
	.text
	.align 2
	.globl	__ZN8BBSocket7ConnectE6Stringi
	.def	__ZN8BBSocket7ConnectE6Stringi;	.scl	2;	.type	32;	.endef
__ZN8BBSocket7ConnectE6Stringi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1055, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1552, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -108(%ebp)
	call	__ZL11setsockaddrP11sockaddr_in6Stringi
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$16, %edx
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 8(%esp)
	leal	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	call	_connect@12
	subl	$12, %esp
	notl	%eax
	shrl	$31, %eax
	movb	%al, -116(%ebp)
	jmp	L1555
L1554:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	jmp	L1551
L1552:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L1553
	subl	$1, %eax
	testl	%eax, %eax
	je	L1554
	subl	$1, %eax
		.word	0x0b0f
L1553:
	movl	%edx, %eax
L1551:
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1555:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1055:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1055-LLSDACSB1055
LLSDACSB1055:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1055:
	.text
	.align 2
	.globl	__ZN8BBSocket6ListenEi
	.def	__ZN8BBSocket6ListenEi;	.scl	2;	.type	32;	.endef
__ZN8BBSocket6ListenEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_listen@8
	subl	$8, %esp
	notl	%eax
	shrl	$31, %eax
	leave
	ret	$4
	.align 2
	.globl	__ZN8BBSocket6AcceptEv
	.def	__ZN8BBSocket6AcceptEv;	.scl	2;	.type	32;	.endef
__ZN8BBSocket6AcceptEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_accept@12
	subl	$12, %esp
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	leave
	ret
	.align 2
	.globl	__ZN8BBSocket8AcceptedEv
	.def	__ZN8BBSocket8AcceptedEv;	.scl	2;	.type	32;	.endef
__ZN8BBSocket8AcceptedEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	js	L1561
	movl	$28, (%esp)
	call	__ZN9gc_objectnwEj
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	%ebx, %ecx
	call	__ZN8BBSocketC1Ei
	subl	$4, %esp
	movl	%ebx, %eax
	jmp	L1562
L1561:
	movl	$0, %eax
L1562:
	movl	-4(%ebp), %ebx
	leave
	ret
	.align 2
	.globl	__ZN8BBSocket4SendEP12BBDataBufferii
	.def	__ZN8BBSocket4SendEP12BBDataBufferii;	.scl	2;	.type	32;	.endef
__ZN8BBSocket4SendEP12BBDataBufferii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN12BBDataBuffer11ReadPointerEi
	subl	$4, %esp
	movl	-12(%ebp), %edx
	movl	16(%edx), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_send@16
	subl	$16, %esp
	leave
	ret	$12
	.align 2
	.globl	__ZN8BBSocket7ReceiveEP12BBDataBufferii
	.def	__ZN8BBSocket7ReceiveEP12BBDataBufferii;	.scl	2;	.type	32;	.endef
__ZN8BBSocket7ReceiveEP12BBDataBufferii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN12BBDataBuffer12WritePointerEi
	subl	$4, %esp
	movl	-12(%ebp), %edx
	movl	16(%edx), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_recv@16
	subl	$16, %esp
	leave
	ret	$12
	.align 2
	.globl	__ZN8BBSocket6SendToEP12BBDataBufferiiP15BBSocketAddress
	.def	__ZN8BBSocket6SendToEP12BBDataBufferiiP15BBSocketAddress;	.scl	2;	.type	32;	.endef
__ZN8BBSocket6SendToEP12BBDataBufferiiP15BBSocketAddress:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	%ecx, -12(%ebp)
	movl	$16, %ebx
	movl	20(%ebp), %eax
	leal	16(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN12BBDataBuffer11ReadPointerEi
	subl	$4, %esp
	movl	-12(%ebp), %edx
	movl	16(%edx), %edx
	movl	%ebx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_sendto@24
	subl	$24, %esp
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret	$16
	.align 2
	.globl	__ZN8BBSocket11ReceiveFromEP12BBDataBufferiiP15BBSocketAddress
	.def	__ZN8BBSocket11ReceiveFromEP12BBDataBufferiiP15BBSocketAddress;	.scl	2;	.type	32;	.endef
__ZN8BBSocket11ReceiveFromEP12BBDataBufferiiP15BBSocketAddress:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1062, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1572, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$16, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN12BBDataBuffer12WritePointerEi
	subl	$4, %esp
	movl	-60(%ebp), %edx
	movl	16(%edx), %edx
	leal	-48(%ebp), %ecx
	movl	%ecx, 20(%esp)
	leal	-44(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$1, -108(%ebp)
	call	_recvfrom@24
	subl	$24, %esp
	movl	%eax, -28(%ebp)
	movl	20(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN15BBSocketAddress3SetERK11sockaddr_in
	subl	$4, %esp
	movl	-28(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1574
L1572:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1574:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$16
	.section	.gcc_except_table,"w"
LLSDA1062:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1062-LLSDACSB1062
LLSDACSB1062:
	.uleb128 0
	.uleb128 0
LLSDACSE1062:
	.text
	.section .rdata,"dr"
LC79:
	.ascii "App\0"
	.text
	.globl	__Z8dbg_typePP5c_App
	.def	__Z8dbg_typePP5c_App;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP5c_App:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC79, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC80:
	.ascii "Game_app\0"
	.text
	.globl	__Z8dbg_typePP10c_Game_app
	.def	__Z8dbg_typePP10c_Game_app;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP10c_Game_app:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC80, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC81:
	.ascii "GameDelegate\0"
	.text
	.globl	__Z8dbg_typePP14c_GameDelegate
	.def	__Z8dbg_typePP14c_GameDelegate;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP14c_GameDelegate:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC81, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC82:
	.ascii "Image\0"
	.text
	.globl	__Z8dbg_typePP7c_Image
	.def	__Z8dbg_typePP7c_Image;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP7c_Image:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC82, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC83:
	.ascii "GraphicsContext\0"
	.text
	.globl	__Z8dbg_typePP17c_GraphicsContext
	.def	__Z8dbg_typePP17c_GraphicsContext;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP17c_GraphicsContext:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC83, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC84:
	.ascii "Frame\0"
	.text
	.globl	__Z8dbg_typePP7c_Frame
	.def	__Z8dbg_typePP7c_Frame;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP7c_Frame:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC84, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC85:
	.ascii "InputDevice\0"
	.text
	.globl	__Z8dbg_typePP13c_InputDevice
	.def	__Z8dbg_typePP13c_InputDevice;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP13c_InputDevice:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC85, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC86:
	.ascii "JoyState\0"
	.text
	.globl	__Z8dbg_typePP10c_JoyState
	.def	__Z8dbg_typePP10c_JoyState;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP10c_JoyState:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC86, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC87:
	.ascii "DisplayMode\0"
	.text
	.globl	__Z8dbg_typePP13c_DisplayMode
	.def	__Z8dbg_typePP13c_DisplayMode;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP13c_DisplayMode:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC87, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC88:
	.ascii "Map\0"
	.text
	.globl	__Z8dbg_typePP5c_Map
	.def	__Z8dbg_typePP5c_Map;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP5c_Map:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC88, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC89:
	.ascii "IntMap\0"
	.text
	.globl	__Z8dbg_typePP8c_IntMap
	.def	__Z8dbg_typePP8c_IntMap;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP8c_IntMap:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC89, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC90:
	.ascii "Stack\0"
	.text
	.globl	__Z8dbg_typePP7c_Stack
	.def	__Z8dbg_typePP7c_Stack;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP7c_Stack:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC90, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC91:
	.ascii "Node\0"
	.text
	.globl	__Z8dbg_typePP6c_Node
	.def	__Z8dbg_typePP6c_Node;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP6c_Node:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC91, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC92:
	.ascii "BBGameEvent\0"
	.text
	.globl	__Z8dbg_typePP13c_BBGameEvent
	.def	__Z8dbg_typePP13c_BBGameEvent;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP13c_BBGameEvent:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC92, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC93:
	.ascii "Sound\0"
	.text
	.globl	__Z8dbg_typePP7c_Sound
	.def	__Z8dbg_typePP7c_Sound;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP7c_Sound:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC93, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC94:
	.ascii "CollisionReader\0"
	.text
	.globl	__Z8dbg_typePP17c_CollisionReader
	.def	__Z8dbg_typePP17c_CollisionReader;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP17c_CollisionReader:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC94, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC95:
	.ascii "Stream\0"
	.text
	.globl	__Z8dbg_typePP8c_Stream
	.def	__Z8dbg_typePP8c_Stream;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP8c_Stream:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC95, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC96:
	.ascii "FileStream\0"
	.text
	.globl	__Z8dbg_typePP12c_FileStream
	.def	__Z8dbg_typePP12c_FileStream;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP12c_FileStream:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC96, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC97:
	.ascii "DataBuffer\0"
	.text
	.globl	__Z8dbg_typePP12c_DataBuffer
	.def	__Z8dbg_typePP12c_DataBuffer;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP12c_DataBuffer:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC97, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC98:
	.ascii "StreamError\0"
	.text
	.globl	__Z8dbg_typePP13c_StreamError
	.def	__Z8dbg_typePP13c_StreamError;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP13c_StreamError:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC98, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC99:
	.ascii "StreamReadError\0"
	.text
	.globl	__Z8dbg_typePP17c_StreamReadError
	.def	__Z8dbg_typePP17c_StreamReadError;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP17c_StreamReadError:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC99, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.globl	__Z8dbg_typePP8c_Stack2
	.def	__Z8dbg_typePP8c_Stack2;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP8c_Stack2:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC90, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC100:
	.ascii "Enumerator\0"
	.text
	.globl	__Z8dbg_typePP12c_Enumerator
	.def	__Z8dbg_typePP12c_Enumerator;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP12c_Enumerator:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC100, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC101:
	.ascii "BaseCharacters\0"
	.text
	.globl	__Z8dbg_typePP16c_BaseCharacters
	.def	__Z8dbg_typePP16c_BaseCharacters;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP16c_BaseCharacters:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC101, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC102:
	.ascii "Jennid\0"
	.text
	.globl	__Z8dbg_typePP8c_Jennid
	.def	__Z8dbg_typePP8c_Jennid;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP8c_Jennid:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC102, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC103:
	.ascii "Timer\0"
	.text
	.globl	__Z8dbg_typePP7c_Timer
	.def	__Z8dbg_typePP7c_Timer;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP7c_Timer:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC103, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.globl	__Z7gc_markP6BBGame
	.def	__Z7gc_markP6BBGame;	.scl	2;	.type	32;	.endef
__Z7gc_markP6BBGame:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.section .rdata,"dr"
LC104:
	.ascii "BBGame\0"
	.text
	.globl	__Z8dbg_typePP6BBGame
	.def	__Z8dbg_typePP6BBGame;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP6BBGame:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC104, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.globl	__Z9dbg_valuePP6BBGame
	.def	__Z9dbg_valuePP6BBGame;	.scl	2;	.type	32;	.endef
__Z9dbg_valuePP6BBGame:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13dbg_ptr_valuePv
	movl	8(%ebp), %eax
	leave
	ret
	.align 2
	.globl	__ZN5c_AppC2Ev
	.def	__ZN5c_AppC2Ev;	.scl	2;	.type	32;	.endef
__ZN5c_AppC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV5c_App+8, (%eax)
	leave
	ret
	.globl	__ZN5c_AppC1Ev
	.def	__ZN5c_AppC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN5c_AppC1Ev,__ZN5c_AppC2Ev
	.section	.text$_ZN12dbg_var_typeC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN12dbg_var_typeC2Ev
	.def	__ZN12dbg_var_typeC2Ev;	.scl	2;	.type	32;	.endef
__ZN12dbg_var_typeC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$__ZTV12dbg_var_type+8, (%eax)
	leave
	ret
	.section	.text$_ZN14dbg_var_type_tIP5c_AppEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP5c_AppEC1Ev
	.def	__ZN14dbg_var_type_tIP5c_AppEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP5c_AppEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP5c_AppE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC105:
	.ascii "App.new\0"
LC106:
	.ascii "Self\0"
	.align 4
LC107:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<152>\0"
	.align 4
LC108:
	.ascii "A\0p\0p\0 \0h\0a\0s\0 \0a\0l\0r\0e\0a\0d\0y\0 \0b\0e\0e\0n\0 \0c\0r\0e\0a\0t\0e\0d\0\0\0"
	.align 4
LC109:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<153>\0"
	.align 4
LC110:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<154>\0"
	.align 4
LC111:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<155>\0"
	.text
	.align 2
	.globl	__ZN5c_App5m_newEv
	.def	__ZN5c_App5m_newEv;	.scl	2;	.type	32;	.endef
__ZN5c_App5m_newEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1095, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L1645, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC105, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$LC107, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1636
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1636:
	movl	_bb_app__app, %eax
	testl	%eax, %eax
	je	L1637
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-28(%ebp), %eax
	movl	$28, 4(%esp)
	movl	$LC108, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -108(%ebp)
	call	__Z7bbError6String
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1637:
	movl	$LC109, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1638
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1638:
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_bb_app__app, (%esp)
	call	__Z9gc_assignI5c_AppS0_EvRPT_PT0_
	movl	$LC110, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1639
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1639:
	movl	$28, (%esp)
	movl	$1, -108(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -116(%ebp)
	movl	$3, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN14c_GameDelegateC1Ev
	movl	$1, -108(%ebp)
	movl	-116(%ebp), %ecx
	call	__ZN14c_GameDelegate5m_newEv
	movl	%eax, 4(%esp)
	movl	$_bb_app__delegate, (%esp)
	call	__Z9gc_assignI14c_GameDelegateS0_EvRPT_PT0_
	movl	$LC111, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1640
	call	__Z8dbg_stopv
L1640:
	movl	_bb_app__game, %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	(%eax), %ebx
	movl	_bb_app__delegate, %edx
	movl	_bb_app__game, %eax
	movl	%edx, (%esp)
	movl	$1, -108(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1649
L1647:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1643
L1648:
	movl	%edx, -120(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-120(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1643
L1645:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L1646
	subl	$1, %eax
	testl	%eax, %eax
	je	L1647
	subl	$1, %eax
	testl	%eax, %eax
	je	L1648
	subl	$1, %eax
		.word	0x0b0f
L1646:
	movl	%edx, -116(%ebp)
L1643:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1649:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1095:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1095-LLSDACSB1095
LLSDACSB1095:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1095:
	.text
	.section .rdata,"dr"
LC112:
	.ascii "App.OnResize\0"
	.text
	.align 2
	.globl	__ZN5c_App10p_OnResizeEv
	.def	__ZN5c_App10p_OnResizeEv;	.scl	2;	.type	32;	.endef
__ZN5c_App10p_OnResizeEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$24, %esp
	movl	%ecx, -24(%ebp)
	leal	-16(%ebp), %eax
	movl	$LC112, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$0, %ebx
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC113:
	.ascii "App.OnCreate\0"
	.text
	.align 2
	.globl	__ZN5c_App10p_OnCreateEv
	.def	__ZN5c_App10p_OnCreateEv;	.scl	2;	.type	32;	.endef
__ZN5c_App10p_OnCreateEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$24, %esp
	movl	%ecx, -24(%ebp)
	leal	-16(%ebp), %eax
	movl	$LC113, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$0, %ebx
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC114:
	.ascii "App.OnSuspend\0"
	.text
	.align 2
	.globl	__ZN5c_App11p_OnSuspendEv
	.def	__ZN5c_App11p_OnSuspendEv;	.scl	2;	.type	32;	.endef
__ZN5c_App11p_OnSuspendEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$24, %esp
	movl	%ecx, -24(%ebp)
	leal	-16(%ebp), %eax
	movl	$LC114, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$0, %ebx
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC115:
	.ascii "App.OnResume\0"
	.text
	.align 2
	.globl	__ZN5c_App10p_OnResumeEv
	.def	__ZN5c_App10p_OnResumeEv;	.scl	2;	.type	32;	.endef
__ZN5c_App10p_OnResumeEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$24, %esp
	movl	%ecx, -24(%ebp)
	leal	-16(%ebp), %eax
	movl	$LC115, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$0, %ebx
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC116:
	.ascii "App.OnUpdate\0"
	.text
	.align 2
	.globl	__ZN5c_App10p_OnUpdateEv
	.def	__ZN5c_App10p_OnUpdateEv;	.scl	2;	.type	32;	.endef
__ZN5c_App10p_OnUpdateEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$24, %esp
	movl	%ecx, -24(%ebp)
	leal	-16(%ebp), %eax
	movl	$LC116, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$0, %ebx
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC117:
	.ascii "App.OnLoading\0"
	.text
	.align 2
	.globl	__ZN5c_App11p_OnLoadingEv
	.def	__ZN5c_App11p_OnLoadingEv;	.scl	2;	.type	32;	.endef
__ZN5c_App11p_OnLoadingEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$24, %esp
	movl	%ecx, -24(%ebp)
	leal	-16(%ebp), %eax
	movl	$LC117, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$0, %ebx
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC118:
	.ascii "App.OnRender\0"
	.text
	.align 2
	.globl	__ZN5c_App10p_OnRenderEv
	.def	__ZN5c_App10p_OnRenderEv;	.scl	2;	.type	32;	.endef
__ZN5c_App10p_OnRenderEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$24, %esp
	movl	%ecx, -24(%ebp)
	leal	-16(%ebp), %eax
	movl	$LC118, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$0, %ebx
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC119:
	.ascii "App.OnClose\0"
	.align 4
LC120:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<177>\0"
	.text
	.align 2
	.globl	__ZN5c_App9p_OnCloseEv
	.def	__ZN5c_App9p_OnCloseEv;	.scl	2;	.type	32;	.endef
__ZN5c_App9p_OnCloseEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1109, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1668, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC119, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$LC120, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1665
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L1665:
	movl	$1, -92(%ebp)
	call	__Z13bb_app_EndAppv
	movl	$0, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1670
L1668:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1670:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1109:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1109-LLSDACSB1109
LLSDACSB1109:
	.uleb128 0
	.uleb128 0
LLSDACSE1109:
	.text
	.section .rdata,"dr"
LC121:
	.ascii "App.OnBack\0"
	.align 4
LC122:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<181>\0"
	.text
	.align 2
	.globl	__ZN5c_App8p_OnBackEv
	.def	__ZN5c_App8p_OnBackEv;	.scl	2;	.type	32;	.endef
__ZN5c_App8p_OnBackEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1110, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1675, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC121, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$LC122, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1672
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L1672:
	movl	-44(%ebp), %eax
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_App9p_OnCloseEv
	movl	$0, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1677
L1675:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1677:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1110:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1110-LLSDACSB1110
LLSDACSB1110:
	.uleb128 0
	.uleb128 0
LLSDACSE1110:
	.text
	.align 2
	.globl	__ZN5c_App4markEv
	.def	__ZN5c_App4markEv;	.scl	2;	.type	32;	.endef
__ZN5c_App4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_object4markEv
	leave
	ret
	.section .rdata,"dr"
LC123:
	.ascii "(App)\12\0"
	.text
	.align 2
	.globl	__ZN5c_App5debugEv
	.def	__ZN5c_App5debugEv;	.scl	2;	.type	32;	.endef
__ZN5c_App5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$LC123, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	nop
	movl	-12(%ebp), %eax
	leave
	ret	$4
	.section	.text$_ZN5c_AppD2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN5c_AppD2Ev
	.def	__ZN5c_AppD2Ev;	.scl	2;	.type	32;	.endef
__ZN5c_AppD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV5c_App+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1681
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1681:
	leave
	ret
	.section	.text$_ZN5c_AppD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN5c_AppD1Ev
	.def	__ZN5c_AppD1Ev;	.scl	2;	.type	32;	.endef
__ZN5c_AppD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV5c_App+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1684
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1684:
	leave
	ret
	.section	.text$_ZN5c_AppD0Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN5c_AppD0Ev
	.def	__ZN5c_AppD0Ev;	.scl	2;	.type	32;	.endef
__ZN5c_AppD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5c_AppD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	leave
	ret
	.text
	.align 2
	.globl	__ZN10c_Game_appC2Ev
	.def	__ZN10c_Game_appC2Ev;	.scl	2;	.type	32;	.endef
__ZN10c_Game_appC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA1118, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1691, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5c_AppC2Ev
	movl	-76(%ebp), %eax
	movl	$__ZTV10c_Game_app+8, (%eax)
	movl	-76(%ebp), %eax
	addl	$40, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiEC1Ev
	movl	-76(%ebp), %eax
	addl	$60, %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	addl	$64, %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	addl	$68, %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	addl	$76, %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	addl	$80, %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	addl	$84, %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 24(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 28(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 32(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 36(%eax)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	leal	-52(%ebp), %eax
	movl	$3, 4(%esp)
	leal	-64(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiEC1EPKii
	subl	$8, %esp
	movl	-76(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, 40(%eax)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-76(%ebp), %eax
	movl	$0, 44(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 48(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 52(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 56(%eax)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	leal	60(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	leal	64(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	leal	68(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-76(%ebp), %eax
	movl	$0, 72(%eax)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	leal	76(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	leal	80(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	leal	84(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-76(%ebp), %eax
	movl	$0, 88(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 92(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 96(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 100(%eax)
	movl	-76(%ebp), %eax
	movb	$0, 104(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 108(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 112(%eax)
	jmp	L1693
L1691:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-76(%ebp), %eax
	addl	$84, %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-76(%ebp), %eax
	addl	$80, %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-76(%ebp), %eax
	addl	$76, %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-76(%ebp), %eax
	addl	$68, %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-76(%ebp), %eax
	addl	$64, %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-76(%ebp), %eax
	addl	$60, %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-76(%ebp), %eax
	addl	$40, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-76(%ebp), %eax
	movl	$0, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_AppD2Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L1693:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1118:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1118-LLSDACSB1118
LLSDACSB1118:
	.uleb128 0
	.uleb128 0
LLSDACSE1118:
	.text
	.globl	__ZN10c_Game_appC1Ev
	.def	__ZN10c_Game_appC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN10c_Game_appC1Ev,__ZN10c_Game_appC2Ev
	.section	.text$_ZN14dbg_var_type_tIP10c_Game_appEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP10c_Game_appEC1Ev
	.def	__ZN14dbg_var_type_tIP10c_Game_appEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP10c_Game_appEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP10c_Game_appE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC124:
	.ascii "Game_app.new\0"
	.align 4
LC125:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<21>\0"
	.text
	.align 2
	.globl	__ZN10c_Game_app5m_newEv
	.def	__ZN10c_Game_app5m_newEv;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app5m_newEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1120, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1699, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC124, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	$LC125, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1696
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L1696:
	movl	-44(%ebp), %eax
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_App5m_newEv
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1701
L1699:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1701:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1120:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1120-LLSDACSB1120
LLSDACSB1120:
	.uleb128 0
	.uleb128 0
LLSDACSE1120:
	.text
	.section	.text$_ZN14dbg_var_type_tI6StringEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tI6StringEC1Ev
	.def	__ZN14dbg_var_type_tI6StringEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tI6StringEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tI6StringE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC126:
	.ascii "Game_app.FlushVariables\0"
LC127:
	.ascii "What\0"
	.align 4
LC128:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<402>\0"
LC129:
	.ascii "5\0"
	.align 4
LC130:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<405>\0"
	.align 2
LC131:
	.ascii "A\0l\0l\0\0\0"
	.align 4
LC132:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<407>\0"
	.align 4
LC133:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<408>\0"
	.align 4
LC134:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<409>\0"
	.align 4
LC135:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<410>\0"
	.align 4
LC136:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<411>\0"
	.align 4
LC137:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<412>\0"
	.align 4
LC138:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<413>\0"
	.align 4
LC139:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<414>\0"
	.align 4
LC140:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<415>\0"
	.align 4
LC141:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<417>\0"
	.align 4
LC142:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<418>\0"
	.align 4
LC143:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<419>\0"
	.align 4
LC144:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<421>\0"
	.align 4
LC145:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<422>\0"
	.align 4
LC146:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<423>\0"
	.align 4
LC147:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<424>\0"
	.align 4
LC148:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<428>\0"
	.align 2
LC149:
	.ascii "M\0e\0n\0u\0\0\0"
	.align 4
LC150:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<430>\0"
	.align 4
LC151:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<431>\0"
	.align 4
LC152:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<432>\0"
	.text
	.align 2
	.globl	__ZN10c_Game_app16p_FlushVariablesE6String
	.def	__ZN10c_Game_app16p_FlushVariablesE6String;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app16p_FlushVariablesE6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	movl	%ecx, -92(%ebp)
	movl	$___gxx_personality_sj0, -120(%ebp)
	movl	$LLSDA1124, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1734, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-56(%ebp), %eax
	movl	$LC126, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-92(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-60(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC127, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC128, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1704
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L1704:
	leal	-64(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-64(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC129, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC130, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1705
	movl	$2, -140(%ebp)
	call	__Z8dbg_stopv
L1705:
	leal	-44(%ebp), %eax
	movl	$3, 4(%esp)
	movl	$LC131, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-64(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -148(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -148(%ebp)
	je	L1706
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC132, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1707
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1707:
	movl	-92(%ebp), %eax
	movl	$0, 16(%eax)
	movl	$LC133, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1708
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1708:
	movl	-92(%ebp), %eax
	movl	$0, 20(%eax)
	movl	$LC134, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1709
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1709:
	movl	-92(%ebp), %eax
	movl	$0, 24(%eax)
	movl	$LC135, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1710
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1710:
	movl	-92(%ebp), %eax
	movl	$0, 28(%eax)
	movl	$LC136, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1711
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1711:
	movl	-92(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$LC137, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1712
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1712:
	movl	-92(%ebp), %eax
	movl	$0, 36(%eax)
	movl	$LC138, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1713
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1713:
	movl	-92(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$3, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC139, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1714
	call	__Z8dbg_stopv
L1714:
	movl	-92(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$3, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC140, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1715
	call	__Z8dbg_stopv
L1715:
	movl	-92(%ebp), %eax
	addl	$40, %eax
	movl	$2, (%esp)
	movl	$3, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC141, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1716
	call	__Z8dbg_stopv
L1716:
	movl	-92(%ebp), %eax
	movl	$0, 44(%eax)
	movl	$LC142, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1717
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1717:
	movl	-92(%ebp), %eax
	movl	$0, 48(%eax)
	movl	$LC143, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1718
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1718:
	movl	-92(%ebp), %eax
	movl	$0, 52(%eax)
	movl	$LC144, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1719
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1719:
	movl	-92(%ebp), %eax
	movl	$0, 56(%eax)
	movl	$LC145, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1720
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1720:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-92(%ebp), %eax
	leal	60(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC146, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1721
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1721:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-92(%ebp), %eax
	leal	64(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC147, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1722
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1722:
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-92(%ebp), %eax
	leal	68(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1723
L1706:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC148, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1724
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L1724:
	leal	-28(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC149, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-64(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -148(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -148(%ebp)
	je	L1725
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC150, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1726
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L1726:
	movl	-92(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$5, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC151, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1727
	call	__Z8dbg_stopv
L1727:
	movl	-92(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$5, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC152, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1728
	call	__Z8dbg_stopv
L1728:
	movl	-92(%ebp), %eax
	addl	$40, %eax
	movl	$2, (%esp)
	movl	$5, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1725:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1723:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L1740
L1737:
	movl	%edx, -148(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L1730
L1739:
	movl	%edx, -148(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L1732
L1738:
	movl	%edx, -148(%ebp)
L1732:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L1730
L1736:
	movl	%edx, -148(%ebp)
L1730:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L1733
L1734:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %edx
	movl	-140(%ebp), %eax
	testl	%eax, %eax
	je	L1735
	subl	$1, %eax
	testl	%eax, %eax
	je	L1736
	subl	$1, %eax
	testl	%eax, %eax
	je	L1737
	subl	$1, %eax
	testl	%eax, %eax
	je	L1738
	subl	$1, %eax
	testl	%eax, %eax
	je	L1739
	subl	$1, %eax
		.word	0x0b0f
L1735:
	movl	%edx, -148(%ebp)
L1733:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L1740:
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1124:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1124-LLSDACSB1124
LLSDACSB1124:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
LLSDACSE1124:
	.text
	.section .rdata,"dr"
LC153:
	.ascii "Game_app.OnCreate\0"
	.align 4
LC154:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<87>\0"
	.align 4
LC155:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<90>\0"
	.align 2
LC156:
	.ascii "L\0o\0a\0d\0i\0n\0g\0.\0p\0n\0g\0\0\0"
	.align 4
LC157:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<94>\0"
	.align 2
LC158:
	.ascii "M\0a\0i\0n\0M\0e\0n\0u\0\0\0"
	.align 4
LC159:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<95>\0"
	.align 2
LC160:
	.ascii "L\0o\0a\0d\0i\0n\0g\0\0\0"
	.text
	.align 2
	.globl	__ZN10c_Game_app10p_OnCreateEv
	.def	__ZN10c_Game_app10p_OnCreateEv;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app10p_OnCreateEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1128, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1750, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-52(%ebp), %eax
	movl	$LC153, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-56(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	$LC154, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1742
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1742:
	leal	-40(%ebp), %eax
	movl	$3, 4(%esp)
	movl	$LC131, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-60(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app16p_FlushVariablesE6String
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC155, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1743
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1743:
	movl	__ZN7c_Image14m_DefaultFlagsE, %eax
	movl	%eax, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	$11, 4(%esp)
	movl	$LC156, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	$3, -108(%ebp)
	call	__Z21bb_graphics_LoadImage6Stringii
	movl	-60(%ebp), %edx
	addl	$72, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC157, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1744
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1744:
	leal	-32(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC158, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-60(%ebp), %eax
	leal	76(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC159, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1745
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1745:
	leal	-28(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC160, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-60(%ebp), %eax
	leal	80(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$0, -116(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1754
L1752:
	movl	%edx, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1748
L1753:
	movl	%edx, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1748
L1750:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L1751
	subl	$1, %eax
	testl	%eax, %eax
	je	L1752
	subl	$1, %eax
	testl	%eax, %eax
	je	L1753
	subl	$1, %eax
		.word	0x0b0f
L1751:
	movl	%edx, -116(%ebp)
L1748:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1754:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1128:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1128-LLSDACSB1128
LLSDACSB1128:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1128:
	.text
	.globl	__ZN10c_Game_app9m_MapGridE
	.bss
	.align 4
__ZN10c_Game_app9m_MapGridE:
	.space 4
	.globl	__ZN10c_Game_app13m_BAttackGridE
	.align 4
__ZN10c_Game_app13m_BAttackGridE:
	.space 4
	.globl	__ZN10c_Game_app13m_SAttackGridE
	.align 4
__ZN10c_Game_app13m_SAttackGridE:
	.space 4
	.section	.text$_ZN14dbg_var_type_tIiEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIiEC1Ev
	.def	__ZN14dbg_var_type_tIiEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIiEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIiE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC161:
	.ascii "Game_app.LoadFiles\0"
LC162:
	.ascii "Where\0"
	.align 4
LC163:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<307>\0"
LC164:
	.ascii "4\0"
	.align 4
LC165:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<309>\0"
	.align 4
LC166:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<311>\0"
	.align 4
LC167:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<313>\0"
	.align 2
LC168:
	.ascii "O\0p\0e\0n\0i\0n\0g\0.\0p\0n\0g\0\0\0"
	.align 4
LC169:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<315>\0"
	.align 4
LC170:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<316>\0"
	.align 4
LC171:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<317>\0"
	.align 4
LC172:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<318>\0"
	.align 4
LC173:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<320>\0"
	.align 4
LC174:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<321>\0"
	.align 4
LC175:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<322>\0"
	.align 4
LC176:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<324>\0"
	.align 2
LC177:
	.ascii "W\0e\0l\0c\0o\0m\0e\0.\0w\0a\0v\0\0\0"
	.align 4
LC178:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<325>\0"
	.align 2
LC179:
	.ascii "N\0b\0i\0d\0i\0a\0.\0w\0a\0v\0\0\0"
	.align 4
LC180:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<329>\0"
	.align 2
LC181:
	.ascii "G\0a\0m\0e\0\0\0"
	.align 4
LC182:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<332>\0"
	.align 4
LC183:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<336>\0"
LC184:
	.ascii "i\0"
	.align 4
LC185:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<337>\0"
	.align 4
LC186:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<340>\0"
	.align 4
LC187:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<341>\0"
	.align 4
LC188:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<345>\0"
	.align 4
LC189:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<346>\0"
	.align 4
LC190:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<350>\0"
	.align 4
LC191:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<351>\0"
	.align 2
LC192:
	.ascii "A\0r\0e\0n\0a\0.\0p\0n\0g\0\0\0"
	.align 4
LC193:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<356>\0"
	.align 4
LC194:
	.ascii "m\0o\0n\0k\0e\0y\0:\0/\0/\0d\0a\0t\0a\0/\0M\0a\0p\0"
	.ascii "1\0.\0t\0x\0t\0\0\0"
	.align 4
LC195:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<357>\0"
	.align 4
LC196:
	.ascii "m\0o\0n\0k\0e\0y\0:\0/\0/\0d\0a\0t\0a\0/\0M\0a\0p\0"
	.ascii "2\0.\0t\0x\0t\0\0\0"
	.align 4
LC197:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<358>\0"
	.align 4
LC198:
	.ascii "m\0o\0n\0k\0e\0y\0:\0/\0/\0d\0a\0t\0a\0/\0M\0a\0p\0"
	.ascii "3\0.\0t\0x\0t\0\0\0"
	.align 4
LC199:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<360>\0"
	.align 4
LC200:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<362>\0"
	.align 4
LC201:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<363>\0"
	.align 4
LC202:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<367>\0"
	.align 4
LC203:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<368>\0"
	.align 4
LC204:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<373>\0"
	.align 4
LC205:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<374>\0"
	.align 4
LC206:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<375>\0"
	.align 4
LC207:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<376>\0"
	.align 4
LC208:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<377>\0"
	.align 4
LC209:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<378>\0"
	.align 4
LC210:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<380>\0"
	.align 4
LC211:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<381>\0"
	.align 4
LC212:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<382>\0"
	.align 4
LC213:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<383>\0"
	.align 4
LC214:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<384>\0"
	.align 4
LC215:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<389>\0"
	.text
	.align 2
	.globl	__ZN10c_Game_app11p_LoadFilesE6String
	.def	__ZN10c_Game_app11p_LoadFilesE6String;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app11p_LoadFilesE6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$236, %esp
	movl	%ecx, -156(%ebp)
	movl	$___gxx_personality_sj0, -184(%ebp)
	movl	$LLSDA1129, -180(%ebp)
	leal	-176(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1828, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-100(%ebp), %eax
	movl	$LC161, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-156(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-104(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC162, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC163, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1757
	movl	$1, -204(%ebp)
	call	__Z8dbg_stopv
L1757:
	leal	-108(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-108(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC164, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC165, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1758
	movl	$2, -204(%ebp)
	call	__Z8dbg_stopv
L1758:
	leal	-88(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC158, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-108(%ebp), %eax
	leal	-88(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -224(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -224(%ebp)
	je	L1759
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC166, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1760
	movl	$3, -204(%ebp)
	call	__Z8dbg_stopv
L1760:
	movl	$60, (%esp)
	movl	$3, -204(%ebp)
	call	__Z20bb_app_SetUpdateRatei
	movl	$LC167, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1761
	call	__Z8dbg_stopv
L1761:
	movl	__ZN7c_Image14m_DefaultFlagsE, %eax
	movl	%eax, -224(%ebp)
	leal	-84(%ebp), %eax
	movl	$11, 4(%esp)
	movl	$LC168, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-224(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-84(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, -204(%ebp)
	call	__Z21bb_graphics_LoadImage6Stringii
	movl	-156(%ebp), %edx
	addl	$44, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC169, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1762
	movl	$3, -204(%ebp)
	call	__Z8dbg_stopv
L1762:
	movl	__ZN7c_Image14m_DefaultFlagsE, %edx
	movl	-156(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 20(%esp)
	movl	$9, 16(%esp)
	movl	$720, 12(%esp)
	movl	$1280, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	$3, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image11p_GrabImageEiiiiii
	subl	$24, %esp
	movl	-156(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC170, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1763
	call	__Z8dbg_stopv
L1763:
	movl	__ZN7c_Image14m_DefaultFlagsE, %edx
	movl	-156(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 20(%esp)
	movl	$9, 16(%esp)
	movl	$720, 12(%esp)
	movl	$1280, 8(%esp)
	movl	$720, 4(%esp)
	movl	$0, (%esp)
	movl	$3, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image11p_GrabImageEiiiiii
	subl	$24, %esp
	movl	-156(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC171, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1764
	call	__Z8dbg_stopv
L1764:
	movl	__ZN7c_Image14m_DefaultFlagsE, %edx
	movl	-156(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 20(%esp)
	movl	$9, 16(%esp)
	movl	$720, 12(%esp)
	movl	$1280, 8(%esp)
	movl	$1440, 4(%esp)
	movl	$0, (%esp)
	movl	$3, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image11p_GrabImageEiiiiii
	subl	$24, %esp
	movl	-156(%ebp), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC172, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1765
	call	__Z8dbg_stopv
L1765:
	movl	__ZN7c_Image14m_DefaultFlagsE, %edx
	movl	-156(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 20(%esp)
	movl	$9, 16(%esp)
	movl	$720, 12(%esp)
	movl	$1280, 8(%esp)
	movl	$2160, 4(%esp)
	movl	$0, (%esp)
	movl	$3, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image11p_GrabImageEiiiiii
	subl	$24, %esp
	movl	-156(%ebp), %edx
	addl	$28, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC173, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1766
	call	__Z8dbg_stopv
L1766:
	leal	-80(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC158, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-156(%ebp), %eax
	leal	80(%eax), %edx
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC174, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1767
	movl	$3, -204(%ebp)
	call	__Z8dbg_stopv
L1767:
	movl	-156(%ebp), %eax
	movl	16(%eax), %eax
	movl	-156(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC175, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1768
	movl	$3, -204(%ebp)
	call	__Z8dbg_stopv
L1768:
	movl	-156(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$LC176, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1769
	movl	$3, -204(%ebp)
	call	__Z8dbg_stopv
L1769:
	leal	-76(%ebp), %eax
	movl	$11, 4(%esp)
	movl	$LC177, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	movl	$5, -204(%ebp)
	call	__Z18bb_audio_LoadSound6String
	movl	-156(%ebp), %edx
	addl	$48, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_SoundS0_EvRPT_PT0_
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC178, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1770
	movl	$3, -204(%ebp)
	call	__Z8dbg_stopv
L1770:
	leal	-72(%ebp), %eax
	movl	$10, 4(%esp)
	movl	$LC179, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	movl	$6, -204(%ebp)
	call	__Z18bb_audio_LoadSound6String
	movl	-156(%ebp), %edx
	addl	$52, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_SoundS0_EvRPT_PT0_
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1771
L1759:
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC180, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1772
	movl	$7, -204(%ebp)
	call	__Z8dbg_stopv
L1772:
	leal	-68(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC181, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-108(%ebp), %eax
	leal	-68(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -224(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -224(%ebp)
	je	L1773
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC182, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1774
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1774:
	movl	$60, (%esp)
	movl	$8, -204(%ebp)
	call	__Z20bb_app_SetUpdateRatei
	movl	$LC183, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1775
	call	__Z8dbg_stopv
L1775:
	movl	$0, -124(%ebp)
	jmp	L1776
L1778:
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-124(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC185, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1777
	movl	$9, -204(%ebp)
	call	__Z8dbg_stopv
L1777:
	leal	-64(%ebp), %eax
	movl	$19, (%esp)
	movl	$9, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringEC1Ei
	subl	$4, %esp
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	movl	$10, -204(%ebp)
	movl	$__ZN10c_Game_app9m_MapGridE, %ecx
	call	__ZN5ArrayIS_I6StringEE2AtEi
	subl	$4, %esp
	leal	-64(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z9gc_assignI6StringEvR5ArrayIT_ES3_
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-124(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -124(%ebp)
L1776:
	movl	-124(%ebp), %eax
	cmpl	$32, %eax
	jle	L1778
	movl	$LC186, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1779
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1779:
	movl	$0, -132(%ebp)
	jmp	L1780
L1782:
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-132(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC187, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1781
	movl	$11, -204(%ebp)
	call	__Z8dbg_stopv
L1781:
	leal	-60(%ebp), %eax
	movl	$3, (%esp)
	movl	$11, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringEC1Ei
	subl	$4, %esp
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$12, -204(%ebp)
	movl	$__ZN10c_Game_app13m_BAttackGridE, %ecx
	call	__ZN5ArrayIS_I6StringEE2AtEi
	subl	$4, %esp
	leal	-60(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z9gc_assignI6StringEvR5ArrayIT_ES3_
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -132(%ebp)
L1780:
	movl	-132(%ebp), %eax
	cmpl	$2, %eax
	jle	L1782
	movl	$LC188, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1783
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1783:
	movl	$0, -140(%ebp)
	jmp	L1784
L1786:
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-140(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC189, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1785
	movl	$13, -204(%ebp)
	call	__Z8dbg_stopv
L1785:
	leal	-56(%ebp), %eax
	movl	$3, (%esp)
	movl	$13, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringEC1Ei
	subl	$4, %esp
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	movl	$14, -204(%ebp)
	movl	$__ZN10c_Game_app13m_SAttackGridE, %ecx
	call	__ZN5ArrayIS_I6StringEE2AtEi
	subl	$4, %esp
	leal	-56(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z9gc_assignI6StringEvR5ArrayIT_ES3_
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-140(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -140(%ebp)
L1784:
	movl	-140(%ebp), %eax
	cmpl	$2, %eax
	jle	L1786
	movl	$LC190, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1787
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1787:
	movl	-156(%ebp), %eax
	movl	$0, 44(%eax)
	movl	$LC191, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1788
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1788:
	movl	__ZN7c_Image14m_DefaultFlagsE, %eax
	movl	%eax, -224(%ebp)
	leal	-52(%ebp), %eax
	movl	$9, 4(%esp)
	movl	$LC192, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-224(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	$15, -204(%ebp)
	call	__Z21bb_graphics_LoadImage6Stringii
	movl	-156(%ebp), %edx
	addl	$56, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC193, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1789
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1789:
	leal	-48(%ebp), %eax
	movl	$22, 4(%esp)
	movl	$LC194, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-156(%ebp), %eax
	leal	60(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC195, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1790
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1790:
	leal	-44(%ebp), %eax
	movl	$22, 4(%esp)
	movl	$LC196, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-156(%ebp), %eax
	leal	64(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC197, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1791
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1791:
	leal	-40(%ebp), %eax
	movl	$22, 4(%esp)
	movl	$LC198, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-156(%ebp), %eax
	leal	68(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC199, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1792
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1792:
	movl	-156(%ebp), %eax
	leal	60(%eax), %edx
	movl	-156(%ebp), %eax
	addl	$84, %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	movl	$LC200, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1793
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1793:
	movl	$28, (%esp)
	movl	$8, -204(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -212(%ebp)
	movl	$16, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN17c_CollisionReaderC1Ev
	movl	$8, -204(%ebp)
	movl	-212(%ebp), %ecx
	call	__ZN17c_CollisionReader5m_newEv
	movl	-156(%ebp), %edx
	addl	$88, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI17c_CollisionReaderS0_EvRPT_PT0_
	movl	$LC201, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1794
	call	__Z8dbg_stopv
L1794:
	movl	__ZN10c_Game_app9m_MapGridE, %eax
	movl	%eax, -36(%ebp)
	movl	-156(%ebp), %eax
	leal	84(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-156(%ebp), %eax
	movl	88(%eax), %eax
	movl	$18, 12(%esp)
	movl	$32, 8(%esp)
	leal	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$17, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN17c_CollisionReader6p_LoadE6String5ArrayIS1_IS0_EEii
	subl	$16, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIS_I6StringEED1Ev
	movl	$LC202, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1795
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1795:
	movl	$144, (%esp)
	movl	$8, -204(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -216(%ebp)
	movl	$18, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN8c_JennidC1Ev
	movl	$8, -204(%ebp)
	movl	-216(%ebp), %ecx
	call	__ZN8c_Jennid5m_newEv
	movl	-156(%ebp), %edx
	addl	$92, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI8c_JennidS0_EvRPT_PT0_
	movl	$LC203, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1796
	call	__Z8dbg_stopv
L1796:
	movl	$144, (%esp)
	movl	$8, -204(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -220(%ebp)
	movl	$19, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN8c_JennidC1Ev
	movl	$8, -204(%ebp)
	movl	-220(%ebp), %ecx
	call	__ZN8c_Jennid5m_newEv
	movl	-156(%ebp), %edx
	addl	$96, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI8c_JennidS0_EvRPT_PT0_
	movl	$LC204, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1797
	call	__Z8dbg_stopv
L1797:
	movl	-156(%ebp), %eax
	movl	92(%eax), %eax
	movl	$65, 64(%eax)
	movl	$LC205, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1798
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1798:
	movl	-156(%ebp), %eax
	movl	92(%eax), %eax
	movl	$68, 68(%eax)
	movl	$LC206, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1799
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1799:
	movl	-156(%ebp), %eax
	movl	92(%eax), %eax
	movl	$87, 72(%eax)
	movl	$LC207, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1800
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1800:
	movl	-156(%ebp), %eax
	movl	92(%eax), %eax
	movl	$83, 76(%eax)
	movl	$LC208, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1801
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1801:
	movl	-156(%ebp), %eax
	movl	92(%eax), %eax
	movl	$32, 80(%eax)
	movl	$LC209, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1802
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1802:
	movl	-156(%ebp), %eax
	movl	92(%eax), %eax
	movl	$85, 84(%eax)
	movl	$LC210, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1803
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1803:
	movl	-156(%ebp), %eax
	movl	96(%eax), %eax
	movl	$37, 64(%eax)
	movl	$LC211, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1804
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1804:
	movl	-156(%ebp), %eax
	movl	96(%eax), %eax
	movl	$39, 68(%eax)
	movl	$LC212, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1805
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1805:
	movl	-156(%ebp), %eax
	movl	96(%eax), %eax
	movl	$38, 72(%eax)
	movl	$LC213, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1806
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1806:
	movl	-156(%ebp), %eax
	movl	96(%eax), %eax
	movl	$40, 76(%eax)
	movl	$LC214, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1807
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1807:
	movl	-156(%ebp), %eax
	movl	96(%eax), %eax
	movl	$16, 80(%eax)
	movl	$LC215, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1808
	movl	$8, -204(%ebp)
	call	__Z8dbg_stopv
L1808:
	leal	-28(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC181, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-156(%ebp), %eax
	leal	80(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1773:
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1771:
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L1850
L1832:
	movl	%eax, -212(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1810
L1833:
	movl	%eax, -212(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1810
L1834:
	movl	%eax, -212(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1810
L1831:
	movl	%eax, -212(%ebp)
L1810:
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1813
L1838:
	movl	%eax, -212(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1815
L1837:
	movl	%eax, -212(%ebp)
L1815:
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1816
L1840:
	movl	%eax, -212(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1818
L1839:
	movl	%eax, -212(%ebp)
L1818:
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1816
L1842:
	movl	%eax, -212(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1820
L1841:
	movl	%eax, -212(%ebp)
L1820:
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1816
L1843:
	movl	%eax, -212(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1816
L1844:
	movl	%eax, -216(%ebp)
	movl	-212(%ebp), %esi
	movl	%esi, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-216(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1816
L1845:
	movl	%eax, -212(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIS_I6StringEED1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1816
L1846:
	movl	%eax, -212(%ebp)
	movl	-216(%ebp), %edi
	movl	%edi, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1816
L1847:
	movl	%eax, -212(%ebp)
	movl	-220(%ebp), %ebx
	movl	%ebx, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1816
L1836:
	movl	%eax, -212(%ebp)
L1816:
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1826
L1835:
	movl	%eax, -212(%ebp)
L1826:
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1813
L1830:
	movl	%eax, -212(%ebp)
L1813:
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L1827
L1828:
	leal	24(%ebp), %ebp
	movl	-200(%ebp), %eax
	cmpl	$18, -204(%ebp)
	ja	L1848
	movl	-204(%ebp), %edx
	sall	$2, %edx
	addl	$L1849, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L1849:
	.long	L1829
	.long	L1830
	.long	L1831
	.long	L1832
	.long	L1833
	.long	L1834
	.long	L1835
	.long	L1836
	.long	L1837
	.long	L1838
	.long	L1839
	.long	L1840
	.long	L1841
	.long	L1842
	.long	L1843
	.long	L1844
	.long	L1845
	.long	L1846
	.long	L1847
	.text
L1848:
		.word	0x0b0f
L1829:
	movl	%eax, -212(%ebp)
L1827:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -204(%ebp)
	call	__Unwind_SjLj_Resume
L1850:
	leal	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1129:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1129-LLSDACSB1129
LLSDACSB1129:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
	.uleb128 0xa
	.uleb128 0
	.uleb128 0xb
	.uleb128 0
	.uleb128 0xc
	.uleb128 0
	.uleb128 0xd
	.uleb128 0
	.uleb128 0xe
	.uleb128 0
	.uleb128 0xf
	.uleb128 0
	.uleb128 0x10
	.uleb128 0
	.uleb128 0x11
	.uleb128 0
	.uleb128 0x12
	.uleb128 0
LLSDACSE1129:
	.text
	.section .rdata,"dr"
LC216:
	.ascii "Game_app.Animate\0"
LC217:
	.ascii "Delay\0"
	.align 4
LC218:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<104>\0"
	.align 4
LC219:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<107>\0"
	.align 4
LC220:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<108>\0"
	.align 4
LC221:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<110>\0"
	.align 4
LC222:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<113>\0"
	.text
	.align 2
	.globl	__ZN10c_Game_app9p_AnimateEi
	.def	__ZN10c_Game_app9p_AnimateEi;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app9p_AnimateEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1133, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1863, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC216, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC217, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC218, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1852
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1852:
	movl	-60(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	$1, -108(%ebp)
	call	__Z16bb_app_Millisecsv
	cmpl	%eax, -116(%ebp)
	setl	%al
	testb	%al, %al
	je	L1853
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC219, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1854
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L1854:
	movl	$2, -108(%ebp)
	call	__Z16bb_app_Millisecsv
	movl	-60(%ebp), %edx
	movl	%eax, 100(%edx)
	movl	$LC220, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1855
	call	__Z8dbg_stopv
L1855:
	movl	-60(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 100(%eax)
	movl	$LC221, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1856
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L1856:
	movl	$1, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1857
L1853:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC222, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1858
	movl	$3, -108(%ebp)
	call	__Z8dbg_stopv
L1858:
	movl	$0, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1857:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1867
L1865:
	movl	%edx, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1861
L1866:
	movl	%edx, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1861
L1863:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L1864
	subl	$1, %eax
	testl	%eax, %eax
	je	L1865
	subl	$1, %eax
	testl	%eax, %eax
	je	L1866
	subl	$1, %eax
		.word	0x0b0f
L1864:
	movl	%edx, -116(%ebp)
L1861:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1867:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1133:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1133-LLSDACSB1133
LLSDACSB1133:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1133:
	.text
	.section .rdata,"dr"
LC223:
	.ascii "Game_app.MenuButtons\0"
LC224:
	.ascii "x\0"
LC225:
	.ascii "y\0"
	.align 4
LC226:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<493>\0"
	.align 4
LC227:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<495>\0"
	.align 4
LC228:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<497>\0"
	.align 4
LC229:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<499>\0"
	.align 4
LC230:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<500>\0"
	.align 4
LC231:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<503>\0"
	.align 4
LC232:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<504>\0"
	.align 4
LC233:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<509>\0"
	.align 4
LC234:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<511>\0"
	.align 4
LC235:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<513>\0"
	.align 4
LC236:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<514>\0"
	.align 4
LC237:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<518>\0"
	.align 4
LC238:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<519>\0"
	.align 4
LC239:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<529>\0"
	.align 4
LC240:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<531>\0"
	.align 4
LC241:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<533>\0"
	.align 4
LC242:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<534>\0"
	.align 4
LC243:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<537>\0"
	.align 4
LC244:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<538>\0"
	.align 4
LC245:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<543>\0"
	.align 4
LC246:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<545>\0"
	.align 4
LC247:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<547>\0"
	.align 4
LC248:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<548>\0"
	.align 4
LC249:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<552>\0"
	.align 4
LC250:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<553>\0"
	.align 4
LC251:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<560>\0"
	.align 4
LC252:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<561>\0"
	.align 4
LC253:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<564>\0"
	.align 4
LC254:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<565>\0"
	.text
	.align 2
	.globl	__ZN10c_Game_app13p_MenuButtonsEii
	.def	__ZN10c_Game_app13p_MenuButtonsEii;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app13p_MenuButtonsEii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$188, %esp
	movl	%ecx, -124(%ebp)
	movl	$___gxx_personality_sj0, -152(%ebp)
	movl	$LLSDA1134, -148(%ebp)
	leal	-144(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1932, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-48(%ebp), %eax
	movl	$LC223, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-124(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-52(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC224, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC225, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC226, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1869
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1869:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$2, (%esp)
	movl	$1, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	%eax, -180(%ebp)
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1Ei
	subl	$4, %esp
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$2, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1Ei
	subl	$4, %esp
	leal	-36(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String5ToIntEv
	movl	-180(%ebp), %edi
	movl	%eax, (%edi)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC227, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1870
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1870:
	movl	$38, (%esp)
	movl	$1, -172(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1871
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC228, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1872
	movl	$3, -172(%ebp)
	call	__Z8dbg_stopv
L1872:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$3, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L1873
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC229, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1874
	movl	$4, -172(%ebp)
	call	__Z8dbg_stopv
L1874:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$4, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	$LC230, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1875
	call	__Z8dbg_stopv
L1875:
	movl	-124(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	leal	1(%eax), %ecx
	movl	12(%ebp), %eax
	imull	%ecx, %eax
	addl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1876
L1873:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC231, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1877
	movl	$5, -172(%ebp)
	call	__Z8dbg_stopv
L1877:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$5, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	subl	$1, %edx
	movl	%edx, (%eax)
	movl	$LC232, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1878
	call	__Z8dbg_stopv
L1878:
	movl	-124(%ebp), %eax
	movl	32(%eax), %eax
	movl	8(%ebp), %edx
	notl	%edx
	addl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1876:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1871:
	movl	$LC233, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1879
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1879:
	movl	$40, (%esp)
	movl	$1, -172(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1880
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC234, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1881
	movl	$6, -172(%ebp)
	call	__Z8dbg_stopv
L1881:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$6, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	sete	%al
	testb	%al, %al
	je	L1882
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC235, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1883
	movl	$7, -172(%ebp)
	call	__Z8dbg_stopv
L1883:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$7, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC236, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1884
	call	__Z8dbg_stopv
L1884:
	movl	-124(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	notl	%eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	imull	%ecx, %eax
	addl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1885
L1882:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC237, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1886
	movl	$8, -172(%ebp)
	call	__Z8dbg_stopv
L1886:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$8, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	movl	$LC238, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1887
	call	__Z8dbg_stopv
L1887:
	movl	-124(%ebp), %eax
	movl	32(%eax), %eax
	movl	8(%ebp), %edx
	addl	$1, %edx
	addl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1885:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1880:
	movl	$LC239, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1888
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1888:
	movl	$37, (%esp)
	movl	$1, -172(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1889
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC240, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1890
	movl	$9, -172(%ebp)
	call	__Z8dbg_stopv
L1890:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$9, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L1891
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC241, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1892
	movl	$10, -172(%ebp)
	call	__Z8dbg_stopv
L1892:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$10, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	$LC242, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1893
	call	__Z8dbg_stopv
L1893:
	movl	-124(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1894
L1891:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC243, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1895
	movl	$11, -172(%ebp)
	call	__Z8dbg_stopv
L1895:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$11, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	subl	$1, %edx
	movl	%edx, (%eax)
	movl	$LC244, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1896
	call	__Z8dbg_stopv
L1896:
	movl	-124(%ebp), %eax
	movl	32(%eax), %eax
	leal	-1(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1894:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1889:
	movl	$LC245, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1897
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1897:
	movl	$39, (%esp)
	movl	$1, -172(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1898
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC246, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1899
	movl	$12, -172(%ebp)
	call	__Z8dbg_stopv
L1899:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$12, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	sete	%al
	testb	%al, %al
	je	L1900
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC247, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1901
	movl	$13, -172(%ebp)
	call	__Z8dbg_stopv
L1901:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$13, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC248, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1902
	call	__Z8dbg_stopv
L1902:
	movl	-124(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1903
L1900:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC249, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1904
	movl	$14, -172(%ebp)
	call	__Z8dbg_stopv
L1904:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$14, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	movl	$LC250, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1905
	call	__Z8dbg_stopv
L1905:
	movl	-124(%ebp), %eax
	movl	32(%eax), %eax
	leal	1(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1903:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1898:
	movl	$LC251, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1906
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1906:
	movl	$39, (%esp)
	movl	$1, -172(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1907
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$15, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1907:
	movl	$LC252, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1908
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1908:
	movl	$37, (%esp)
	movl	$1, -172(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1909
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$16, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	subl	$1, %edx
	movl	%edx, (%eax)
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1909:
	movl	$LC253, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1910
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1910:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$1, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	shrl	$31, %eax
	testb	%al, %al
	je	L1911
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$17, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1911:
	movl	$LC254, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1912
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1912:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$1, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	setg	%al
	testb	%al, %al
	je	L1913
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$18, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1913:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L1953
L1934:
	movl	%eax, -180(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1915
L1936:
	movl	%eax, -180(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1917
L1937:
	movl	%eax, -180(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1917
L1935:
	movl	%eax, -180(%ebp)
L1917:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1915
L1939:
	movl	%eax, -180(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1920
L1940:
	movl	%eax, -180(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1920
L1938:
	movl	%eax, -180(%ebp)
L1920:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1915
L1942:
	movl	%eax, -180(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1923
L1943:
	movl	%eax, -180(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1923
L1941:
	movl	%eax, -180(%ebp)
L1923:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1915
L1945:
	movl	%eax, -180(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1926
L1946:
	movl	%eax, -180(%ebp)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1926
L1944:
	movl	%eax, -180(%ebp)
L1926:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1915
L1947:
	movl	%eax, -180(%ebp)
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1915
L1948:
	movl	%eax, -180(%ebp)
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1915
L1949:
	movl	%eax, -180(%ebp)
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1915
L1950:
	movl	%eax, -180(%ebp)
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1915
L1932:
	leal	24(%ebp), %ebp
	movl	-168(%ebp), %eax
	cmpl	$17, -172(%ebp)
	ja	L1951
	movl	-172(%ebp), %edx
	sall	$2, %edx
	addl	$L1952, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L1952:
	.long	L1933
	.long	L1934
	.long	L1935
	.long	L1936
	.long	L1937
	.long	L1938
	.long	L1939
	.long	L1940
	.long	L1941
	.long	L1942
	.long	L1943
	.long	L1944
	.long	L1945
	.long	L1946
	.long	L1947
	.long	L1948
	.long	L1949
	.long	L1950
	.text
L1951:
		.word	0x0b0f
L1933:
	movl	%eax, -180(%ebp)
L1915:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -172(%ebp)
	call	__Unwind_SjLj_Resume
L1953:
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1134:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1134-LLSDACSB1134
LLSDACSB1134:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
	.uleb128 0xa
	.uleb128 0
	.uleb128 0xb
	.uleb128 0
	.uleb128 0xc
	.uleb128 0
	.uleb128 0xd
	.uleb128 0
	.uleb128 0xe
	.uleb128 0
	.uleb128 0xf
	.uleb128 0
	.uleb128 0x10
	.uleb128 0
	.uleb128 0x11
	.uleb128 0
LLSDACSE1134:
	.text
	.section .rdata,"dr"
LC255:
	.ascii "Game_app.Menus\0"
LC256:
	.ascii "A\0"
	.align 4
LC257:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<442>\0"
LC258:
	.ascii "6\0"
	.align 4
LC259:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<443>\0"
	.align 4
LC260:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<445>\0"
LC261:
	.ascii "7\0"
	.align 4
LC262:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<447>\0"
	.align 4
LC263:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<448>\0"
	.align 4
LC264:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<449>\0"
	.align 4
LC265:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<450>\0"
	.align 4
LC266:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<452>\0"
	.align 4
LC267:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<453>\0"
	.align 4
LC268:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<456>\0"
	.align 4
LC269:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<457>\0"
	.align 4
LC270:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<460>\0"
	.align 4
LC271:
	.ascii "C\0h\0a\0r\0a\0c\0t\0e\0r\0S\0e\0l\0e\0c\0t\0\0\0"
	.align 4
LC272:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<462>\0"
LC273:
	.ascii "8\0"
	.align 4
LC274:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<463>\0"
	.align 4
LC275:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<466>\0"
	.align 4
LC276:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<468>\0"
	.align 4
LC277:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<473>\0"
	.align 2
LC278:
	.ascii "P\0a\0u\0s\0e\0\0\0"
	.align 4
LC279:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<475>\0"
LC280:
	.ascii "9\0"
	.align 4
LC281:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<476>\0"
	.align 4
LC282:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<478>\0"
	.align 4
LC283:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<479>\0"
	.align 4
LC284:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<481>\0"
	.align 4
LC285:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<482>\0"
	.text
	.align 2
	.globl	__ZN10c_Game_app7p_MenusEi
	.def	__ZN10c_Game_app7p_MenusEi;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app7p_MenusEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$236, %esp
	movl	%ecx, -172(%ebp)
	movl	$___gxx_personality_sj0, -200(%ebp)
	movl	$LLSDA1135, -196(%ebp)
	leal	-192(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2017, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-224(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-68(%ebp), %eax
	movl	$LC255, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-172(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-72(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC256, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC257, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1955
	movl	$1, -220(%ebp)
	call	__Z8dbg_stopv
L1955:
	movl	-172(%ebp), %eax
	leal	80(%eax), %edx
	leal	-76(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-76(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC258, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC259, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1956
	movl	$2, -220(%ebp)
	call	__Z8dbg_stopv
L1956:
	leal	-56(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC158, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-76(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -228(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -228(%ebp)
	je	L1957
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC260, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1958
	movl	$3, -220(%ebp)
	call	__Z8dbg_stopv
L1958:
	movl	8(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-84(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC261, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC262, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1959
	movl	$3, -220(%ebp)
	call	__Z8dbg_stopv
L1959:
	movl	-84(%ebp), %eax
	testl	%eax, %eax
	jne	L1960
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC263, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1961
	movl	$4, -220(%ebp)
	call	__Z8dbg_stopv
L1961:
	leal	-52(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC181, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-172(%ebp), %eax
	leal	76(%eax), %edx
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC264, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1962
	movl	$4, -220(%ebp)
	call	__Z8dbg_stopv
L1962:
	leal	-48(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC160, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-172(%ebp), %eax
	leal	80(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1963
L1960:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC265, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1964
	movl	$5, -220(%ebp)
	call	__Z8dbg_stopv
L1964:
	movl	-84(%ebp), %eax
	cmpl	$1, %eax
	jne	L1965
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC266, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1966
	movl	$6, -220(%ebp)
	call	__Z8dbg_stopv
L1966:
	leal	-44(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC181, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-172(%ebp), %eax
	leal	76(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC267, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1967
	movl	$6, -220(%ebp)
	call	__Z8dbg_stopv
L1967:
	leal	-40(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC160, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-172(%ebp), %eax
	leal	80(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1968
L1965:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC268, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1969
	movl	$7, -220(%ebp)
	call	__Z8dbg_stopv
L1969:
	movl	-84(%ebp), %eax
	cmpl	$2, %eax
	jne	L1970
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC269, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1971
	movl	$8, -220(%ebp)
	call	__Z8dbg_stopv
L1971:
	movl	$8, -220(%ebp)
	call	__Z13bb_app_EndAppv
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1970:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1968:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1963:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1972
L1957:
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC270, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1973
	movl	$9, -220(%ebp)
	call	__Z8dbg_stopv
L1973:
	leal	-36(%ebp), %eax
	movl	$15, 4(%esp)
	movl	$LC271, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-76(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -228(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -228(%ebp)
	je	L1974
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC272, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1975
	movl	$10, -220(%ebp)
	call	__Z8dbg_stopv
L1975:
	movl	8(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-116(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC273, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC274, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1976
	movl	$10, -220(%ebp)
	call	__Z8dbg_stopv
L1976:
	movl	-116(%ebp), %eax
	testl	%eax, %eax
	jne	L1977
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1978
L1977:
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC275, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1979
	movl	$11, -220(%ebp)
	call	__Z8dbg_stopv
L1979:
	movl	-116(%ebp), %eax
	cmpl	$10, %eax
	jne	L1980
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1981
L1980:
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC276, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1982
	movl	$12, -220(%ebp)
	call	__Z8dbg_stopv
L1982:
	movl	-116(%ebp), %eax
	cmpl	$1, %eax
	jne	L1983
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1983:
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1981:
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1978:
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1984
L1974:
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC277, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1985
	movl	$13, -220(%ebp)
	call	__Z8dbg_stopv
L1985:
	leal	-32(%ebp), %eax
	movl	$5, 4(%esp)
	movl	$LC278, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-76(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -228(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -228(%ebp)
	je	L1986
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC279, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1987
	movl	$14, -220(%ebp)
	call	__Z8dbg_stopv
L1987:
	movl	8(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-148(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC280, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC281, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1988
	movl	$14, -220(%ebp)
	call	__Z8dbg_stopv
L1988:
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	jne	L1989
	leal	-152(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC282, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1990
	movl	$15, -220(%ebp)
	call	__Z8dbg_stopv
L1990:
	leal	-28(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC158, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-172(%ebp), %eax
	leal	80(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-152(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1991
L1989:
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC283, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1992
	movl	$16, -220(%ebp)
	call	__Z8dbg_stopv
L1992:
	movl	-148(%ebp), %eax
	cmpl	$10, %eax
	jne	L1993
	leal	-160(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-160(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1994
L1993:
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC284, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1995
	movl	$17, -220(%ebp)
	call	__Z8dbg_stopv
L1995:
	movl	-148(%ebp), %eax
	cmpl	$20, %eax
	jne	L1996
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC285, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1997
	movl	$18, -220(%ebp)
	call	__Z8dbg_stopv
L1997:
	movl	$18, -220(%ebp)
	call	__Z13bb_app_EndAppv
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1996:
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1994:
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1991:
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1986:
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1984:
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1972:
	movl	$0, -228(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2038
L2021:
	movl	%eax, -228(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2000
L2023:
	movl	%eax, -228(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2002
L2025:
	movl	%eax, -228(%ebp)
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2004
L2024:
	movl	%eax, -228(%ebp)
L2004:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2002
L2022:
	movl	%eax, -228(%ebp)
L2002:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2000
L2020:
	movl	%eax, -228(%ebp)
L2000:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2005
L2029:
	movl	%eax, -228(%ebp)
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2007
L2028:
	movl	%eax, -228(%ebp)
L2007:
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2008
L2027:
	movl	%eax, -228(%ebp)
L2008:
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2009
L2032:
	movl	%eax, -228(%ebp)
	leal	-152(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2011
L2035:
	movl	%eax, -228(%ebp)
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2013
L2034:
	movl	%eax, -228(%ebp)
L2013:
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2014
L2033:
	movl	%eax, -228(%ebp)
L2014:
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2011
L2031:
	movl	%eax, -228(%ebp)
L2011:
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2015
L2030:
	movl	%eax, -228(%ebp)
L2015:
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2009
L2026:
	movl	%eax, -228(%ebp)
L2009:
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2005
L2019:
	movl	%eax, -228(%ebp)
L2005:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L2016
L2017:
	leal	24(%ebp), %ebp
	movl	-216(%ebp), %eax
	cmpl	$17, -220(%ebp)
	ja	L2036
	movl	-220(%ebp), %edx
	sall	$2, %edx
	addl	$L2037, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2037:
	.long	L2018
	.long	L2019
	.long	L2020
	.long	L2021
	.long	L2022
	.long	L2023
	.long	L2024
	.long	L2025
	.long	L2026
	.long	L2027
	.long	L2028
	.long	L2029
	.long	L2030
	.long	L2031
	.long	L2032
	.long	L2033
	.long	L2034
	.long	L2035
	.text
L2036:
		.word	0x0b0f
L2018:
	movl	%eax, -228(%ebp)
L2016:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -220(%ebp)
	call	__Unwind_SjLj_Resume
L2038:
	leal	-224(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-228(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1135:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1135-LLSDACSB1135
LLSDACSB1135:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
	.uleb128 0xa
	.uleb128 0
	.uleb128 0xb
	.uleb128 0
	.uleb128 0xc
	.uleb128 0
	.uleb128 0xd
	.uleb128 0
	.uleb128 0xe
	.uleb128 0
	.uleb128 0xf
	.uleb128 0
	.uleb128 0x10
	.uleb128 0
	.uleb128 0x11
	.uleb128 0
LLSDACSE1135:
	.text
	.section	.text$_ZN14dbg_var_type_tIP7c_ImageEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP7c_ImageEC1Ev
	.def	__ZN14dbg_var_type_tIP7c_ImageEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP7c_ImageEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP7c_ImageE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC286:
	.ascii "Game_app.OnUpdate\0"
	.align 4
LC287:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<122>\0"
LC288:
	.ascii "1\0"
	.align 4
LC289:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<125>\0"
	.align 4
LC290:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<128>\0"
	.align 4
LC291:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<131>\0"
	.align 4
LC292:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<132>\0"
	.align 4
LC293:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<135>\0"
	.align 4
LC294:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<138>\0"
LC295:
	.ascii "2\0"
	.align 4
LC296:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<140>\0"
	.align 4
LC297:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<142>\0"
	.align 4
LC298:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<144>\0"
	.align 4
LC299:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<145>\0"
	.align 4
LC300:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<146>\0"
	.align 4
LC301:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<156>\0"
	.align 4
LC302:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<161>\0"
	.align 4
LC303:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<163>\0"
	.align 4
LC304:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<165>\0"
	.align 4
LC305:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<166>\0"
	.align 4
LC306:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<167>\0"
	.align 4
LC307:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<168>\0"
	.align 2
LC308:
	.ascii "B\0a\0c\0k\0M\0.\0w\0a\0v\0\0\0"
	.align 4
LC309:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<169>\0"
	.align 4
LC310:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<172>\0"
	.align 4
LC311:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<173>\0"
	.align 4
LC312:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<179>\0"
	.align 4
LC313:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<182>\0"
	.align 4
LC314:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<185>\0"
	.align 4
LC315:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<187>\0"
	.align 4
LC316:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<188>\0"
	.align 4
LC317:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<193>\0"
	.align 4
LC318:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<197>\0"
	.align 4
LC319:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<200>\0"
	.align 4
LC320:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<204>\0"
	.align 4
LC321:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<207>\0"
	.align 4
LC322:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<208>\0"
	.align 4
LC323:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<217>\0"
	.align 4
LC324:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<219>\0"
	.align 4
LC325:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<220>\0"
	.align 4
LC326:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<221>\0"
	.align 4
LC327:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<226>\0"
	.align 4
LC328:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<227>\0"
	.align 4
LC329:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<228>\0"
	.align 4
LC330:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<229>\0"
	.align 4
LC331:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<232>\0"
	.align 4
LC332:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<233>\0"
	.align 4
LC333:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<234>\0"
	.align 4
LC334:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<235>\0"
	.align 4
LC335:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<241>\0"
	.align 4
LC336:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<243>\0"
	.align 4
LC337:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<244>\0"
	.align 4
LC338:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<246>\0"
	.align 4
LC339:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<247>\0"
	.align 4
LC340:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<249>\0"
	.align 4
LC341:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<250>\0"
	.text
	.align 2
	.globl	__ZN10c_Game_app10p_OnUpdateEv
	.def	__ZN10c_Game_app10p_OnUpdateEv;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app10p_OnUpdateEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$252, %esp
	movl	%ecx, -188(%ebp)
	movl	$___gxx_personality_sj0, -216(%ebp)
	movl	$LLSDA1136, -212(%ebp)
	leal	-208(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2149, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-72(%ebp), %eax
	movl	$LC286, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-188(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-76(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	$LC287, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2041
	movl	$1, -236(%ebp)
	call	__Z8dbg_stopv
L2041:
	movl	-188(%ebp), %eax
	leal	80(%eax), %edx
	leal	-80(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-80(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC288, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC289, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2042
	movl	$2, -236(%ebp)
	call	__Z8dbg_stopv
L2042:
	leal	-60(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC160, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-80(%ebp), %eax
	leal	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -244(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -244(%ebp)
	je	L2043
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC290, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2044
	movl	$3, -236(%ebp)
	call	__Z8dbg_stopv
L2044:
	leal	-56(%ebp), %eax
	movl	$3, 4(%esp)
	movl	$LC131, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-188(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app16p_FlushVariablesE6String
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC291, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2045
	movl	$3, -236(%ebp)
	call	__Z8dbg_stopv
L2045:
	movl	-188(%ebp), %eax
	leal	76(%eax), %edx
	leal	-52(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-188(%ebp), %eax
	leal	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	$5, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app11p_LoadFilesE6String
	subl	$4, %esp
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC292, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2046
	movl	$3, -236(%ebp)
	call	__Z8dbg_stopv
L2046:
	movl	-188(%ebp), %eax
	leal	76(%eax), %edx
	movl	-188(%ebp), %eax
	addl	$80, %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2047
L2043:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC293, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2048
	movl	$6, -236(%ebp)
	call	__Z8dbg_stopv
L2048:
	leal	-48(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC158, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-80(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -244(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -244(%ebp)
	je	L2049
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC294, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2050
	movl	$7, -236(%ebp)
	call	__Z8dbg_stopv
L2050:
	movl	-188(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-96(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC295, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	$LC296, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2051
	movl	$7, -236(%ebp)
	call	__Z8dbg_stopv
L2051:
	movl	-188(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	cmpl	%eax, %edx
	jne	L2052
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC297, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2053
	movl	$8, -236(%ebp)
	call	__Z8dbg_stopv
L2053:
	movl	-188(%ebp), %eax
	movl	$100, (%esp)
	movl	$8, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app9p_AnimateEi
	subl	$4, %esp
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	L2054
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC298, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2055
	movl	$9, -236(%ebp)
	call	__Z8dbg_stopv
L2055:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$8, %eax
	jne	L2056
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC299, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2057
	movl	$10, -236(%ebp)
	call	__Z8dbg_stopv
L2057:
	movl	-188(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$LC300, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2058
	movl	$10, -236(%ebp)
	call	__Z8dbg_stopv
L2058:
	movl	-188(%ebp), %eax
	movl	20(%eax), %eax
	movl	-188(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2059
L2056:
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC301, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2060
	movl	$11, -236(%ebp)
	call	__Z8dbg_stopv
L2060:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	leal	1(%eax), %edx
	movl	-188(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2059:
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2054:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2061
L2052:
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC302, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2062
	movl	$12, -236(%ebp)
	call	__Z8dbg_stopv
L2062:
	movl	-188(%ebp), %eax
	movl	20(%eax), %edx
	movl	-96(%ebp), %eax
	cmpl	%eax, %edx
	jne	L2063
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC303, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2064
	movl	$13, -236(%ebp)
	call	__Z8dbg_stopv
L2064:
	movl	-188(%ebp), %eax
	movl	$100, (%esp)
	movl	$13, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app9p_AnimateEi
	subl	$4, %esp
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	L2065
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC304, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2066
	movl	$14, -236(%ebp)
	call	__Z8dbg_stopv
L2066:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$8, %eax
	jne	L2067
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC305, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2068
	movl	$15, -236(%ebp)
	call	__Z8dbg_stopv
L2068:
	movl	-188(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$LC306, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2069
	movl	$15, -236(%ebp)
	call	__Z8dbg_stopv
L2069:
	movl	-188(%ebp), %eax
	movl	24(%eax), %eax
	movl	-188(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC307, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2070
	movl	$15, -236(%ebp)
	call	__Z8dbg_stopv
L2070:
	leal	-44(%ebp), %eax
	movl	$9, 4(%esp)
	movl	$LC308, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	$1, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	$16, -236(%ebp)
	call	__Z18bb_audio_PlayMusic6Stringi
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC309, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2071
	movl	$15, -236(%ebp)
	call	__Z8dbg_stopv
L2071:
	movl	LC65, %eax
	movl	%eax, (%esp)
	movl	$15, -236(%ebp)
	call	__Z23bb_audio_SetMusicVolumef
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2072
L2067:
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC310, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2073
	movl	$17, -236(%ebp)
	call	__Z8dbg_stopv
L2073:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$3, %eax
	jne	L2074
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	-188(%ebp), %eax
	movl	48(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	$18, -236(%ebp)
	call	__Z18bb_audio_PlaySoundP7c_Soundii
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2074:
	movl	$LC311, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2075
	movl	$17, -236(%ebp)
	call	__Z8dbg_stopv
L2075:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	leal	1(%eax), %edx
	movl	-188(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2072:
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2065:
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2076
L2063:
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC312, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2077
	movl	$19, -236(%ebp)
	call	__Z8dbg_stopv
L2077:
	movl	-188(%ebp), %eax
	movl	24(%eax), %edx
	movl	-96(%ebp), %eax
	cmpl	%eax, %edx
	jne	L2078
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC313, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2079
	movl	$20, -236(%ebp)
	call	__Z8dbg_stopv
L2079:
	movl	-188(%ebp), %eax
	movl	$100, (%esp)
	movl	$20, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app9p_AnimateEi
	subl	$4, %esp
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	L2080
	leal	-148(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC314, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2081
	movl	$21, -236(%ebp)
	call	__Z8dbg_stopv
L2081:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$8, %eax
	jne	L2082
	leal	-152(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC315, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2083
	movl	$22, -236(%ebp)
	call	__Z8dbg_stopv
L2083:
	movl	-188(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$LC316, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2084
	movl	$22, -236(%ebp)
	call	__Z8dbg_stopv
L2084:
	movl	-188(%ebp), %eax
	movl	28(%eax), %eax
	movl	-188(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	leal	-152(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2085
L2082:
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC317, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2086
	movl	$23, -236(%ebp)
	call	__Z8dbg_stopv
L2086:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	leal	1(%eax), %edx
	movl	-188(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2085:
	leal	-148(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2080:
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2087
L2078:
	leal	-160(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC318, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2088
	movl	$24, -236(%ebp)
	call	__Z8dbg_stopv
L2088:
	movl	-188(%ebp), %eax
	movl	28(%eax), %edx
	movl	-96(%ebp), %eax
	cmpl	%eax, %edx
	jne	L2089
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC319, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2090
	movl	$25, -236(%ebp)
	call	__Z8dbg_stopv
L2090:
	movl	-188(%ebp), %eax
	movl	$2, 4(%esp)
	movl	$0, (%esp)
	movl	$25, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app13p_MenuButtonsEii
	subl	$8, %esp
	movl	$LC320, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2091
	call	__Z8dbg_stopv
L2091:
	movl	$13, (%esp)
	movl	$25, -236(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L2092
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC321, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2093
	movl	$26, -236(%ebp)
	call	__Z8dbg_stopv
L2093:
	movl	-188(%ebp), %eax
	addl	$40, %eax
	movl	$2, (%esp)
	movl	$26, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	movl	-188(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app7p_MenusEi
	subl	$4, %esp
	movl	$LC322, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2094
	call	__Z8dbg_stopv
L2094:
	leal	-40(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC149, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-188(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	$27, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app16p_FlushVariablesE6String
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2092:
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2089:
	leal	-160(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2087:
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2076:
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2061:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2095
L2049:
	leal	-172(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC323, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2096
	movl	$28, -236(%ebp)
	call	__Z8dbg_stopv
L2096:
	leal	-36(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC181, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-80(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -244(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -244(%ebp)
	je	L2097
	leal	-176(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC324, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2098
	movl	$29, -236(%ebp)
	call	__Z8dbg_stopv
L2098:
	movl	$27, (%esp)
	movl	$29, -236(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L2099
	leal	-180(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC325, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2100
	movl	$30, -236(%ebp)
	call	__Z8dbg_stopv
L2100:
	leal	-32(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC158, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-188(%ebp), %eax
	leal	76(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC326, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2101
	movl	$30, -236(%ebp)
	call	__Z8dbg_stopv
L2101:
	leal	-28(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC160, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-188(%ebp), %eax
	leal	80(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-180(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2099:
	movl	$LC327, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2102
	movl	$29, -236(%ebp)
	call	__Z8dbg_stopv
L2102:
	movl	-188(%ebp), %eax
	movl	92(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters22p_PlayerCollisionCheckEv
	movl	$LC328, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2103
	call	__Z8dbg_stopv
L2103:
	movl	-188(%ebp), %eax
	movl	92(%eax), %eax
	movl	$5, (%esp)
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters9p_GravityEi
	subl	$4, %esp
	movl	$LC329, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2104
	call	__Z8dbg_stopv
L2104:
	movl	-188(%ebp), %eax
	movl	92(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters10p_KeyBindsEv
	movl	$LC330, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2105
	call	__Z8dbg_stopv
L2105:
	movl	-188(%ebp), %eax
	movl	92(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters13p_AttackCheckEv
	movl	$LC331, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2106
	call	__Z8dbg_stopv
L2106:
	movl	-188(%ebp), %eax
	movl	96(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters22p_PlayerCollisionCheckEv
	movl	$LC332, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2107
	call	__Z8dbg_stopv
L2107:
	movl	-188(%ebp), %eax
	movl	96(%eax), %eax
	movl	$5, (%esp)
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters9p_GravityEi
	subl	$4, %esp
	movl	$LC333, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2108
	call	__Z8dbg_stopv
L2108:
	movl	-188(%ebp), %eax
	movl	96(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters10p_KeyBindsEv
	movl	$LC334, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2109
	call	__Z8dbg_stopv
L2109:
	movl	-188(%ebp), %eax
	movl	96(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters13p_AttackCheckEv
	movl	$LC335, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2110
	call	__Z8dbg_stopv
L2110:
	movl	$112, (%esp)
	movl	$29, -236(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L2111
	leal	-184(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	-188(%ebp), %eax
	movzbl	104(%eax), %eax
	xorl	$1, %eax
	movl	%eax, %edx
	movl	-188(%ebp), %eax
	movb	%dl, 104(%eax)
	leal	-184(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2111:
	movl	$LC336, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2112
	movl	$29, -236(%ebp)
	call	__Z8dbg_stopv
L2112:
	movl	-188(%ebp), %eax
	movl	92(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters6p_JumpEv
	movl	$LC337, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2113
	call	__Z8dbg_stopv
L2113:
	movl	-188(%ebp), %eax
	movl	96(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters6p_JumpEv
	movl	$LC338, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2114
	call	__Z8dbg_stopv
L2114:
	movl	-188(%ebp), %eax
	movl	92(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters14p_UpdateActionEv
	movl	$LC339, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2115
	call	__Z8dbg_stopv
L2115:
	movl	-188(%ebp), %eax
	movl	96(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters14p_UpdateActionEv
	movl	$LC340, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2116
	call	__Z8dbg_stopv
L2116:
	movl	-188(%ebp), %eax
	movl	96(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters16p_AnimationCycleEv
	movl	$LC341, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2117
	call	__Z8dbg_stopv
L2117:
	movl	-188(%ebp), %eax
	movl	92(%eax), %eax
	movl	$29, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters16p_AnimationCycleEv
	leal	-176(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2097:
	leal	-172(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2095:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2047:
	movl	$0, -244(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2182
L2153:
	movl	%eax, -244(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2120
L2154:
	movl	%eax, -244(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2120
L2152:
	movl	%eax, -244(%ebp)
L2120:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2122
L2159:
	movl	%eax, -244(%ebp)
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2124
L2160:
	movl	%eax, -244(%ebp)
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2124
L2158:
	movl	%eax, -244(%ebp)
L2124:
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2126
L2157:
	movl	%eax, -244(%ebp)
L2126:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2127
L2165:
	movl	%eax, -244(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2129
L2164:
	movl	%eax, -244(%ebp)
L2129:
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2130
L2167:
	movl	%eax, -244(%ebp)
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2132
L2166:
	movl	%eax, -244(%ebp)
L2132:
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2130
L2163:
	movl	%eax, -244(%ebp)
L2130:
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2133
L2162:
	movl	%eax, -244(%ebp)
L2133:
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2134
L2171:
	movl	%eax, -244(%ebp)
	leal	-152(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2136
L2172:
	movl	%eax, -244(%ebp)
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2136
L2170:
	movl	%eax, -244(%ebp)
L2136:
	leal	-148(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2138
L2169:
	movl	%eax, -244(%ebp)
L2138:
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2139
L2176:
	movl	%eax, -244(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2141
L2175:
	movl	%eax, -244(%ebp)
L2141:
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2142
L2174:
	movl	%eax, -244(%ebp)
L2142:
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2143
L2173:
	movl	%eax, -244(%ebp)
L2143:
	leal	-160(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2139
L2168:
	movl	%eax, -244(%ebp)
L2139:
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2134
L2161:
	movl	%eax, -244(%ebp)
L2134:
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2127
L2156:
	movl	%eax, -244(%ebp)
L2127:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2144
L2179:
	movl	%eax, -244(%ebp)
	leal	-180(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2146
L2178:
	movl	%eax, -244(%ebp)
L2146:
	leal	-176(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2147
L2177:
	movl	%eax, -244(%ebp)
L2147:
	leal	-172(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2144
L2155:
	movl	%eax, -244(%ebp)
L2144:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2122
L2151:
	movl	%eax, -244(%ebp)
L2122:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2148
L2149:
	leal	24(%ebp), %ebp
	movl	-232(%ebp), %eax
	cmpl	$29, -236(%ebp)
	ja	L2180
	movl	-236(%ebp), %edx
	sall	$2, %edx
	addl	$L2181, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2181:
	.long	L2150
	.long	L2151
	.long	L2152
	.long	L2153
	.long	L2154
	.long	L2155
	.long	L2156
	.long	L2157
	.long	L2158
	.long	L2159
	.long	L2160
	.long	L2161
	.long	L2162
	.long	L2163
	.long	L2164
	.long	L2165
	.long	L2166
	.long	L2167
	.long	L2168
	.long	L2169
	.long	L2170
	.long	L2171
	.long	L2172
	.long	L2173
	.long	L2174
	.long	L2175
	.long	L2176
	.long	L2177
	.long	L2178
	.long	L2179
	.text
L2180:
		.word	0x0b0f
L2150:
	movl	%eax, -244(%ebp)
L2148:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -236(%ebp)
	call	__Unwind_SjLj_Resume
L2182:
	leal	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-244(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1136:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1136-LLSDACSB1136
LLSDACSB1136:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
	.uleb128 0xa
	.uleb128 0
	.uleb128 0xb
	.uleb128 0
	.uleb128 0xc
	.uleb128 0
	.uleb128 0xd
	.uleb128 0
	.uleb128 0xe
	.uleb128 0
	.uleb128 0xf
	.uleb128 0
	.uleb128 0x10
	.uleb128 0
	.uleb128 0x11
	.uleb128 0
	.uleb128 0x12
	.uleb128 0
	.uleb128 0x13
	.uleb128 0
	.uleb128 0x14
	.uleb128 0
	.uleb128 0x15
	.uleb128 0
	.uleb128 0x16
	.uleb128 0
	.uleb128 0x17
	.uleb128 0
	.uleb128 0x18
	.uleb128 0
	.uleb128 0x19
	.uleb128 0
	.uleb128 0x1a
	.uleb128 0
	.uleb128 0x1b
	.uleb128 0
	.uleb128 0x1c
	.uleb128 0
	.uleb128 0x1d
	.uleb128 0
LLSDACSE1136:
	.text
	.section .rdata,"dr"
LC342:
	.ascii "Game_app.CalculateFrameRate\0"
	.align 4
LC343:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<576>\0"
	.align 4
LC344:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<578>\0"
	.align 4
LC345:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<580>\0"
	.align 4
LC346:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<584>\0"
	.align 4
LC347:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<590>\0"
	.text
	.align 2
	.globl	__ZN10c_Game_app20p_CalculateFrameRateEv
	.def	__ZN10c_Game_app20p_CalculateFrameRateEv;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app20p_CalculateFrameRateEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1140, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2196, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC342, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	$LC343, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2184
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2184:
	movl	-60(%ebp), %eax
	movl	$1000, (%esp)
	movl	$1, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app9p_AnimateEi
	subl	$4, %esp
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	L2185
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC344, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2186
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L2186:
	movl	-60(%ebp), %eax
	movl	108(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 112(%eax)
	movl	$LC345, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2187
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L2187:
	movl	-60(%ebp), %eax
	movl	$0, 108(%eax)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2188
L2185:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC346, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2189
	movl	$3, -108(%ebp)
	call	__Z8dbg_stopv
L2189:
	movl	-60(%ebp), %eax
	movl	108(%eax), %eax
	leal	1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 108(%eax)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2188:
	movl	$LC347, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2190
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2190:
	movl	-60(%ebp), %eax
	movl	112(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1Ei
	subl	$4, %esp
	movl	LC46, %eax
	movl	%eax, 16(%esp)
	movl	LC46, %eax
	movl	%eax, 12(%esp)
	movl	LC348, %eax
	movl	%eax, 8(%esp)
	movl	LC46, %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, -108(%ebp)
	call	__Z20bb_graphics_DrawText6Stringffff
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$0, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2201
L2198:
	movl	%edx, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2193
L2199:
	movl	%edx, -116(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2193
L2200:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2193
L2196:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L2197
	subl	$1, %eax
	testl	%eax, %eax
	je	L2198
	subl	$1, %eax
	testl	%eax, %eax
	je	L2199
	subl	$1, %eax
	testl	%eax, %eax
	je	L2200
	subl	$1, %eax
		.word	0x0b0f
L2197:
	movl	%edx, -116(%ebp)
L2193:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L2201:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1140:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1140-LLSDACSB1140
LLSDACSB1140:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1140:
	.text
	.section .rdata,"dr"
LC349:
	.ascii "Game_app.OnRender\0"
	.align 4
LC350:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<261>\0"
LC351:
	.ascii "3\0"
	.align 4
LC352:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<263>\0"
	.align 4
LC353:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<265>\0"
	.align 4
LC354:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<268>\0"
	.align 4
LC355:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<270>\0"
	.align 4
LC356:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<272>\0"
	.align 4
LC357:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<274>\0"
	.align 4
LC358:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<276>\0"
	.align 4
LC359:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<281>\0"
	.align 4
LC360:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<282>\0"
	.align 4
LC361:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<284>\0"
	.align 4
LC362:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<288>\0"
	.align 4
LC363:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<290>\0"
	.align 4
LC364:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<291>\0"
	.align 4
LC366:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<292>\0"
	.align 4
LC367:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<293>\0"
	.align 4
LC368:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<294>\0"
	.align 4
LC369:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<295>\0"
	.text
	.align 2
	.globl	__ZN10c_Game_app10p_OnRenderEv
	.def	__ZN10c_Game_app10p_OnRenderEv;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app10p_OnRenderEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$188, %esp
	movl	%ecx, -108(%ebp)
	movl	$___gxx_personality_sj0, -136(%ebp)
	movl	$LLSDA1141, -132(%ebp)
	leal	-128(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L2241, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-60(%ebp), %eax
	movl	$LC349, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-108(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-64(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	$LC350, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2203
	movl	$1, -156(%ebp)
	call	__Z8dbg_stopv
L2203:
	movl	-108(%ebp), %eax
	leal	80(%eax), %edx
	leal	-68(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-68(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC351, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC352, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2204
	movl	$2, -156(%ebp)
	call	__Z8dbg_stopv
L2204:
	leal	-48(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC158, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-68(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -168(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -168(%ebp)
	je	L2205
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC353, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2206
	movl	$3, -156(%ebp)
	call	__Z8dbg_stopv
L2206:
	movl	-108(%ebp), %eax
	movl	32(%eax), %eax
	movl	-108(%ebp), %edx
	movl	36(%edx), %edx
	movl	%eax, 12(%esp)
	movl	LC46, %eax
	movl	%eax, 8(%esp)
	movl	LC46, %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$3, -156(%ebp)
	call	__Z21bb_graphics_DrawImageP7c_Imageffi
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2207
L2205:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC354, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2208
	movl	$4, -156(%ebp)
	call	__Z8dbg_stopv
L2208:
	leal	-44(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC160, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-68(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -168(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -168(%ebp)
	je	L2209
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC355, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2210
	movl	$5, -156(%ebp)
	call	__Z8dbg_stopv
L2210:
	movl	-108(%ebp), %eax
	movl	72(%eax), %edx
	movl	$0, 12(%esp)
	movl	LC46, %eax
	movl	%eax, 8(%esp)
	movl	LC46, %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$5, -156(%ebp)
	call	__Z21bb_graphics_DrawImageP7c_Imageffi
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2211
L2209:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC356, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2212
	movl	$6, -156(%ebp)
	call	__Z8dbg_stopv
L2212:
	leal	-40(%ebp), %eax
	movl	$15, 4(%esp)
	movl	$LC271, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-68(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -168(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -168(%ebp)
	je	L2213
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2214
L2213:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC357, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2215
	movl	$7, -156(%ebp)
	call	__Z8dbg_stopv
L2215:
	leal	-36(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC181, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-68(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -168(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -168(%ebp)
	je	L2216
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC358, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2217
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L2217:
	movl	-108(%ebp), %eax
	movl	56(%eax), %edx
	movl	$0, 12(%esp)
	movl	LC46, %eax
	movl	%eax, 8(%esp)
	movl	LC46, %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$8, -156(%ebp)
	call	__Z21bb_graphics_DrawImageP7c_Imageffi
	movl	$LC359, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2218
	call	__Z8dbg_stopv
L2218:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	140(%eax), %ebx
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	96(%eax), %edx
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	88(%eax), %eax
	movl	-108(%ebp), %ecx
	movl	92(%ecx), %ecx
	movl	44(%ecx), %ecx
	movl	%ebx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	movl	$8, -156(%ebp)
	call	__Z21bb_graphics_DrawImageP7c_Imageffi
	movl	$LC360, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2219
	call	__Z8dbg_stopv
L2219:
	movl	-108(%ebp), %eax
	movl	96(%eax), %eax
	movl	140(%eax), %ebx
	movl	-108(%ebp), %eax
	movl	96(%eax), %eax
	movl	96(%eax), %edx
	movl	-108(%ebp), %eax
	movl	96(%eax), %eax
	movl	88(%eax), %eax
	movl	-108(%ebp), %ecx
	movl	96(%ecx), %ecx
	movl	44(%ecx), %ecx
	movl	%ebx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	movl	$8, -156(%ebp)
	call	__Z21bb_graphics_DrawImageP7c_Imageffi
	movl	$LC361, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2220
	call	__Z8dbg_stopv
L2220:
	movl	-108(%ebp), %eax
	movl	$8, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app20p_CalculateFrameRateEv
	movl	$LC362, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2221
	call	__Z8dbg_stopv
L2221:
	movl	-108(%ebp), %eax
	movzbl	104(%eax), %eax
	testb	%al, %al
	je	L2222
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC363, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2223
	movl	$9, -156(%ebp)
	call	__Z8dbg_stopv
L2223:
	movl	__ZN10c_Game_app9m_MapGridE, %eax
	movl	%eax, -32(%ebp)
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	$40, 12(%esp)
	movl	$18, 8(%esp)
	movl	$32, 4(%esp)
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$10, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN17c_CollisionReader6p_DrawE5ArrayIS0_I6StringEEiii
	subl	$16, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIS_I6StringEED1Ev
	movl	$LC364, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2224
	movl	$9, -156(%ebp)
	call	__Z8dbg_stopv
L2224:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	108(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	92(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	fxch	%st(1)
	movl	LC365, %eax
	movl	%eax, 12(%esp)
	movl	LC365, %eax
	movl	%eax, 8(%esp)
	fstps	4(%esp)
	fstps	(%esp)
	movl	$9, -156(%ebp)
	call	__Z20bb_graphics_DrawRectffff
	movl	$LC366, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2225
	call	__Z8dbg_stopv
L2225:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	108(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	fxch	%st(1)
	movl	LC365, %eax
	movl	%eax, 12(%esp)
	movl	LC365, %eax
	movl	%eax, 8(%esp)
	fstps	4(%esp)
	fstps	(%esp)
	movl	$9, -156(%ebp)
	call	__Z20bb_graphics_DrawRectffff
	movl	$LC367, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2226
	call	__Z8dbg_stopv
L2226:
	movl	-108(%ebp), %eax
	movl	96(%eax), %eax
	movl	108(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	movl	-108(%ebp), %eax
	movl	96(%eax), %eax
	movl	92(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	fxch	%st(1)
	movl	LC365, %eax
	movl	%eax, 12(%esp)
	movl	LC365, %eax
	movl	%eax, 8(%esp)
	fstps	4(%esp)
	fstps	(%esp)
	movl	$9, -156(%ebp)
	call	__Z20bb_graphics_DrawRectffff
	movl	$LC368, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2227
	call	__Z8dbg_stopv
L2227:
	movl	-108(%ebp), %eax
	movl	96(%eax), %eax
	movl	108(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	movl	-108(%ebp), %eax
	movl	96(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	fxch	%st(1)
	movl	LC365, %eax
	movl	%eax, 12(%esp)
	movl	LC365, %eax
	movl	%eax, 8(%esp)
	fstps	4(%esp)
	fstps	(%esp)
	movl	$9, -156(%ebp)
	call	__Z20bb_graphics_DrawRectffff
	movl	$LC369, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2228
	call	__Z8dbg_stopv
L2228:
	movl	$9, -156(%ebp)
	call	__Z16bb_app_Millisecsv
	leal	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringC1Ei
	subl	$4, %esp
	movl	LC46, %eax
	movl	%eax, 16(%esp)
	movl	LC46, %eax
	movl	%eax, 12(%esp)
	movl	LC46, %eax
	movl	%eax, 8(%esp)
	movl	LC46, %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$11, -156(%ebp)
	call	__Z20bb_graphics_DrawText6Stringffff
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2222:
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2216:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2214:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2211:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2207:
	movl	$0, -168(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2255
L2244:
	movl	%eax, -168(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2231
L2246:
	movl	%eax, -168(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2233
L2251:
	movl	%eax, -168(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIS_I6StringEED1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2235
L2252:
	movl	%eax, -168(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2235
L2250:
	movl	%eax, -168(%ebp)
L2235:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2237
L2249:
	movl	%eax, -168(%ebp)
L2237:
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2238
L2248:
	movl	%eax, -168(%ebp)
L2238:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2239
L2247:
	movl	%eax, -168(%ebp)
L2239:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2233
L2245:
	movl	%eax, -168(%ebp)
L2233:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2231
L2243:
	movl	%eax, -168(%ebp)
L2231:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2240
L2241:
	leal	24(%ebp), %ebp
	movl	-152(%ebp), %eax
	cmpl	$10, -156(%ebp)
	ja	L2253
	movl	-156(%ebp), %edx
	sall	$2, %edx
	addl	$L2254, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2254:
	.long	L2242
	.long	L2243
	.long	L2244
	.long	L2245
	.long	L2246
	.long	L2247
	.long	L2248
	.long	L2249
	.long	L2250
	.long	L2251
	.long	L2252
	.text
L2253:
		.word	0x0b0f
L2242:
	movl	%eax, -168(%ebp)
L2240:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -156(%ebp)
	call	__Unwind_SjLj_Resume
L2255:
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-168(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1141:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1141-LLSDACSB1141
LLSDACSB1141:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
	.uleb128 0xa
	.uleb128 0
LLSDACSE1141:
	.text
	.align 2
	.globl	__ZN10c_Game_app4markEv
	.def	__ZN10c_Game_app4markEv;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1142, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2258, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5c_App4markEv
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ImageEvPT_
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ImageEvPT_
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ImageEvPT_
	movl	-44(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ImageEvPT_
	movl	-44(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ImageEvPT_
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -28(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z9gc_mark_qIiEv5ArrayIT_E
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ImageEvPT_
	movl	-44(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_SoundEvPT_
	movl	-44(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_SoundEvPT_
	movl	-44(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ImageEvPT_
	movl	-44(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ImageEvPT_
	movl	-44(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI17c_CollisionReaderEvPT_
	movl	-44(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI8c_JennidEvPT_
	movl	-44(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI8c_JennidEvPT_
	jmp	L2260
L2258:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2260:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1142:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1142-LLSDACSB1142
LLSDACSB1142:
	.uleb128 0
	.uleb128 0
LLSDACSE1142:
	.text
	.section .rdata,"dr"
LC370:
	.ascii "(Game_app)\12\0"
LC371:
	.ascii "ToState\0"
LC372:
	.ascii "Set1\0"
LC373:
	.ascii "Set2\0"
LC374:
	.ascii "Set3\0"
LC375:
	.ascii "Set4\0"
LC376:
	.ascii "CurrentFrame\0"
LC377:
	.ascii "GrabSet\0"
LC378:
	.ascii "GameState\0"
LC379:
	.ascii "MenuPointer\0"
LC380:
	.ascii "AnimationSheet\0"
LC381:
	.ascii "Welcome\0"
LC382:
	.ascii "Nbidia\0"
LC383:
	.ascii "ArenaB\0"
LC384:
	.ascii "Collision\0"
LC385:
	.ascii "Map1\0"
LC386:
	.ascii "Map2\0"
LC387:
	.ascii "Map3\0"
LC388:
	.ascii "P1\0"
LC389:
	.ascii "P2\0"
LC390:
	.ascii "DeveloperMode\0"
LC391:
	.ascii "LoadingB\0"
LC392:
	.ascii "FrameRate\0"
LC393:
	.ascii "Output\0"
LC394:
	.ascii "SelectedMap\0"
LC395:
	.ascii "MapGrid\0"
LC396:
	.ascii "BAttackGrid\0"
LC397:
	.ascii "SAttackGrid\0"
LC398:
	.ascii "Time\0"
	.text
	.align 2
	.globl	__ZN10c_Game_app5debugEv
	.def	__ZN10c_Game_app5debugEv;	.scl	2;	.type	32;	.endef
__ZN10c_Game_app5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$220, %esp
	movl	%ecx, -156(%ebp)
	movl	$___gxx_personality_sj0, -184(%ebp)
	movl	$LLSDA1143, -180(%ebp)
	leal	-176(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2292, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-156(%ebp), %eax
	movl	$LC370, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %edx
	leal	-140(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5c_App5debugEv
	subl	$4, %esp
	leal	-144(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-140(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	movl	-156(%ebp), %eax
	leal	-144(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	76(%eax), %edx
	leal	-136(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC371, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declI6StringES0_PKcPT_
	movl	-156(%ebp), %eax
	leal	-136(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-132(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC372, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-132(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-128(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC373, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-128(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	24(%eax), %edx
	leal	-124(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC374, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-124(%ebp), %edx
	movl	%edx, (%esp)
	movl	$5, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	28(%eax), %edx
	leal	-120(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC375, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-120(%ebp), %edx
	movl	%edx, (%esp)
	movl	$6, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	leal	-116(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC376, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-116(%ebp), %edx
	movl	%edx, (%esp)
	movl	$7, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	36(%eax), %edx
	leal	-112(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC377, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-112(%ebp), %edx
	movl	%edx, (%esp)
	movl	$8, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	80(%eax), %edx
	leal	-108(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC378, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declI6StringES0_PKcPT_
	movl	-156(%ebp), %eax
	leal	-108(%ebp), %edx
	movl	%edx, (%esp)
	movl	$9, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	40(%eax), %edx
	leal	-104(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC379, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declI5ArrayIiEE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-104(%ebp), %edx
	movl	%edx, (%esp)
	movl	$10, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	44(%eax), %edx
	leal	-100(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC380, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-100(%ebp), %edx
	movl	%edx, (%esp)
	movl	$11, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	48(%eax), %edx
	leal	-96(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC381, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP7c_SoundE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-96(%ebp), %edx
	movl	%edx, (%esp)
	movl	$12, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	52(%eax), %edx
	leal	-92(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC382, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP7c_SoundE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-92(%ebp), %edx
	movl	%edx, (%esp)
	movl	$13, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	56(%eax), %edx
	leal	-88(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC383, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-88(%ebp), %edx
	movl	%edx, (%esp)
	movl	$14, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	88(%eax), %edx
	leal	-84(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC384, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP17c_CollisionReaderE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-84(%ebp), %edx
	movl	%edx, (%esp)
	movl	$15, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	60(%eax), %edx
	leal	-80(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC385, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declI6StringES0_PKcPT_
	movl	-156(%ebp), %eax
	leal	-80(%ebp), %edx
	movl	%edx, (%esp)
	movl	$16, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	64(%eax), %edx
	leal	-76(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC386, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declI6StringES0_PKcPT_
	movl	-156(%ebp), %eax
	leal	-76(%ebp), %edx
	movl	%edx, (%esp)
	movl	$17, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	68(%eax), %edx
	leal	-72(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC387, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declI6StringES0_PKcPT_
	movl	-156(%ebp), %eax
	leal	-72(%ebp), %edx
	movl	%edx, (%esp)
	movl	$18, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	92(%eax), %edx
	leal	-68(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC388, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP8c_JennidE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-68(%ebp), %edx
	movl	%edx, (%esp)
	movl	$19, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	96(%eax), %edx
	leal	-64(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC389, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP8c_JennidE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-64(%ebp), %edx
	movl	%edx, (%esp)
	movl	$20, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	104(%eax), %edx
	leal	-60(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC390, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIbE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	$21, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	72(%eax), %edx
	leal	-56(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC391, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, (%esp)
	movl	$22, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	108(%eax), %edx
	leal	-52(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC392, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	$23, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	112(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC393, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	$24, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	84(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC394, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declI6StringES0_PKcPT_
	movl	-156(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	$25, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-40(%ebp), %eax
	movl	$__ZN10c_Game_app9m_MapGridE, 8(%esp)
	movl	$LC395, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declI5ArrayIS0_I6StringEEES1_PKcPT_
	movl	-156(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	$26, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-36(%ebp), %eax
	movl	$__ZN10c_Game_app13m_BAttackGridE, 8(%esp)
	movl	$LC396, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declI5ArrayIS0_I6StringEEES1_PKcPT_
	movl	-156(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$27, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-32(%ebp), %eax
	movl	$__ZN10c_Game_app13m_SAttackGridE, 8(%esp)
	movl	$LC397, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declI5ArrayIS0_I6StringEEES1_PKcPT_
	movl	-156(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$28, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	100(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC398, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -204(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-156(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$29, -204(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L2324
L2294:
	movl	%eax, -212(%ebp)
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2295:
	movl	%eax, -212(%ebp)
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2296:
	movl	%eax, -212(%ebp)
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2297:
	movl	%eax, -212(%ebp)
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2298:
	movl	%eax, -212(%ebp)
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2299:
	movl	%eax, -212(%ebp)
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2300:
	movl	%eax, -212(%ebp)
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2301:
	movl	%eax, -212(%ebp)
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2302:
	movl	%eax, -212(%ebp)
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2303:
	movl	%eax, -212(%ebp)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2304:
	movl	%eax, -212(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2305:
	movl	%eax, -212(%ebp)
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2306:
	movl	%eax, -212(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2307:
	movl	%eax, -212(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2308:
	movl	%eax, -212(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2309:
	movl	%eax, -212(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2310:
	movl	%eax, -212(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2311:
	movl	%eax, -212(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2312:
	movl	%eax, -212(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2313:
	movl	%eax, -212(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2314:
	movl	%eax, -212(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2315:
	movl	%eax, -212(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2316:
	movl	%eax, -212(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2317:
	movl	%eax, -212(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2318:
	movl	%eax, -212(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2319:
	movl	%eax, -212(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2320:
	movl	%eax, -212(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2321:
	movl	%eax, -212(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	L2264
L2292:
	leal	24(%ebp), %ebp
	movl	-200(%ebp), %eax
	cmpl	$28, -204(%ebp)
	ja	L2322
	movl	-204(%ebp), %edx
	sall	$2, %edx
	addl	$L2323, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2323:
	.long	L2293
	.long	L2294
	.long	L2295
	.long	L2296
	.long	L2297
	.long	L2298
	.long	L2299
	.long	L2300
	.long	L2301
	.long	L2302
	.long	L2303
	.long	L2304
	.long	L2305
	.long	L2306
	.long	L2307
	.long	L2308
	.long	L2309
	.long	L2310
	.long	L2311
	.long	L2312
	.long	L2313
	.long	L2314
	.long	L2315
	.long	L2316
	.long	L2317
	.long	L2318
	.long	L2319
	.long	L2320
	.long	L2321
	.text
L2322:
		.word	0x0b0f
L2293:
	movl	%eax, -212(%ebp)
L2264:
	movl	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-212(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -204(%ebp)
	call	__Unwind_SjLj_Resume
L2324:
	leal	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-156(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1143:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1143-LLSDACSB1143
LLSDACSB1143:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
	.uleb128 0xa
	.uleb128 0
	.uleb128 0xb
	.uleb128 0
	.uleb128 0xc
	.uleb128 0
	.uleb128 0xd
	.uleb128 0
	.uleb128 0xe
	.uleb128 0
	.uleb128 0xf
	.uleb128 0
	.uleb128 0x10
	.uleb128 0
	.uleb128 0x11
	.uleb128 0
	.uleb128 0x12
	.uleb128 0
	.uleb128 0x13
	.uleb128 0
	.uleb128 0x14
	.uleb128 0
	.uleb128 0x15
	.uleb128 0
	.uleb128 0x16
	.uleb128 0
	.uleb128 0x17
	.uleb128 0
	.uleb128 0x18
	.uleb128 0
	.uleb128 0x19
	.uleb128 0
	.uleb128 0x1a
	.uleb128 0
	.uleb128 0x1b
	.uleb128 0
	.uleb128 0x1c
	.uleb128 0
LLSDACSE1143:
	.text
	.globl	_bb_app__app
	.bss
	.align 4
_bb_app__app:
	.space 4
	.section	.text$_ZN14BBGameDelegateC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegateC2Ev
	.def	__ZN14BBGameDelegateC2Ev;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegateC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14BBGameDelegate+8, (%eax)
	leave
	ret
	.section	.text$_ZN14BBGameDelegateD2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegateD2Ev
	.def	__ZN14BBGameDelegateD2Ev;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegateD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV14BBGameDelegate+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L2326
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L2326:
	leave
	ret
	.section	.text$_ZN14BBGameDelegateD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegateD1Ev
	.def	__ZN14BBGameDelegateD1Ev;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegateD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV14BBGameDelegate+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L2329
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L2329:
	leave
	ret
	.section	.text$_ZN14BBGameDelegateD0Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14BBGameDelegateD0Ev
	.def	__ZN14BBGameDelegateD0Ev;	.scl	2;	.type	32;	.endef
__ZN14BBGameDelegateD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN14BBGameDelegateD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	leave
	ret
	.text
	.align 2
	.globl	__ZN14c_GameDelegateC2Ev
	.def	__ZN14c_GameDelegateC2Ev;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegateC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN14BBGameDelegateC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14c_GameDelegate+8, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 24(%eax)
	leave
	ret
	.globl	__ZN14c_GameDelegateC1Ev
	.def	__ZN14c_GameDelegateC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN14c_GameDelegateC1Ev,__ZN14c_GameDelegateC2Ev
	.section	.text$_ZN14dbg_var_type_tIP14c_GameDelegateEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP14c_GameDelegateEC1Ev
	.def	__ZN14dbg_var_type_tIP14c_GameDelegateEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP14c_GameDelegateEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP14c_GameDelegateE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC399:
	.ascii "GameDelegate.new\0"
	.align 4
LC400:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<65>\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate5m_newEv
	.def	__ZN14c_GameDelegate5m_newEv;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate5m_newEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1154, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2340, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC399, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC400, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2337
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2337:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2342
L2340:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2342:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1154:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1154-LLSDACSB1154
LLSDACSB1154:
	.uleb128 0
	.uleb128 0
LLSDACSE1154:
	.text
	.section .rdata,"dr"
LC401:
	.ascii "GameDelegate.StartGame\0"
	.align 4
LC402:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<75>\0"
	.align 4
LC403:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<76>\0"
	.align 4
LC404:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<77>\0"
	.align 4
LC405:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<79>\0"
	.align 4
LC406:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<80>\0"
	.align 4
LC407:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<82>\0"
	.align 4
LC408:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<83>\0"
	.align 4
LC409:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<85>\0"
	.align 4
LC410:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<87>\0"
	.align 4
LC411:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<89>\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate9StartGameEv
	.def	__ZN14c_GameDelegate9StartGameEv;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate9StartGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1158, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2358, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC401, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC402, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2344
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2344:
	movl	$23636, (%esp)
	movl	$1, -92(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -100(%ebp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN12gxtkGraphicsC1Ev
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	-100(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z9gc_assignI12gxtkGraphicsS0_EvRPT_PT0_
	movl	$LC403, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2345
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2345:
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z29bb_graphics_SetGraphicsDeviceP12gxtkGraphics
	movl	$LC404, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2346
	call	__Z8dbg_stopv
L2346:
	movl	$32, 4(%esp)
	movl	$0, (%esp)
	movl	$1, -92(%ebp)
	call	__Z19bb_graphics_SetFontP7c_Imagei
	movl	$LC405, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2347
	call	__Z8dbg_stopv
L2347:
	movl	$552, (%esp)
	movl	$1, -92(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -104(%ebp)
	movl	$3, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN9gxtkAudioC1Ev
	movl	-44(%ebp), %eax
	addl	$20, %eax
	movl	-104(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z9gc_assignI9gxtkAudioS0_EvRPT_PT0_
	movl	$LC406, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2348
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2348:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z23bb_audio_SetAudioDeviceP9gxtkAudio
	movl	$LC407, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2349
	call	__Z8dbg_stopv
L2349:
	movl	$76, (%esp)
	movl	$1, -92(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -108(%ebp)
	movl	$4, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDeviceC1Ev
	movl	$1, -92(%ebp)
	movl	-108(%ebp), %ecx
	call	__ZN13c_InputDevice5m_newEv
	movl	-44(%ebp), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI13c_InputDeviceS0_EvRPT_PT0_
	movl	$LC408, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2350
	call	__Z8dbg_stopv
L2350:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z23bb_input_SetInputDeviceP13c_InputDevice
	movl	$LC409, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2351
	call	__Z8dbg_stopv
L2351:
	movl	$0, (%esp)
	movl	$1, -92(%ebp)
	call	__Z27bb_app_ValidateDeviceWindowb
	movl	$LC410, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2352
	call	__Z8dbg_stopv
L2352:
	movl	$1, -92(%ebp)
	call	__Z23bb_app_EnumDisplayModesv
	movl	$LC411, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2353
	call	__Z8dbg_stopv
L2353:
	movl	_bb_app__app, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %eax
	movl	_bb_app__app, %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2363
L2360:
	movl	%edx, -104(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-104(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2355
L2361:
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2355
L2362:
	movl	%edx, -100(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2355
L2358:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L2359
	subl	$1, %eax
	testl	%eax, %eax
	je	L2360
	subl	$1, %eax
	testl	%eax, %eax
	je	L2361
	subl	$1, %eax
	testl	%eax, %eax
	je	L2362
	subl	$1, %eax
		.word	0x0b0f
L2359:
	movl	%edx, -100(%ebp)
L2355:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2363:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1158-LLSDACSB1158
LLSDACSB1158:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1158:
	.text
	.section .rdata,"dr"
LC412:
	.ascii "GameDelegate.SuspendGame\0"
	.align 4
LC413:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<93>\0"
	.align 4
LC414:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<94>\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate11SuspendGameEv
	.def	__ZN14c_GameDelegate11SuspendGameEv;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate11SuspendGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1159, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2368, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC412, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC413, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2365
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2365:
	movl	_bb_app__app, %eax
	movl	%eax, %ecx
	call	__ZN5c_App11p_OnSuspendEv
	movl	$LC414, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2366
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2366:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	20(%edx), %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2370
L2368:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2370:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1159-LLSDACSB1159
LLSDACSB1159:
	.uleb128 0
	.uleb128 0
LLSDACSE1159:
	.text
	.section .rdata,"dr"
LC415:
	.ascii "GameDelegate.ResumeGame\0"
	.align 4
LC416:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<98>\0"
	.align 4
LC417:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<99>\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate10ResumeGameEv
	.def	__ZN14c_GameDelegate10ResumeGameEv;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate10ResumeGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1160, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2375, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC415, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC416, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2372
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2372:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	20(%edx), %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	$LC417, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2373
	call	__Z8dbg_stopv
L2373:
	movl	_bb_app__app, %eax
	movl	%eax, %ecx
	call	__ZN5c_App10p_OnResumeEv
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2377
L2375:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2377:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1160:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1160-LLSDACSB1160
LLSDACSB1160:
	.uleb128 0
	.uleb128 0
LLSDACSE1160:
	.text
	.section .rdata,"dr"
LC418:
	.ascii "GameDelegate.UpdateGame\0"
	.align 4
LC419:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<103>\0"
	.align 4
LC420:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<104>\0"
	.align 4
LC421:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<105>\0"
	.align 4
LC422:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<106>\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate10UpdateGameEv
	.def	__ZN14c_GameDelegate10UpdateGameEv;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate10UpdateGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1161, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2384, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC418, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC419, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2379
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2379:
	movl	$1, (%esp)
	movl	$1, -92(%ebp)
	call	__Z27bb_app_ValidateDeviceWindowb
	movl	$LC420, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2380
	call	__Z8dbg_stopv
L2380:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice13p_BeginUpdateEv
	movl	$LC421, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2381
	call	__Z8dbg_stopv
L2381:
	movl	_bb_app__app, %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	_bb_app__app, %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	$LC422, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2382
	call	__Z8dbg_stopv
L2382:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice11p_EndUpdateEv
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2386
L2384:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2386:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1161:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1161-LLSDACSB1161
LLSDACSB1161:
	.uleb128 0
	.uleb128 0
LLSDACSE1161:
	.text
	.section .rdata,"dr"
LC423:
	.ascii "GameDelegate.RenderGame\0"
	.align 4
LC424:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<110>\0"
	.align 4
LC425:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<111>\0"
LC426:
	.ascii "mode\0"
	.align 4
LC427:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<112>\0"
	.align 4
LC428:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<113>\0"
	.align 4
LC429:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<114>\0"
	.align 4
LC430:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<115>\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate10RenderGameEv
	.def	__ZN14c_GameDelegate10RenderGameEv;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate10RenderGameEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA1162, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2402, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC423, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC424, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2388
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2388:
	movl	$1, (%esp)
	movl	$1, -124(%ebp)
	call	__Z27bb_app_ValidateDeviceWindowb
	movl	$LC425, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2389
	call	__Z8dbg_stopv
L2389:
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	-76(%ebp), %edx
	movl	16(%edx), %edx
	movl	$1, -124(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC426, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC427, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2390
	call	__Z8dbg_stopv
L2390:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	L2391
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$2, -124(%ebp)
	call	__Z23bb_graphics_BeginRenderv
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2391:
	movl	$LC428, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2392
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2392:
	movl	-44(%ebp), %eax
	cmpl	$2, %eax
	jne	L2393
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	_bb_app__app, %eax
	movl	%eax, %ecx
	call	__ZN5c_App11p_OnLoadingEv
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2394
L2393:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	_bb_app__app, %eax
	movl	(%eax), %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	_bb_app__app, %edx
	movl	$3, -124(%ebp)
	movl	%edx, %ecx
	call	*%eax
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2394:
	movl	$LC429, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2395
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2395:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	L2396
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$4, -124(%ebp)
	call	__Z21bb_graphics_EndRenderv
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2396:
	movl	$LC430, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2397
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2397:
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movl	(%eax), %eax
	movl	-76(%ebp), %edx
	movl	16(%edx), %edx
	movl	$1, -124(%ebp)
	movl	%edx, %ecx
	call	*%eax
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2407
L2404:
	movl	%edx, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2399
L2405:
	movl	%edx, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2399
L2406:
	movl	%edx, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2399
L2402:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L2403
	subl	$1, %eax
	testl	%eax, %eax
	je	L2404
	subl	$1, %eax
	testl	%eax, %eax
	je	L2405
	subl	$1, %eax
	testl	%eax, %eax
	je	L2406
	subl	$1, %eax
		.word	0x0b0f
L2403:
	movl	%edx, -132(%ebp)
L2399:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L2407:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1162-LLSDACSB1162
LLSDACSB1162:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1162:
	.text
	.section .rdata,"dr"
LC431:
	.ascii "GameDelegate.KeyEvent\0"
LC432:
	.ascii "event\0"
	.align 4
LC433:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<119>\0"
	.align 4
LC434:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<120>\0"
	.align 4
LC435:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<121>\0"
	.align 4
LC436:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<122>\0"
	.align 4
LC437:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<123>\0"
	.align 4
LC438:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<124>\0"
	.align 4
LC439:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<125>\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate8KeyEventEii
	.def	__ZN14c_GameDelegate8KeyEventEii;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate8KeyEventEii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA1163, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2428, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC431, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC432, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC42, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC433, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2409
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2409:
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	24(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	$1, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice10p_KeyEventEii
	subl	$8, %esp
	movl	$LC434, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2410
	call	__Z8dbg_stopv
L2410:
	movl	8(%ebp), %eax
	cmpl	$1, %eax
	je	L2411
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -132(%ebp)
	jmp	L2412
L2411:
	movl	$LC435, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2413
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2413:
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC288, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC436, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2414
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2414:
	movl	-44(%ebp), %eax
	cmpl	$432, %eax
	jne	L2415
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC437, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2416
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L2416:
	movl	_bb_app__app, %eax
	movl	$2, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_App9p_OnCloseEv
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2417
L2415:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC438, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2418
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L2418:
	movl	-44(%ebp), %eax
	cmpl	$416, %eax
	jne	L2419
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC439, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2420
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L2420:
	movl	_bb_app__app, %eax
	movl	$4, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_App8p_OnBackEv
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2419:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2417:
	movl	$1, -132(%ebp)
L2412:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -132(%ebp)
	je	L2434
	jmp	L2408
L2434:
	nop
	jmp	L2408
L2430:
	movl	%edx, -132(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2425
L2432:
	movl	%edx, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2427
L2431:
	movl	%edx, -132(%ebp)
L2427:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2425
L2428:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L2429
	subl	$1, %eax
	testl	%eax, %eax
	je	L2430
	subl	$1, %eax
	testl	%eax, %eax
	je	L2431
	subl	$1, %eax
	testl	%eax, %eax
	je	L2432
	subl	$1, %eax
		.word	0x0b0f
L2429:
	movl	%edx, -132(%ebp)
L2425:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L2408:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1163:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1163-LLSDACSB1163
LLSDACSB1163:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1163:
	.text
	.section	.text$_ZN14dbg_var_type_tIfEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIfEC1Ev
	.def	__ZN14dbg_var_type_tIfEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIfEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIfE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC440:
	.ascii "GameDelegate.MouseEvent\0"
	.align 4
LC441:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<130>\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate10MouseEventEiiff
	.def	__ZN14c_GameDelegate10MouseEventEiiff;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate10MouseEventEiiff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1164, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %edi
	movl	%edi, (%eax)
	movl	$L2439, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC440, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC432, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC42, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC224, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC225, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC441, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2437
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2437:
	movl	20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	12(%ebp), %esi
	movl	8(%ebp), %ebx
	movl	-44(%ebp), %ecx
	movl	24(%ecx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	$1, -92(%ebp)
	call	__ZN13c_InputDevice12p_MouseEventEiiff
	subl	$16, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2441
L2439:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2441:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$16
	.section	.gcc_except_table,"w"
LLSDA1164:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1164-LLSDACSB1164
LLSDACSB1164:
	.uleb128 0
	.uleb128 0
LLSDACSE1164:
	.text
	.section .rdata,"dr"
LC442:
	.ascii "GameDelegate.TouchEvent\0"
	.align 4
LC443:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<134>\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate10TouchEventEiiff
	.def	__ZN14c_GameDelegate10TouchEventEiiff;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate10TouchEventEiiff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1168, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %edi
	movl	%edi, (%eax)
	movl	$L2445, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC442, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC432, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC42, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC224, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC225, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC443, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2443
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2443:
	movl	20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	12(%ebp), %esi
	movl	8(%ebp), %ebx
	movl	-44(%ebp), %ecx
	movl	24(%ecx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	$1, -92(%ebp)
	call	__ZN13c_InputDevice12p_TouchEventEiiff
	subl	$16, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2447
L2445:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2447:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$16
	.section	.gcc_except_table,"w"
LLSDA1168:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1168-LLSDACSB1168
LLSDACSB1168:
	.uleb128 0
	.uleb128 0
LLSDACSE1168:
	.text
	.section .rdata,"dr"
LC444:
	.ascii "GameDelegate.MotionEvent\0"
LC445:
	.ascii "z\0"
	.align 4
LC446:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<138>\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate11MotionEventEiifff
	.def	__ZN14c_GameDelegate11MotionEventEiifff;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate11MotionEventEiifff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1169, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L2451, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC444, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %edi
	movl	%edi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC432, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC42, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC224, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC225, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	24(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC445, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC446, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2449
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2449:
	movl	24(%ebp), %ecx
	movl	20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	12(%ebp), %edi
	movl	8(%ebp), %esi
	movl	-44(%ebp), %ebx
	movl	24(%ebx), %ebx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$1, -92(%ebp)
	movl	%ebx, %ecx
	call	__ZN13c_InputDevice13p_MotionEventEiifff
	subl	$20, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2453
L2451:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2453:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$20
	.section	.gcc_except_table,"w"
LLSDA1169:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1169-LLSDACSB1169
LLSDACSB1169:
	.uleb128 0
	.uleb128 0
LLSDACSE1169:
	.text
	.section .rdata,"dr"
LC447:
	.ascii "GameDelegate.DiscardGraphics\0"
	.align 4
LC448:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<142>\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate15DiscardGraphicsEv
	.def	__ZN14c_GameDelegate15DiscardGraphicsEv;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate15DiscardGraphicsEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1170, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2457, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC447, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC448, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2455
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2455:
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	addl	$40, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	16(%edx), %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2459
L2457:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2459:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1170:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1170-LLSDACSB1170
LLSDACSB1170:
	.uleb128 0
	.uleb128 0
LLSDACSE1170:
	.text
	.align 2
	.globl	__ZN14c_GameDelegate4markEv
	.def	__ZN14c_GameDelegate4markEv;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_object4markEv
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI12gxtkGraphicsEvPT_
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI9gxtkAudioEvPT_
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI13c_InputDeviceEvPT_
	leave
	ret
	.section .rdata,"dr"
LC449:
	.ascii "(GameDelegate)\12\0"
LC450:
	.ascii "_graphics\0"
LC451:
	.ascii "_audio\0"
LC452:
	.ascii "_input\0"
	.text
	.align 2
	.globl	__ZN14c_GameDelegate5debugEv
	.def	__ZN14c_GameDelegate5debugEv;	.scl	2;	.type	32;	.endef
__ZN14c_GameDelegate5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1172, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2467, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC449, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC450, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declIP12gxtkGraphicsE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC451, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declIP9gxtkAudioE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	24(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC452, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declIP13c_InputDeviceE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L2472
L2469:
	movl	%edx, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2464
L2470:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2464
L2471:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2464
L2467:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L2468
	subl	$1, %eax
	testl	%eax, %eax
	je	L2469
	subl	$1, %eax
	testl	%eax, %eax
	je	L2470
	subl	$1, %eax
	testl	%eax, %eax
	je	L2471
	subl	$1, %eax
		.word	0x0b0f
L2468:
	movl	%edx, -100(%ebp)
L2464:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2472:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-44(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1172:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1172-LLSDACSB1172
LLSDACSB1172:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1172:
	.text
	.globl	_bb_app__delegate
	.bss
	.align 4
_bb_app__delegate:
	.space 4
	.globl	_bb_app__game
	.align 4
_bb_app__game:
	.space 4
	.globl	_bb_Test_Game
	.align 4
_bb_Test_Game:
	.space 4
	.section .rdata,"dr"
LC453:
	.ascii "Main\0"
	.align 4
LC454:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<17>\0"
	.text
	.globl	__Z6bbMainv
	.def	__Z6bbMainv;	.scl	2;	.type	32;	.endef
__Z6bbMainv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1173, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2478, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC453, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	$LC454, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2474
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L2474:
	movl	$116, (%esp)
	movl	$1, -88(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -96(%ebp)
	movl	$2, -88(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_appC1Ev
	movl	$1, -88(%ebp)
	movl	-96(%ebp), %ecx
	call	__ZN10c_Game_app5m_newEv
	movl	%eax, 4(%esp)
	movl	$_bb_Test_Game, (%esp)
	call	__Z9gc_assignI10c_Game_appS0_EvRPT_PT0_
	movl	$0, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L2481
L2480:
	movl	%edx, -100(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-100(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L2477
L2478:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %edx
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	L2479
	subl	$1, %eax
	testl	%eax, %eax
	je	L2480
	subl	$1, %eax
		.word	0x0b0f
L2479:
	movl	%edx, -96(%ebp)
L2477:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L2481:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-96(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1173:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1173-LLSDACSB1173
LLSDACSB1173:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1173:
	.text
	.globl	_bb_graphics_device
	.bss
	.align 4
_bb_graphics_device:
	.space 4
	.section	.text$_ZN14dbg_var_type_tIP12gxtkGraphicsEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP12gxtkGraphicsEC1Ev
	.def	__ZN14dbg_var_type_tIP12gxtkGraphicsEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP12gxtkGraphicsEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP12gxtkGraphicsE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC455:
	.ascii "SetGraphicsDevice\0"
LC456:
	.ascii "dev\0"
	.align 4
LC457:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<63>\0"
	.text
	.globl	__Z29bb_graphics_SetGraphicsDeviceP12gxtkGraphics
	.def	__Z29bb_graphics_SetGraphicsDeviceP12gxtkGraphics;	.scl	2;	.type	32;	.endef
__Z29bb_graphics_SetGraphicsDeviceP12gxtkGraphics:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1174, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2487, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC455, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC456, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP12gxtkGraphicsE4infoE, (%eax)
	movl	$LC457, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2484
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L2484:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_bb_graphics_device, (%esp)
	call	__Z9gc_assignI12gxtkGraphicsS0_EvRPT_PT0_
	movl	$0, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L2489
L2487:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L2489:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-96(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1174:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1174-LLSDACSB1174
LLSDACSB1174:
	.uleb128 0
	.uleb128 0
LLSDACSE1174:
	.text
	.align 2
	.globl	__ZN7c_ImageC2Ev
	.def	__ZN7c_ImageC2Ev;	.scl	2;	.type	32;	.endef
__ZN7c_ImageC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-28(%ebp), %eax
	movl	$__ZTV7c_Image+8, (%eax)
	movl	-28(%ebp), %eax
	addl	$28, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameEC1Ev
	movl	-28(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-28(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-28(%ebp), %eax
	movl	$0, 24(%eax)
	leal	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameEC1Ev
	movl	-28(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 28(%eax)
	leal	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	-28(%ebp), %eax
	movl	$0, 32(%eax)
	movl	-28(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 36(%edx)
	movl	-28(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 40(%edx)
	movl	-28(%ebp), %eax
	movl	$0, 44(%eax)
	leave
	ret
	.globl	__ZN7c_ImageC1Ev
	.def	__ZN7c_ImageC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN7c_ImageC1Ev,__ZN7c_ImageC2Ev
	.globl	__ZN7c_Image14m_DefaultFlagsE
	.bss
	.align 4
__ZN7c_Image14m_DefaultFlagsE:
	.space 4
	.section .rdata,"dr"
LC458:
	.ascii "Image.new\0"
	.align 4
LC459:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<70>\0"
	.text
	.align 2
	.globl	__ZN7c_Image5m_newEv
	.def	__ZN7c_Image5m_newEv;	.scl	2;	.type	32;	.endef
__ZN7c_Image5m_newEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1181, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2495, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC458, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	$LC459, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2492
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2492:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2497
L2495:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2497:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1181:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1181-LLSDACSB1181
LLSDACSB1181:
	.uleb128 0
	.uleb128 0
LLSDACSE1181:
	.text
	.section .rdata,"dr"
LC460:
	.ascii "Image.SetHandle\0"
LC461:
	.ascii "tx\0"
LC462:
	.ascii "ty\0"
	.align 4
LC463:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<114>\0"
	.align 4
LC464:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<115>\0"
	.align 4
LC465:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<116>\0"
	.text
	.align 2
	.globl	__ZN7c_Image11p_SetHandleEff
	.def	__ZN7c_Image11p_SetHandleEff;	.scl	2;	.type	32;	.endef
__ZN7c_Image11p_SetHandleEff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1182, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2504, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC460, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC461, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC462, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC463, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2499
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2499:
	movl	8(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 36(%edx)
	movl	$LC464, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2500
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2500:
	movl	12(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 40(%edx)
	movl	$LC465, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2501
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2501:
	movl	-44(%ebp), %eax
	movl	32(%eax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	$0, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2506
L2504:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2506:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1182:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1182-LLSDACSB1182
LLSDACSB1182:
	.uleb128 0
	.uleb128 0
LLSDACSE1182:
	.text
	.section	.text$_ZN14dbg_var_type_tIP7c_FrameEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP7c_FrameEC1Ev
	.def	__ZN14dbg_var_type_tIP7c_FrameEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP7c_FrameEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP7c_FrameE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC466:
	.ascii "Image.ApplyFlags\0"
LC467:
	.ascii "iflags\0"
	.align 4
LC468:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<197>\0"
	.align 4
LC469:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<199>\0"
	.align 4
LC470:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<200>\0"
LC471:
	.ascii "f\0"
	.align 4
LC472:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<201>\0"
	.align 4
LC473:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<203>\0"
	.align 4
LC474:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<206>\0"
	.align 4
LC475:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<207>\0"
	.align 4
LC476:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<208>\0"
	.align 4
LC477:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<210>\0"
	.align 4
LC478:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<213>\0"
	.align 4
LC479:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<214>\0"
	.align 4
LC480:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<217>\0"
	.align 4
LC481:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<218>\0"
	.text
	.align 2
	.globl	__ZN7c_Image12p_ApplyFlagsEi
	.def	__ZN7c_Image12p_ApplyFlagsEi;	.scl	2;	.type	32;	.endef
__ZN7c_Image12p_ApplyFlagsEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	movl	%ecx, -92(%ebp)
	movl	$___gxx_personality_sj0, -120(%ebp)
	movl	$LLSDA1183, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2542, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-44(%ebp), %eax
	movl	$LC466, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-92(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-48(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC467, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC468, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2509
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2509:
	movl	8(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	$LC469, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2510
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2510:
	movl	-92(%ebp), %eax
	movl	32(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L2511
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC470, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2512
	movl	$2, -140(%ebp)
	call	__Z8dbg_stopv
L2512:
	movl	-92(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	$0, -28(%ebp)
	jmp	L2513
L2515:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-56(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	addl	$1, -28(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-64(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC471, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_FrameE4infoE, (%eax)
	movl	$LC472, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2514
	call	__Z8dbg_stopv
L2514:
	movl	-64(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	16(%edx), %edx
	addl	$1, %edx
	movl	%edx, 16(%eax)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2513:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIP7c_FrameE6LengthEv
	cmpl	-28(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	L2515
	movl	$LC473, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2516
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L2516:
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	leal	-2(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 20(%eax)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2511:
	movl	$LC474, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2517
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2517:
	movl	-92(%ebp), %eax
	movl	32(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	L2518
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC475, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2519
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L2519:
	movl	-92(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	$0, -32(%ebp)
	jmp	L2520
L2522:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-72(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$6, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	addl	$1, -32(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-80(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC471, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_FrameE4infoE, (%eax)
	movl	$LC476, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2521
	call	__Z8dbg_stopv
L2521:
	movl	-80(%ebp), %eax
	movl	-80(%ebp), %edx
	movl	20(%edx), %edx
	addl	$1, %edx
	movl	%edx, 20(%eax)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2520:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIP7c_FrameE6LengthEv
	cmpl	-32(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	L2522
	movl	$LC477, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2523
	movl	$7, -140(%ebp)
	call	__Z8dbg_stopv
L2523:
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	leal	-2(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 24(%eax)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2518:
	movl	$LC478, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2524
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2524:
	movl	-92(%ebp), %eax
	movl	32(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L2525
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC479, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2526
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L2526:
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -148(%ebp)
	fildl	-148(%ebp)
	flds	LC48
	fdivrp	%st, %st(1)
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -148(%ebp)
	fildl	-148(%ebp)
	flds	LC48
	fdivrp	%st, %st(1)
	fxch	%st(1)
	movl	-92(%ebp), %eax
	fstps	4(%esp)
	fstps	(%esp)
	movl	$8, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image11p_SetHandleEff
	subl	$8, %esp
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2525:
	movl	$LC480, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2527
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2527:
	movl	-92(%ebp), %eax
	addl	$28, %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIP7c_FrameE6LengthEv
	cmpl	$1, %eax
	jne	L2528
	movl	-92(%ebp), %eax
	addl	$28, %eax
	movl	$0, (%esp)
	movl	$1, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L2528
	movl	-92(%ebp), %eax
	addl	$28, %eax
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L2528
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -152(%ebp)
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	-92(%ebp), %edx
	movl	16(%edx), %edx
	movl	%edx, %ecx
	call	*%eax
	cmpl	%eax, -152(%ebp)
	jne	L2528
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -152(%ebp)
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	-92(%ebp), %edx
	movl	16(%edx), %edx
	movl	%edx, %ecx
	call	*%eax
	cmpl	%eax, -152(%ebp)
	jne	L2528
	movl	$1, %eax
	jmp	L2529
L2528:
	movl	$0, %eax
L2529:
	testb	%al, %al
	je	L2530
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC481, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2531
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L2531:
	movl	-92(%ebp), %eax
	movl	32(%eax), %eax
	orl	$65536, %eax
	movl	%eax, %edx
	movl	-92(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2530:
	movl	$0, -152(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2554
L2545:
	movl	%eax, -152(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2534
L2546:
	movl	%eax, -152(%ebp)
L2534:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2535
L2544:
	movl	%eax, -152(%ebp)
L2535:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2536
L2548:
	movl	%eax, -152(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2538
L2549:
	movl	%eax, -152(%ebp)
L2538:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2539
L2547:
	movl	%eax, -152(%ebp)
L2539:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2536
L2550:
	movl	%eax, -152(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2536
L2551:
	movl	%eax, -152(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2536
L2542:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %eax
	cmpl	$8, -140(%ebp)
	ja	L2552
	movl	-140(%ebp), %edx
	sall	$2, %edx
	addl	$L2553, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2553:
	.long	L2543
	.long	L2544
	.long	L2545
	.long	L2546
	.long	L2547
	.long	L2548
	.long	L2549
	.long	L2550
	.long	L2551
	.text
L2552:
		.word	0x0b0f
L2543:
	movl	%eax, -152(%ebp)
L2536:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L2554:
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-152(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1183:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1183-LLSDACSB1183
LLSDACSB1183:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
LLSDACSE1183:
	.text
	.section	.text$_ZN14dbg_var_type_tIP11gxtkSurfaceEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP11gxtkSurfaceEC1Ev
	.def	__ZN14dbg_var_type_tIP11gxtkSurfaceEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP11gxtkSurfaceEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP11gxtkSurfaceE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC482:
	.ascii "Image.Init\0"
LC483:
	.ascii "surf\0"
LC484:
	.ascii "nframes\0"
	.align 4
LC485:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<143>\0"
	.align 4
LC486:
	.ascii "I\0m\0a\0g\0e\0 \0a\0l\0r\0e\0a\0d\0y\0 \0i\0n\0i\0t\0i\0a\0l\0i\0z\0e\0d\0\0\0"
	.align 4
LC487:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<144>\0"
	.align 4
LC488:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<146>\0"
	.align 4
LC489:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<147>\0"
	.align 4
LC490:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<149>\0"
	.align 4
LC491:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<150>\0"
	.align 4
LC492:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<151>\0"
	.align 4
LC493:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<154>\0"
	.align 4
LC494:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<155>\0"
	.text
	.align 2
	.globl	__ZN7c_Image6p_InitEP11gxtkSurfaceii
	.def	__ZN7c_Image6p_InitEP11gxtkSurfaceii;	.scl	2;	.type	32;	.endef
__ZN7c_Image6p_InitEP11gxtkSurfaceii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA1187, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2575, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-44(%ebp), %eax
	movl	$LC482, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-48(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC483, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP11gxtkSurfaceE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC484, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC467, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC485, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2557
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2557:
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L2558
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-32(%ebp), %eax
	movl	$25, 4(%esp)
	movl	$LC486, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -124(%ebp)
	call	__Z7bbError6String
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2558:
	movl	$LC487, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2559
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2559:
	movl	8(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI11gxtkSurfaceS0_EvRPT_PT0_
	movl	$LC488, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2560
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2560:
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	-76(%ebp), %edx
	movl	16(%edx), %edx
	movl	$1, -124(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	12(%ebp), %ebx
	cltd
	idivl	%ebx
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	$LC489, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2561
	call	__Z8dbg_stopv
L2561:
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	-76(%ebp), %edx
	movl	16(%edx), %edx
	movl	$1, -124(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	-76(%ebp), %edx
	movl	%eax, 24(%edx)
	movl	$LC490, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2562
	call	__Z8dbg_stopv
L2562:
	movl	12(%ebp), %edx
	leal	-28(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameEC1Ei
	subl	$4, %esp
	movl	-76(%ebp), %eax
	leal	28(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$3, -124(%ebp)
	call	__Z9gc_assignIP7c_FrameEvR5ArrayIT_ES4_
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	$LC491, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2563
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2563:
	movl	$0, -56(%ebp)
	jmp	L2564
L2566:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-56(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC492, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2565
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L2565:
	movl	-76(%ebp), %eax
	movl	20(%eax), %edx
	movl	-56(%ebp), %eax
	imull	%eax, %edx
	movl	%edx, -136(%ebp)
	movl	$24, (%esp)
	movl	$4, -124(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -132(%ebp)
	movl	$5, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_FrameC1Ev
	movl	$0, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, -124(%ebp)
	movl	-132(%ebp), %ecx
	call	__ZN7c_Frame5m_newEii
	subl	$8, %esp
	movl	%eax, -136(%ebp)
	movl	-56(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$28, %edx
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN5ArrayIP7c_FrameE2AtEi
	subl	$4, %esp
	movl	-136(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z9gc_assignI7c_FrameS0_EvRPT_PT0_
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-56(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -56(%ebp)
L2564:
	movl	-56(%ebp), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	jl	L2566
	movl	$LC493, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2567
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2567:
	movl	16(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image12p_ApplyFlagsEi
	subl	$4, %esp
	movl	$LC494, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2568
	call	__Z8dbg_stopv
L2568:
	movl	-76(%ebp), %eax
	movl	%eax, -132(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2581
L2577:
	movl	%edx, -132(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2571
L2578:
	movl	%edx, -132(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2571
L2580:
	movl	%edx, -136(%ebp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-136(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2574
L2579:
	movl	%edx, -132(%ebp)
L2574:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2571
L2575:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L2576
	subl	$1, %eax
	testl	%eax, %eax
	je	L2577
	subl	$1, %eax
	testl	%eax, %eax
	je	L2578
	subl	$1, %eax
	testl	%eax, %eax
	je	L2579
	subl	$1, %eax
	testl	%eax, %eax
	je	L2580
	subl	$1, %eax
		.word	0x0b0f
L2576:
	movl	%edx, -132(%ebp)
L2571:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L2581:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-132(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$12
	.section	.gcc_except_table,"w"
LLSDA1187:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1187-LLSDACSB1187
LLSDACSB1187:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
LLSDACSE1187:
	.text
	.section .rdata,"dr"
LC495:
	.ascii "iwidth\0"
LC496:
	.ascii "iheight\0"
LC497:
	.ascii "src\0"
LC498:
	.ascii "srcx\0"
LC499:
	.ascii "srcy\0"
LC500:
	.ascii "srcw\0"
LC501:
	.ascii "srch\0"
	.align 4
LC502:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<159>\0"
	.align 4
LC503:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<160>\0"
	.align 4
LC504:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<161>\0"
	.align 4
LC505:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<163>\0"
	.align 4
LC506:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<164>\0"
	.align 4
LC507:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<166>\0"
	.align 4
LC508:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<168>\0"
LC509:
	.ascii "ix\0"
LC510:
	.ascii "iy\0"
	.align 4
LC511:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<170>\0"
	.align 4
LC512:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<171>\0"
	.align 4
LC513:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<172>\0"
	.align 4
LC514:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<173>\0"
	.align 4
LC515:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<175>\0"
	.align 4
LC516:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<176>\0"
	.align 4
LC517:
	.ascii "I\0m\0a\0g\0e\0 \0f\0r\0a\0m\0e\0 \0o\0u\0t\0s\0i\0d\0e\0 \0s\0u\0r\0f\0a\0c\0e\0\0\0"
	.align 4
LC518:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<178>\0"
	.align 4
LC519:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<179>\0"
	.align 4
LC520:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<182>\0"
	.align 4
LC521:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<183>\0"
	.text
	.align 2
	.globl	__ZN7c_Image7p_Init2EP11gxtkSurfaceiiiiiiPS_iiii
	.def	__ZN7c_Image7p_Init2EP11gxtkSurfaceiiiiiiPS_iiii;	.scl	2;	.type	32;	.endef
__ZN7c_Image7p_Init2EP11gxtkSurfaceiiiiiiPS_iiii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	movl	%ecx, -92(%ebp)
	movl	$___gxx_personality_sj0, -120(%ebp)
	movl	$LLSDA1191, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2615, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-48(%ebp), %eax
	movl	$LC482, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-92(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-52(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC483, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP11gxtkSurfaceE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC224, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC225, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC495, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	24(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC496, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	28(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC484, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	32(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC467, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	36(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC497, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC498, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC499, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	48(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC500, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	52(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC501, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC502, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2583
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2583:
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L2584
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-36(%ebp), %eax
	movl	$25, 4(%esp)
	movl	$LC486, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -140(%ebp)
	call	__Z7bbError6String
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2584:
	movl	$LC503, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2585
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2585:
	movl	8(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI11gxtkSurfaceS0_EvRPT_PT0_
	movl	$LC504, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2586
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2586:
	movl	36(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	$44, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC505, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2587
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2587:
	movl	20(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	$LC506, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2588
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2588:
	movl	24(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	$LC507, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2589
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2589:
	movl	28(%ebp), %edx
	leal	-32(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameEC1Ei
	subl	$4, %esp
	movl	-92(%ebp), %eax
	leal	28(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$3, -140(%ebp)
	call	__Z9gc_assignIP7c_FrameEvR5ArrayIT_ES4_
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	$LC508, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2590
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2590:
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-56(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC509, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-60(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC510, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC511, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2591
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2591:
	movl	$0, -68(%ebp)
	jmp	L2592
L2603:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-68(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC512, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2593
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L2593:
	movl	-92(%ebp), %eax
	movl	20(%eax), %edx
	movl	-56(%ebp), %eax
	addl	%eax, %edx
	movl	48(%ebp), %eax
	cmpl	%eax, %edx
	jle	L2594
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC513, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2595
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L2595:
	movl	$0, -56(%ebp)
	movl	$LC514, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2596
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L2596:
	movl	-92(%ebp), %eax
	movl	24(%eax), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2594:
	movl	$LC515, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2597
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L2597:
	movl	-92(%ebp), %eax
	movl	20(%eax), %edx
	movl	-56(%ebp), %eax
	addl	%eax, %edx
	movl	48(%ebp), %eax
	cmpl	%eax, %edx
	jg	L2598
	movl	-92(%ebp), %eax
	movl	24(%eax), %edx
	movl	-60(%ebp), %eax
	addl	%eax, %edx
	movl	52(%ebp), %eax
	cmpl	%eax, %edx
	jle	L2599
L2598:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC516, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2600
	movl	$6, -140(%ebp)
	call	__Z8dbg_stopv
L2600:
	leal	-28(%ebp), %eax
	movl	$27, 4(%esp)
	movl	$LC517, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$7, -140(%ebp)
	call	__Z7bbError6String
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2599:
	movl	$LC518, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2601
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L2601:
	movl	-60(%ebp), %edx
	movl	44(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -152(%ebp)
	movl	-56(%ebp), %edx
	movl	40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -156(%ebp)
	movl	$24, (%esp)
	movl	$4, -140(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -148(%ebp)
	movl	$8, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_FrameC1Ev
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, -140(%ebp)
	movl	-148(%ebp), %ecx
	call	__ZN7c_Frame5m_newEii
	subl	$8, %esp
	movl	%eax, -152(%ebp)
	movl	-68(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	$28, %edx
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN5ArrayIP7c_FrameE2AtEi
	subl	$4, %esp
	movl	-152(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z9gc_assignI7c_FrameS0_EvRPT_PT0_
	movl	$LC519, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2602
	call	__Z8dbg_stopv
L2602:
	movl	-92(%ebp), %eax
	movl	20(%eax), %edx
	movl	-56(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -56(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-68(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -68(%ebp)
L2592:
	movl	-68(%ebp), %edx
	movl	28(%ebp), %eax
	cmpl	%eax, %edx
	jl	L2603
	movl	$LC520, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2604
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2604:
	movl	32(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image12p_ApplyFlagsEi
	subl	$4, %esp
	movl	$LC521, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2605
	call	__Z8dbg_stopv
L2605:
	movl	-92(%ebp), %eax
	movl	%eax, -148(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2626
L2617:
	movl	%eax, -148(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2608
L2618:
	movl	%eax, -148(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2608
L2620:
	movl	%eax, -148(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2611
L2622:
	movl	%eax, -148(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2613
L2621:
	movl	%eax, -148(%ebp)
L2613:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2611
L2623:
	movl	%eax, -152(%ebp)
	movl	-148(%ebp), %ebx
	movl	%ebx, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-152(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2611
L2619:
	movl	%eax, -148(%ebp)
L2611:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2608
L2615:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %eax
	cmpl	$7, -140(%ebp)
	ja	L2624
	movl	-140(%ebp), %edx
	sall	$2, %edx
	addl	$L2625, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2625:
	.long	L2616
	.long	L2617
	.long	L2618
	.long	L2619
	.long	L2620
	.long	L2621
	.long	L2622
	.long	L2623
	.text
L2624:
		.word	0x0b0f
L2616:
	movl	%eax, -148(%ebp)
L2608:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L2626:
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-148(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$48
	.section	.gcc_except_table,"w"
LLSDA1191:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1191-LLSDACSB1191
LLSDACSB1191:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
LLSDACSE1191:
	.text
	.section .rdata,"dr"
LC522:
	.ascii "Image.GrabImage\0"
LC523:
	.ascii "width\0"
LC524:
	.ascii "height\0"
LC525:
	.ascii "flags\0"
	.align 4
LC526:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<109>\0"
	.align 4
LC527:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<110>\0"
	.text
	.align 2
	.globl	__ZN7c_Image11p_GrabImageEiiiiii
	.def	__ZN7c_Image11p_GrabImageEiiiiii;	.scl	2;	.type	32;	.endef
__ZN7c_Image11p_GrabImageEiiiiii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$204, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1192, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2634, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC522, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC224, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC225, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC523, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC524, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	24(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC484, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	28(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC525, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC526, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2628
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2628:
	movl	-60(%ebp), %eax
	addl	$28, %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIP7c_FrameE6LengthEv
	cmpl	$1, %eax
	setne	%al
	testb	%al, %al
	je	L2629
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$0, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2630
L2629:
	movl	$LC527, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2631
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2631:
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	-60(%ebp), %eax
	addl	$28, %eax
	movl	$0, (%esp)
	movl	$1, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -124(%ebp)
	movl	-60(%ebp), %eax
	addl	$28, %eax
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -140(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -156(%ebp)
	movl	$48, (%esp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -160(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_ImageC1Ev
	movl	-160(%ebp), %ecx
	call	__ZN7c_Image5m_newEv
	movl	%eax, %edx
	movl	-116(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN7c_Image7p_Init2EP11gxtkSurfaceiiiiiiPS_iiii
	subl	$48, %esp
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -116(%ebp)
L2630:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2636
L2634:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L2636:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$24
	.section	.gcc_except_table,"w"
LLSDA1192:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1192-LLSDACSB1192
LLSDACSB1192:
	.uleb128 0
	.uleb128 0
LLSDACSE1192:
	.text
	.section .rdata,"dr"
LC528:
	.ascii "Image.Frames\0"
	.align 4
LC529:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<93>\0"
	.text
	.align 2
	.globl	__ZN7c_Image8p_FramesEv
	.def	__ZN7c_Image8p_FramesEv;	.scl	2;	.type	32;	.endef
__ZN7c_Image8p_FramesEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1193, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2641, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC528, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	$LC529, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2638
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2638:
	movl	-60(%ebp), %eax
	addl	$28, %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIP7c_FrameE6LengthEv
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2643
L2641:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L2643:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1193:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1193-LLSDACSB1193
LLSDACSB1193:
	.uleb128 0
	.uleb128 0
LLSDACSE1193:
	.text
	.section .rdata,"dr"
LC530:
	.ascii "Image.Width\0"
	.align 4
LC531:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<81>\0"
	.text
	.align 2
	.globl	__ZN7c_Image7p_WidthEv
	.def	__ZN7c_Image7p_WidthEv;	.scl	2;	.type	32;	.endef
__ZN7c_Image7p_WidthEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1194, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2648, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC530, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	$LC531, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2645
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2645:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2650
L2648:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2650:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1194:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1194-LLSDACSB1194
LLSDACSB1194:
	.uleb128 0
	.uleb128 0
LLSDACSE1194:
	.text
	.section .rdata,"dr"
LC532:
	.ascii "Image.Height\0"
	.align 4
LC533:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<85>\0"
	.text
	.align 2
	.globl	__ZN7c_Image8p_HeightEv
	.def	__ZN7c_Image8p_HeightEv;	.scl	2;	.type	32;	.endef
__ZN7c_Image8p_HeightEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1195, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2655, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC532, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	$LC533, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2652
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2652:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2657
L2655:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2657:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1195:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1195-LLSDACSB1195
LLSDACSB1195:
	.uleb128 0
	.uleb128 0
LLSDACSE1195:
	.text
	.align 2
	.globl	__ZN7c_Image4markEv
	.def	__ZN7c_Image4markEv;	.scl	2;	.type	32;	.endef
__ZN7c_Image4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1196, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2660, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_object4markEv
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI11gxtkSurfaceEvPT_
	movl	-44(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z9gc_mark_qIP7c_FrameEv5ArrayIT_E
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ImageEvPT_
	jmp	L2662
L2660:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2662:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1196:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1196-LLSDACSB1196
LLSDACSB1196:
	.uleb128 0
	.uleb128 0
LLSDACSE1196:
	.text
	.section .rdata,"dr"
LC534:
	.ascii "(Image)\12\0"
LC535:
	.ascii "DefaultFlags\0"
LC536:
	.ascii "source\0"
LC537:
	.ascii "surface\0"
LC538:
	.ascii "frames\0"
	.text
	.align 2
	.globl	__ZN7c_Image5debugEv
	.def	__ZN7c_Image5debugEv;	.scl	2;	.type	32;	.endef
__ZN7c_Image5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA1197, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2675, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-76(%ebp), %eax
	movl	$LC534, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	$__ZN7c_Image14m_DefaultFlagsE, 8(%esp)
	movl	$LC535, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-76(%ebp), %eax
	leal	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	44(%eax), %edx
	leal	-56(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC536, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-76(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-52(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC537, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	call	__Z8dbg_declIP11gxtkSurfaceE6StringPKcPT_
	movl	-76(%ebp), %eax
	leal	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC523, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-76(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	$5, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	24(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC524, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-76(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	$6, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC525, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-76(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	$7, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	28(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC538, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	call	__Z8dbg_declI5ArrayIP7c_FrameEE6StringPKcPT_
	movl	-76(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$8, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	36(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC461, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-76(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$9, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	40(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC462, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-76(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$10, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L2688
L2677:
	movl	%eax, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2666
L2678:
	movl	%eax, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2666
L2679:
	movl	%eax, -132(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2666
L2680:
	movl	%eax, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2666
L2681:
	movl	%eax, -132(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2666
L2682:
	movl	%eax, -132(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2666
L2683:
	movl	%eax, -132(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2666
L2684:
	movl	%eax, -132(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2666
L2685:
	movl	%eax, -132(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2666
L2675:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
	cmpl	$9, -124(%ebp)
	ja	L2686
	movl	-124(%ebp), %edx
	sall	$2, %edx
	addl	$L2687, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2687:
	.long	L2676
	.long	L2677
	.long	L2678
	.long	L2679
	.long	L2680
	.long	L2681
	.long	L2682
	.long	L2683
	.long	L2684
	.long	L2685
	.text
L2686:
		.word	0x0b0f
L2676:
	movl	%eax, -132(%ebp)
L2666:
	movl	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L2688:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-76(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1197:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1197-LLSDACSB1197
LLSDACSB1197:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
LLSDACSE1197:
	.text
	.align 2
	.globl	__ZN17c_GraphicsContextC2Ev
	.def	__ZN17c_GraphicsContextC2Ev;	.scl	2;	.type	32;	.endef
__ZN17c_GraphicsContextC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1199, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2691, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-44(%ebp), %eax
	movl	$__ZTV17c_GraphicsContext+8, (%eax)
	movl	-44(%ebp), %eax
	addl	$100, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ev
	movl	-44(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-44(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-44(%ebp), %eax
	movl	$0, 24(%eax)
	movl	-44(%ebp), %eax
	movl	$0, 28(%eax)
	movl	-44(%ebp), %edx
	movl	LC47, %eax
	movl	%eax, 32(%edx)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 36(%edx)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 40(%edx)
	movl	-44(%ebp), %edx
	movl	LC47, %eax
	movl	%eax, 44(%edx)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 48(%edx)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 52(%edx)
	movl	-44(%ebp), %eax
	movl	$0, 56(%eax)
	movl	-44(%ebp), %eax
	movl	$0, 60(%eax)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 64(%edx)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 68(%edx)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 72(%edx)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 76(%edx)
	movl	-44(%ebp), %eax
	movl	$0, 80(%eax)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 84(%edx)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 88(%edx)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 92(%edx)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 96(%edx)
	leal	-28(%ebp), %eax
	movl	$192, (%esp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ei
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 100(%eax)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	jmp	L2693
L2691:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-44(%ebp), %eax
	addl	$100, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2693:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1199:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1199-LLSDACSB1199
LLSDACSB1199:
	.uleb128 0
	.uleb128 0
LLSDACSE1199:
	.text
	.globl	__ZN17c_GraphicsContextC1Ev
	.def	__ZN17c_GraphicsContextC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN17c_GraphicsContextC1Ev,__ZN17c_GraphicsContextC2Ev
	.section	.text$_ZN14dbg_var_type_tIP17c_GraphicsContextEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP17c_GraphicsContextEC1Ev
	.def	__ZN14dbg_var_type_tIP17c_GraphicsContextEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP17c_GraphicsContextEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP17c_GraphicsContextE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC539:
	.ascii "GraphicsContext.new\0"
	.align 4
LC540:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<29>\0"
	.text
	.align 2
	.globl	__ZN17c_GraphicsContext5m_newEv
	.def	__ZN17c_GraphicsContext5m_newEv;	.scl	2;	.type	32;	.endef
__ZN17c_GraphicsContext5m_newEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1201, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2699, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC539, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP17c_GraphicsContextE4infoE, (%eax)
	movl	$LC540, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2696
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2696:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2701
L2699:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2701:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1201:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1201-LLSDACSB1201
LLSDACSB1201:
	.uleb128 0
	.uleb128 0
LLSDACSE1201:
	.text
	.section .rdata,"dr"
LC541:
	.ascii "GraphicsContext.Validate\0"
	.align 4
LC542:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<40>\0"
	.align 4
LC543:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<41>\0"
	.align 4
LC544:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<42>\0"
	.text
	.align 2
	.globl	__ZN17c_GraphicsContext10p_ValidateEv
	.def	__ZN17c_GraphicsContext10p_ValidateEv;	.scl	2;	.type	32;	.endef
__ZN17c_GraphicsContext10p_ValidateEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1205, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2710, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC541, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP17c_GraphicsContextE4infoE, (%eax)
	movl	$LC542, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2703
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2703:
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L2704
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC543, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2705
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L2705:
	movl	_bb_graphics_renderDevice, %eax
	movl	(%eax), %eax
	addl	$76, %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	_bb_graphics_context, %eax
	movl	52(%eax), %ecx
	movl	_bb_graphics_context, %eax
	flds	48(%eax)
	movl	_bb_graphics_context, %eax
	movl	44(%eax), %edi
	movl	_bb_graphics_context, %eax
	movl	40(%eax), %esi
	movl	_bb_graphics_context, %eax
	movl	36(%eax), %ebx
	movl	_bb_graphics_context, %eax
	movl	32(%eax), %edx
	movl	_bb_graphics_renderDevice, %eax
	movl	%ecx, 20(%esp)
	fstps	16(%esp)
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	movl	$2, -108(%ebp)
	movl	%eax, %ecx
	call	*-116(%ebp)
	subl	$24, %esp
	movl	$LC544, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2706
	call	__Z8dbg_stopv
L2706:
	movl	-60(%ebp), %eax
	movl	$0, 60(%eax)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2704:
	movl	$0, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2713
L2712:
	movl	%edx, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2709
L2710:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L2711
	subl	$1, %eax
	testl	%eax, %eax
	je	L2712
	subl	$1, %eax
		.word	0x0b0f
L2711:
	movl	%edx, -116(%ebp)
L2709:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L2713:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1205:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1205-LLSDACSB1205
LLSDACSB1205:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1205:
	.text
	.align 2
	.globl	__ZN17c_GraphicsContext4markEv
	.def	__ZN17c_GraphicsContext4markEv;	.scl	2;	.type	32;	.endef
__ZN17c_GraphicsContext4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1206, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2716, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_object4markEv
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ImageEvPT_
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ImageEvPT_
	movl	-44(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -28(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z9gc_mark_qIfEv5ArrayIT_E
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	jmp	L2718
L2716:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2718:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1206:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1206-LLSDACSB1206
LLSDACSB1206:
	.uleb128 0
	.uleb128 0
LLSDACSE1206:
	.text
	.section .rdata,"dr"
LC545:
	.ascii "(GraphicsContext)\12\0"
LC546:
	.ascii "color_r\0"
LC547:
	.ascii "color_g\0"
LC548:
	.ascii "color_b\0"
LC549:
	.ascii "alpha\0"
LC550:
	.ascii "blend\0"
LC551:
	.ascii "jx\0"
LC552:
	.ascii "jy\0"
LC553:
	.ascii "tformed\0"
LC554:
	.ascii "matDirty\0"
LC555:
	.ascii "scissor_x\0"
LC556:
	.ascii "scissor_y\0"
LC557:
	.ascii "scissor_width\0"
LC558:
	.ascii "scissor_height\0"
LC559:
	.ascii "matrixStack\0"
LC560:
	.ascii "matrixSp\0"
LC561:
	.ascii "font\0"
LC562:
	.ascii "firstChar\0"
LC563:
	.ascii "defaultFont\0"
	.text
	.align 2
	.globl	__ZN17c_GraphicsContext5debugEv
	.def	__ZN17c_GraphicsContext5debugEv;	.scl	2;	.type	32;	.endef
__ZN17c_GraphicsContext5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$188, %esp
	movl	%ecx, -124(%ebp)
	movl	$___gxx_personality_sj0, -152(%ebp)
	movl	$LLSDA1207, -148(%ebp)
	leal	-144(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2744, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-124(%ebp), %eax
	movl	$LC545, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	64(%eax), %edx
	leal	-112(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC546, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-112(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	68(%eax), %edx
	leal	-108(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC547, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-108(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	72(%eax), %edx
	leal	-104(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC548, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-104(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	76(%eax), %edx
	leal	-100(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC549, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-100(%ebp), %edx
	movl	%edx, (%esp)
	movl	$5, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	80(%eax), %edx
	leal	-96(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC550, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-96(%ebp), %edx
	movl	%edx, (%esp)
	movl	$6, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	leal	-92(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC509, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-92(%ebp), %edx
	movl	%edx, (%esp)
	movl	$7, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	36(%eax), %edx
	leal	-88(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC510, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-88(%ebp), %edx
	movl	%edx, (%esp)
	movl	$8, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	40(%eax), %edx
	leal	-84(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC551, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-84(%ebp), %edx
	movl	%edx, (%esp)
	movl	$9, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	44(%eax), %edx
	leal	-80(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC552, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-80(%ebp), %edx
	movl	%edx, (%esp)
	movl	$10, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	48(%eax), %edx
	leal	-76(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC461, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-76(%ebp), %edx
	movl	%edx, (%esp)
	movl	$11, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	52(%eax), %edx
	leal	-72(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC462, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-72(%ebp), %edx
	movl	%edx, (%esp)
	movl	$12, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	56(%eax), %edx
	leal	-68(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC553, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-68(%ebp), %edx
	movl	%edx, (%esp)
	movl	$13, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	60(%eax), %edx
	leal	-64(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC554, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-64(%ebp), %edx
	movl	%edx, (%esp)
	movl	$14, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	84(%eax), %edx
	leal	-60(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC555, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	$15, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	88(%eax), %edx
	leal	-56(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC556, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, (%esp)
	movl	$16, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	92(%eax), %edx
	leal	-52(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC557, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	$17, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	96(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC558, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	$18, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	100(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC559, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declI5ArrayIfEE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	$19, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	28(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC560, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	$20, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC561, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$21, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	24(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC562, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$22, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC563, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$23, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L2770
L2746:
	movl	%eax, -180(%ebp)
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2747:
	movl	%eax, -180(%ebp)
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2748:
	movl	%eax, -180(%ebp)
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2749:
	movl	%eax, -180(%ebp)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2750:
	movl	%eax, -180(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2751:
	movl	%eax, -180(%ebp)
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2752:
	movl	%eax, -180(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2753:
	movl	%eax, -180(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2754:
	movl	%eax, -180(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2755:
	movl	%eax, -180(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2756:
	movl	%eax, -180(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2757:
	movl	%eax, -180(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2758:
	movl	%eax, -180(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2759:
	movl	%eax, -180(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2760:
	movl	%eax, -180(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2761:
	movl	%eax, -180(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2762:
	movl	%eax, -180(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2763:
	movl	%eax, -180(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2764:
	movl	%eax, -180(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2765:
	movl	%eax, -180(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2766:
	movl	%eax, -180(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2767:
	movl	%eax, -180(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2722
L2744:
	leal	24(%ebp), %ebp
	movl	-168(%ebp), %eax
	cmpl	$22, -172(%ebp)
	ja	L2768
	movl	-172(%ebp), %edx
	sall	$2, %edx
	addl	$L2769, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2769:
	.long	L2745
	.long	L2746
	.long	L2747
	.long	L2748
	.long	L2749
	.long	L2750
	.long	L2751
	.long	L2752
	.long	L2753
	.long	L2754
	.long	L2755
	.long	L2756
	.long	L2757
	.long	L2758
	.long	L2759
	.long	L2760
	.long	L2761
	.long	L2762
	.long	L2763
	.long	L2764
	.long	L2765
	.long	L2766
	.long	L2767
	.text
L2768:
		.word	0x0b0f
L2745:
	movl	%eax, -180(%ebp)
L2722:
	movl	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -172(%ebp)
	call	__Unwind_SjLj_Resume
L2770:
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-124(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1207:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1207-LLSDACSB1207
LLSDACSB1207:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
	.uleb128 0xa
	.uleb128 0
	.uleb128 0xb
	.uleb128 0
	.uleb128 0xc
	.uleb128 0
	.uleb128 0xd
	.uleb128 0
	.uleb128 0xe
	.uleb128 0
	.uleb128 0xf
	.uleb128 0
	.uleb128 0x10
	.uleb128 0
	.uleb128 0x11
	.uleb128 0
	.uleb128 0x12
	.uleb128 0
	.uleb128 0x13
	.uleb128 0
	.uleb128 0x14
	.uleb128 0
	.uleb128 0x15
	.uleb128 0
	.uleb128 0x16
	.uleb128 0
LLSDACSE1207:
	.text
	.globl	_bb_graphics_context
	.bss
	.align 4
_bb_graphics_context:
	.space 4
	.section .rdata,"dr"
LC564:
	.ascii "FixDataPath\0"
LC565:
	.ascii "path\0"
	.align 4
LC566:
	.ascii "C:/MonkeyXFree84f/modules/mojo/data.monkey<7>\0"
	.align 2
LC567:
	.ascii ":\0/\0\0\0"
	.align 4
LC568:
	.ascii "C:/MonkeyXFree84f/modules/mojo/data.monkey<8>\0"
	.align 2
LC569:
	.ascii "/\0\0\0"
	.align 4
LC570:
	.ascii "C:/MonkeyXFree84f/modules/mojo/data.monkey<9>\0"
	.align 2
LC571:
	.ascii ".\0/\0\0\0"
	.align 4
LC572:
	.ascii "C:/MonkeyXFree84f/modules/mojo/data.monkey<10>\0"
	.align 2
LC573:
	.ascii "m\0o\0n\0k\0e\0y\0:\0/\0/\0d\0a\0t\0a\0/\0\0\0"
	.text
	.globl	__Z19bb_data_FixDataPath6String
	.def	__Z19bb_data_FixDataPath6String;	.scl	2;	.type	32;	.endef
__Z19bb_data_FixDataPath6String:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	$___gxx_personality_sj0, -100(%ebp)
	movl	$LLSDA1208, -96(%ebp)
	leal	-92(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2789, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-56(%ebp), %eax
	movl	$LC564, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC565, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC566, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2772
	movl	$1, -120(%ebp)
	call	__Z8dbg_stopv
L2772:
	leal	-44(%ebp), %eax
	movl	$2, 4(%esp)
	movl	$LC567, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	12(%ebp), %eax
	movl	$0, 4(%esp)
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String4FindES_i
	subl	$8, %esp
	movl	%eax, -60(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-60(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC568, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2773
	movl	$1, -120(%ebp)
	call	__Z8dbg_stopv
L2773:
	movb	$0, -128(%ebp)
	movl	-60(%ebp), %eax
	cmpl	$-1, %eax
	je	L2774
	leal	-40(%ebp), %eax
	movl	$1, 4(%esp)
	movl	$LC569, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movb	$1, -128(%ebp)
	movl	12(%ebp), %eax
	movl	$0, 4(%esp)
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String4FindES_i
	subl	$8, %esp
	movl	-60(%ebp), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jne	L2774
	movl	$1, %eax
	jmp	L2775
L2774:
	movl	$0, %eax
L2775:
	movb	%al, -129(%ebp)
	cmpb	$0, -128(%ebp)
	je	L2776
	nop
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L2776:
	cmpb	$0, -129(%ebp)
	je	L2777
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2778
L2777:
	movl	$LC570, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2779
	movl	$1, -120(%ebp)
	call	__Z8dbg_stopv
L2779:
	movb	$0, -128(%ebp)
	leal	-36(%ebp), %eax
	movl	$2, 4(%esp)
	movl	$LC571, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movb	$1, -129(%ebp)
	movl	12(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String10StartsWithES_
	subl	$4, %esp
	testb	%al, %al
	jne	L2780
	leal	-32(%ebp), %eax
	movl	$1, 4(%esp)
	movl	$LC569, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movb	$1, -128(%ebp)
	movl	12(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String10StartsWithES_
	subl	$4, %esp
	testb	%al, %al
	je	L2781
L2780:
	movl	$1, %eax
	jmp	L2782
L2781:
	movl	$0, %eax
L2782:
	movb	%al, -130(%ebp)
	cmpb	$0, -128(%ebp)
	je	L2783
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L2783:
	cmpb	$0, -129(%ebp)
	je	L2784
	nop
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L2784:
	cmpb	$0, -130(%ebp)
	je	L2785
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2778
L2785:
	movl	$LC572, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2786
	movl	$1, -120(%ebp)
	call	__Z8dbg_stopv
L2786:
	leal	-28(%ebp), %eax
	movl	$14, 4(%esp)
	movl	$LC573, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-64(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L2778:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2791
L2789:
	leal	24(%ebp), %ebp
	movl	-116(%ebp), %eax
	movl	%eax, -128(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -120(%ebp)
	call	__Unwind_SjLj_Resume
L2791:
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1208:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1208-LLSDACSB1208
LLSDACSB1208:
	.uleb128 0
	.uleb128 0
LLSDACSE1208:
	.text
	.align 2
	.globl	__ZN7c_FrameC2Ev
	.def	__ZN7c_FrameC2Ev;	.scl	2;	.type	32;	.endef
__ZN7c_FrameC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV7c_Frame+8, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 20(%eax)
	leave
	ret
	.globl	__ZN7c_FrameC1Ev
	.def	__ZN7c_FrameC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN7c_FrameC1Ev,__ZN7c_FrameC2Ev
	.section .rdata,"dr"
LC574:
	.ascii "Frame.new\0"
	.align 4
LC575:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<23>\0"
	.align 4
LC576:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<24>\0"
	.text
	.align 2
	.globl	__ZN7c_Frame5m_newEii
	.def	__ZN7c_Frame5m_newEii;	.scl	2;	.type	32;	.endef
__ZN7c_Frame5m_newEii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1212, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2798, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC574, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_FrameE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC224, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC225, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC575, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2794
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2794:
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	$LC576, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2795
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2795:
	movl	12(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2800
L2798:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2800:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1212:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1212-LLSDACSB1212
LLSDACSB1212:
	.uleb128 0
	.uleb128 0
LLSDACSE1212:
	.text
	.section .rdata,"dr"
	.align 4
LC577:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<18>\0"
	.text
	.align 2
	.globl	__ZN7c_Frame6m_new2Ev
	.def	__ZN7c_Frame6m_new2Ev;	.scl	2;	.type	32;	.endef
__ZN7c_Frame6m_new2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1213, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2805, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC574, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_FrameE4infoE, (%eax)
	movl	$LC577, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2802
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2802:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2807
L2805:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2807:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1213:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1213-LLSDACSB1213
LLSDACSB1213:
	.uleb128 0
	.uleb128 0
LLSDACSE1213:
	.text
	.align 2
	.globl	__ZN7c_Frame4markEv
	.def	__ZN7c_Frame4markEv;	.scl	2;	.type	32;	.endef
__ZN7c_Frame4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_object4markEv
	leave
	ret
	.section .rdata,"dr"
LC578:
	.ascii "(Frame)\12\0"
	.text
	.align 2
	.globl	__ZN7c_Frame5debugEv
	.def	__ZN7c_Frame5debugEv;	.scl	2;	.type	32;	.endef
__ZN7c_Frame5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1215, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2814, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC578, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC224, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC225, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L2818
L2816:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2812
L2817:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2812
L2814:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L2815
	subl	$1, %eax
	testl	%eax, %eax
	je	L2816
	subl	$1, %eax
	testl	%eax, %eax
	je	L2817
	subl	$1, %eax
		.word	0x0b0f
L2815:
	movl	%edx, -100(%ebp)
L2812:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2818:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-44(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1215:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1215-LLSDACSB1215
LLSDACSB1215:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1215:
	.text
	.section .rdata,"dr"
LC579:
	.ascii "LoadImage\0"
LC580:
	.ascii "frameCount\0"
	.align 4
LC581:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<239>\0"
	.align 4
LC582:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<240>\0"
	.text
	.globl	__Z21bb_graphics_LoadImage6Stringii
	.def	__Z21bb_graphics_LoadImage6Stringii;	.scl	2;	.type	32;	.endef
__Z21bb_graphics_LoadImage6Stringii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	$___gxx_personality_sj0, -84(%ebp)
	movl	$LLSDA1216, -80(%ebp)
	leal	-76(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2829, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-48(%ebp), %eax
	movl	$LC579, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC565, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC580, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC525, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC581, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2820
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2820:
	movl	_bb_graphics_device, %eax
	movl	(%eax), %eax
	addl	$44, %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	leal	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$2, -104(%ebp)
	call	__Z19bb_data_FixDataPath6String
	movl	_bb_graphics_device, %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -104(%ebp)
	movl	%eax, %ecx
	call	*-112(%ebp)
	subl	$4, %esp
	movl	%eax, -52(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-52(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC483, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP11gxtkSurfaceE4infoE, (%eax)
	movl	$LC582, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2821
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2821:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	L2822
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	16(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	$48, (%esp)
	movl	$4, -104(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_ImageC1Ev
	movl	-124(%ebp), %ecx
	call	__ZN7c_Image5m_newEv
	movl	-112(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	-116(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	-120(%ebp), %ebx
	movl	%ebx, (%esp)
	movl	%eax, %ecx
	call	__ZN7c_Image6p_InitEP11gxtkSurfaceii
	subl	$12, %esp
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -112(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2823
L2822:
	movl	$0, -112(%ebp)
L2823:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2834
L2832:
	movl	%edx, -112(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2826
L2831:
	movl	%edx, -112(%ebp)
L2826:
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2827
L2833:
	movl	%edx, -112(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2827
L2829:
	leal	24(%ebp), %ebp
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	je	L2830
	subl	$1, %eax
	testl	%eax, %eax
	je	L2831
	subl	$1, %eax
	testl	%eax, %eax
	je	L2832
	subl	$1, %eax
	testl	%eax, %eax
	je	L2833
	subl	$1, %eax
		.word	0x0b0f
L2830:
	movl	%edx, -112(%ebp)
L2827:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -104(%ebp)
	call	__Unwind_SjLj_Resume
L2834:
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-112(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1216:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1216-LLSDACSB1216
LLSDACSB1216:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1216:
	.text
	.section .rdata,"dr"
LC583:
	.ascii "frameWidth\0"
LC584:
	.ascii "frameHeight\0"
	.align 4
LC585:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<244>\0"
	.align 4
LC586:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<245>\0"
	.text
	.globl	__Z22bb_graphics_LoadImage26Stringiiii
	.def	__Z22bb_graphics_LoadImage26Stringiiii;	.scl	2;	.type	32;	.endef
__Z22bb_graphics_LoadImage26Stringiiii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$188, %esp
	movl	$___gxx_personality_sj0, -84(%ebp)
	movl	$LLSDA1217, -80(%ebp)
	leal	-76(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2845, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-48(%ebp), %eax
	movl	$LC579, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC565, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC583, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC584, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC580, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	24(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC525, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC585, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2836
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2836:
	movl	_bb_graphics_device, %eax
	movl	(%eax), %eax
	addl	$44, %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	leal	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$2, -104(%ebp)
	call	__Z19bb_data_FixDataPath6String
	movl	_bb_graphics_device, %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -104(%ebp)
	movl	%eax, %ecx
	call	*-112(%ebp)
	subl	$4, %esp
	movl	%eax, -52(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-52(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC483, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP11gxtkSurfaceE4infoE, (%eax)
	movl	$LC586, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2837
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2837:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	L2838
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	-52(%ebp), %edx
	movl	$4, -104(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	%eax, -112(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	-52(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	movl	%eax, -116(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	$48, (%esp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_ImageC1Ev
	movl	-140(%ebp), %ecx
	call	__ZN7c_Image5m_newEv
	movl	-112(%ebp), %esi
	movl	%esi, 44(%esp)
	movl	-116(%ebp), %edi
	movl	%edi, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	-120(%ebp), %ebx
	movl	%ebx, 24(%esp)
	movl	-124(%ebp), %esi
	movl	%esi, 20(%esp)
	movl	-128(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-132(%ebp), %ebx
	movl	%ebx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-136(%ebp), %esi
	movl	%esi, (%esp)
	movl	%eax, %ecx
	call	__ZN7c_Image7p_Init2EP11gxtkSurfaceiiiiiiPS_iiii
	subl	$48, %esp
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -112(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2839
L2838:
	movl	$0, -112(%ebp)
L2839:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2850
L2848:
	movl	%edx, -112(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2842
L2847:
	movl	%edx, -112(%ebp)
L2842:
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2843
L2849:
	movl	%edx, -112(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2843
L2845:
	leal	24(%ebp), %ebp
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	je	L2846
	subl	$1, %eax
	testl	%eax, %eax
	je	L2847
	subl	$1, %eax
	testl	%eax, %eax
	je	L2848
	subl	$1, %eax
	testl	%eax, %eax
	je	L2849
	subl	$1, %eax
		.word	0x0b0f
L2846:
	movl	%edx, -112(%ebp)
L2843:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -104(%ebp)
	call	__Unwind_SjLj_Resume
L2850:
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-112(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1217:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1217-LLSDACSB1217
LLSDACSB1217:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1217:
	.text
	.section .rdata,"dr"
LC587:
	.ascii "SetFont\0"
	.align 4
LC588:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<548>\0"
	.align 4
LC589:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<549>\0"
	.align 4
LC590:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<550>\0"
	.align 2
LC591:
	.ascii "m\0o\0j\0o\0_\0f\0o\0n\0t\0.\0p\0n\0g\0\0\0"
	.align 4
LC592:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<552>\0"
	.align 4
LC593:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<553>\0"
	.align 4
LC594:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<555>\0"
	.align 4
LC595:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<556>\0"
	.text
	.globl	__Z19bb_graphics_SetFontP7c_Imagei
	.def	__Z19bb_graphics_SetFontP7c_Imagei;	.scl	2;	.type	32;	.endef
__Z19bb_graphics_SetFontP7c_Imagei:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	$___gxx_personality_sj0, -84(%ebp)
	movl	$LLSDA1218, -80(%ebp)
	leal	-76(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2866, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC587, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC561, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC562, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC588, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2852
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2852:
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jne	L2853
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC589, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2854
	movl	$2, -104(%ebp)
	call	__Z8dbg_stopv
L2854:
	movl	_bb_graphics_context, %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L2855
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC590, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2856
	movl	$3, -104(%ebp)
	call	__Z8dbg_stopv
L2856:
	leal	-28(%ebp), %eax
	movl	$13, 4(%esp)
	movl	$LC591, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	$2, 8(%esp)
	movl	$96, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, -104(%ebp)
	call	__Z21bb_graphics_LoadImage6Stringii
	movl	_bb_graphics_context, %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2855:
	movl	$LC592, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2857
	movl	$2, -104(%ebp)
	call	__Z8dbg_stopv
L2857:
	movl	_bb_graphics_context, %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	$LC593, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2858
	movl	$2, -104(%ebp)
	call	__Z8dbg_stopv
L2858:
	movl	$32, 12(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2853:
	movl	$LC594, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2859
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2859:
	movl	8(%ebp), %eax
	movl	_bb_graphics_context, %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC595, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2860
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2860:
	movl	_bb_graphics_context, %eax
	movl	12(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	$0, -112(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2871
L2870:
	movl	%edx, -112(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2863
L2869:
	movl	%edx, -112(%ebp)
L2863:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2864
L2868:
	movl	%edx, -112(%ebp)
L2864:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2865
L2866:
	leal	24(%ebp), %ebp
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	je	L2867
	subl	$1, %eax
	testl	%eax, %eax
	je	L2868
	subl	$1, %eax
	testl	%eax, %eax
	je	L2869
	subl	$1, %eax
	testl	%eax, %eax
	je	L2870
	subl	$1, %eax
		.word	0x0b0f
L2867:
	movl	%edx, -112(%ebp)
L2865:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -104(%ebp)
	call	__Unwind_SjLj_Resume
L2871:
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-112(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1218:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1218-LLSDACSB1218
LLSDACSB1218:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1218:
	.text
	.globl	_bb_audio_device
	.bss
	.align 4
_bb_audio_device:
	.space 4
	.section	.text$_ZN14dbg_var_type_tIP9gxtkAudioEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP9gxtkAudioEC1Ev
	.def	__ZN14dbg_var_type_tIP9gxtkAudioEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP9gxtkAudioEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP9gxtkAudioE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC596:
	.ascii "SetAudioDevice\0"
	.align 4
LC597:
	.ascii "C:/MonkeyXFree84f/modules/mojo/audio.monkey<22>\0"
	.text
	.globl	__Z23bb_audio_SetAudioDeviceP9gxtkAudio
	.def	__Z23bb_audio_SetAudioDeviceP9gxtkAudio;	.scl	2;	.type	32;	.endef
__Z23bb_audio_SetAudioDeviceP9gxtkAudio:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1219, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2877, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC596, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC456, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP9gxtkAudioE4infoE, (%eax)
	movl	$LC597, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2874
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L2874:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_bb_audio_device, (%esp)
	call	__Z9gc_assignI9gxtkAudioS0_EvRPT_PT0_
	movl	$0, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L2879
L2877:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L2879:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-96(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1219:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1219-LLSDACSB1219
LLSDACSB1219:
	.uleb128 0
	.uleb128 0
LLSDACSE1219:
	.text
	.align 2
	.globl	__ZN13c_InputDeviceC2Ev
	.def	__ZN13c_InputDeviceC2Ev;	.scl	2;	.type	32;	.endef
__ZN13c_InputDeviceC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1224, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2882, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-60(%ebp), %eax
	movl	$__ZTV13c_InputDevice+8, (%eax)
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP10c_JoyStateEC1Ev
	movl	-60(%ebp), %eax
	addl	$20, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbEC1Ev
	movl	-60(%ebp), %eax
	addl	$28, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiEC1Ev
	movl	-60(%ebp), %eax
	addl	$32, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiEC1Ev
	movl	-60(%ebp), %eax
	addl	$44, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiEC1Ev
	movl	-60(%ebp), %eax
	addl	$56, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ev
	movl	-60(%ebp), %eax
	addl	$60, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ev
	leal	-52(%ebp), %eax
	movl	$4, (%esp)
	movl	$1, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP10c_JoyStateEC1Ei
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, 16(%eax)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP10c_JoyStateED1Ev
	leal	-48(%ebp), %eax
	movl	$512, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIbEC1Ei
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, 20(%eax)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	movl	-60(%ebp), %eax
	movl	$0, 24(%eax)
	leal	-44(%ebp), %eax
	movl	$33, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiEC1Ei
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 28(%eax)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	leal	-40(%ebp), %eax
	movl	$512, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiEC1Ei
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 32(%eax)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-60(%ebp), %eax
	movl	$0, 36(%eax)
	movl	-60(%ebp), %eax
	movl	$0, 40(%eax)
	leal	-36(%ebp), %eax
	movl	$32, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiEC1Ei
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, 44(%eax)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-60(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 48(%edx)
	movl	-60(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 52(%edx)
	leal	-32(%ebp), %eax
	movl	$32, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ei
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 56(%eax)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	leal	-28(%ebp), %eax
	movl	$32, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ei
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 60(%eax)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-60(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 64(%edx)
	movl	-60(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 68(%edx)
	movl	-60(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 72(%edx)
	jmp	L2884
L2882:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	addl	$60, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	addl	$56, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	addl	$44, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	addl	$32, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	addl	$28, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	addl	$20, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP10c_JoyStateED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	movl	$0, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L2884:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1224:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1224-LLSDACSB1224
LLSDACSB1224:
	.uleb128 0
	.uleb128 0
LLSDACSE1224:
	.text
	.globl	__ZN13c_InputDeviceC1Ev
	.def	__ZN13c_InputDeviceC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN13c_InputDeviceC1Ev,__ZN13c_InputDeviceC2Ev
	.section	.text$_ZN14dbg_var_type_tIP13c_InputDeviceEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP13c_InputDeviceEC1Ev
	.def	__ZN14dbg_var_type_tIP13c_InputDeviceEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP13c_InputDeviceEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP13c_InputDeviceE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC598:
	.ascii "InputDevice.new\0"
	.align 4
LC599:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<26>\0"
	.align 4
LC600:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<27>\0"
	.text
	.align 2
	.globl	__ZN13c_InputDevice5m_newEv
	.def	__ZN13c_InputDevice5m_newEv;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice5m_newEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1226, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2895, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC598, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	$LC599, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2887
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2887:
	movl	$0, -44(%ebp)
	jmp	L2888
L2890:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC600, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2889
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L2889:
	movl	$32, (%esp)
	movl	$2, -108(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -116(%ebp)
	movl	$3, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_JoyStateC1Ev
	movl	$2, -108(%ebp)
	movl	-116(%ebp), %ecx
	call	__ZN10c_JoyState5m_newEv
	movl	%eax, -120(%ebp)
	movl	-44(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	$16, %edx
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN5ArrayIP10c_JoyStateE2AtEi
	subl	$4, %esp
	movl	-120(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z9gc_assignI10c_JoyStateS0_EvRPT_PT0_
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -44(%ebp)
L2888:
	movl	-44(%ebp), %eax
	cmpl	$3, %eax
	jle	L2890
	movl	-60(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2899
L2898:
	movl	%edx, -120(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-120(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2893
L2897:
	movl	%edx, -116(%ebp)
L2893:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2894
L2895:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L2896
	subl	$1, %eax
	testl	%eax, %eax
	je	L2897
	subl	$1, %eax
	testl	%eax, %eax
	je	L2898
	subl	$1, %eax
		.word	0x0b0f
L2896:
	movl	%edx, -116(%ebp)
L2894:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L2899:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1226:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1226-LLSDACSB1226
LLSDACSB1226:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1226:
	.text
	.section .rdata,"dr"
LC601:
	.ascii "InputDevice.PutKeyHit\0"
LC602:
	.ascii "key\0"
	.align 4
LC603:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<237>\0"
	.align 4
LC604:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<238>\0"
	.align 4
LC605:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<239>\0"
	.align 4
LC606:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<240>\0"
	.text
	.align 2
	.globl	__ZN13c_InputDevice11p_PutKeyHitEi
	.def	__ZN13c_InputDevice11p_PutKeyHitEi;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice11p_PutKeyHitEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1230, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2911, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC601, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC602, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC603, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2901
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2901:
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	addl	$28, %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIiE6LengthEv
	cmpl	%eax, -116(%ebp)
	sete	%al
	testb	%al, %al
	je	L2902
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -116(%ebp)
	jmp	L2903
L2902:
	movl	$LC604, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2904
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2904:
	movl	8(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	$32, %edx
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	movl	$LC605, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2905
	call	__Z8dbg_stopv
L2905:
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	-60(%ebp), %edx
	addl	$28, %edx
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	$LC606, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2906
	call	__Z8dbg_stopv
L2906:
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	leal	1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	$1, -116(%ebp)
L2903:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -116(%ebp)
	je	L2914
	jmp	L2900
L2914:
	nop
	jmp	L2900
L2911:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L2900:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1230:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1230-LLSDACSB1230
LLSDACSB1230:
	.uleb128 0
	.uleb128 0
LLSDACSE1230:
	.text
	.section	.text$_ZN14dbg_var_type_tIP10c_JoyStateEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP10c_JoyStateEC1Ev
	.def	__ZN14dbg_var_type_tIP10c_JoyStateEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP10c_JoyStateEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP10c_JoyStateE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC607:
	.ascii "InputDevice.BeginUpdate\0"
	.align 4
LC608:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<189>\0"
	.align 4
LC609:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<190>\0"
LC610:
	.ascii "state\0"
	.align 4
LC611:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<191>\0"
	.align 4
LC612:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<192>\0"
LC613:
	.ascii "j\0"
	.align 4
LC614:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<193>\0"
	.align 4
LC615:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<194>\0"
	.align 4
LC616:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<195>\0"
	.align 4
LC617:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<196>\0"
	.align 4
LC618:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<197>\0"
	.align 4
LC619:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<200>\0"
	.text
	.align 2
	.globl	__ZN13c_InputDevice13p_BeginUpdateEv
	.def	__ZN13c_InputDevice13p_BeginUpdateEv;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice13p_BeginUpdateEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	movl	%ecx, -108(%ebp)
	movl	$___gxx_personality_sj0, -136(%ebp)
	movl	$LLSDA1231, -132(%ebp)
	leal	-128(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L2946, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-52(%ebp), %eax
	movl	$LC607, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-108(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-56(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	$LC608, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2917
	movl	$1, -156(%ebp)
	call	__Z8dbg_stopv
L2917:
	movl	$0, -60(%ebp)
	jmp	L2918
L2938:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-60(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC609, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2919
	movl	$2, -156(%ebp)
	call	__Z8dbg_stopv
L2919:
	movl	-60(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$16, %edx
	movl	%eax, (%esp)
	movl	$2, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIP10c_JoyStateE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-68(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC610, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_JoyStateE4infoE, (%eax)
	movl	$LC611, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2920
	call	__Z8dbg_stopv
L2920:
	call	__ZN6BBGame4GameEv
	movl	(%eax), %edx
	addl	$60, %edx
	movl	(%edx), %ebx
	movl	-68(%ebp), %edx
	movl	28(%edx), %edx
	movl	%edx, -40(%ebp)
	movl	-68(%ebp), %edx
	movl	24(%edx), %edx
	movl	%edx, -36(%ebp)
	movl	-68(%ebp), %edx
	movl	20(%edx), %edx
	movl	%edx, -32(%ebp)
	movl	-68(%ebp), %edx
	movl	16(%edx), %edx
	movl	%edx, -28(%ebp)
	movl	-60(%ebp), %edx
	leal	-40(%ebp), %ecx
	movl	%ecx, 16(%esp)
	leal	-36(%ebp), %ecx
	movl	%ecx, 12(%esp)
	leal	-32(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	-28(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	$3, -156(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$20, %esp
	xorl	$1, %eax
	movb	%al, -164(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	cmpb	$0, -164(%ebp)
	je	L2921
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -164(%ebp)
	jmp	L2922
L2921:
	movl	$LC612, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2923
	movl	$2, -156(%ebp)
	call	__Z8dbg_stopv
L2923:
	movl	$0, -76(%ebp)
	jmp	L2924
L2934:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-76(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC613, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC614, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2925
	movl	$4, -156(%ebp)
	call	__Z8dbg_stopv
L2925:
	movl	-60(%ebp), %eax
	addl	$8, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -84(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-84(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC602, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC615, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2926
	movl	$4, -156(%ebp)
	call	__Z8dbg_stopv
L2926:
	movl	-76(%ebp), %eax
	movl	-68(%ebp), %edx
	addl	$28, %edx
	movl	%eax, (%esp)
	movl	$4, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L2927
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC616, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2928
	movl	$5, -156(%ebp)
	call	__Z8dbg_stopv
L2928:
	movl	-84(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$20, %edx
	movl	%eax, (%esp)
	movl	$5, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L2929
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC617, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2930
	movl	$6, -156(%ebp)
	call	__Z8dbg_stopv
L2930:
	movl	-84(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$20, %edx
	movl	%eax, (%esp)
	movl	$6, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$1, (%eax)
	movl	$LC618, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2931
	call	__Z8dbg_stopv
L2931:
	movl	-84(%ebp), %edx
	movl	-108(%ebp), %eax
	movl	%edx, (%esp)
	movl	$6, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice11p_PutKeyHitEi
	subl	$4, %esp
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2929:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2932
L2927:
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC619, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2933
	movl	$7, -156(%ebp)
	call	__Z8dbg_stopv
L2933:
	movl	-84(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$20, %edx
	movl	%eax, (%esp)
	movl	$7, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$0, (%eax)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2932:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-76(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -76(%ebp)
L2924:
	movl	-76(%ebp), %eax
	cmpl	$31, %eax
	jle	L2934
	movl	$1, -164(%ebp)
L2922:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -164(%ebp)
	jne	L2937
	nop
	movl	-60(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -60(%ebp)
L2918:
	movl	-60(%ebp), %eax
	cmpl	$3, %eax
	jle	L2938
L2937:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2957
L2949:
	movl	%eax, -164(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2940
L2952:
	movl	%eax, -164(%ebp)
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2942
L2951:
	movl	%eax, -164(%ebp)
L2942:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2943
L2953:
	movl	%eax, -164(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2943
L2950:
	movl	%eax, -164(%ebp)
L2943:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2940
L2948:
	movl	%eax, -164(%ebp)
L2940:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2945
L2946:
	leal	24(%ebp), %ebp
	movl	-152(%ebp), %eax
	cmpl	$6, -156(%ebp)
	ja	L2954
	movl	-156(%ebp), %edx
	sall	$2, %edx
	addl	$L2955, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2955:
	.long	L2947
	.long	L2948
	.long	L2949
	.long	L2950
	.long	L2951
	.long	L2952
	.long	L2953
	.text
L2954:
		.word	0x0b0f
L2947:
	movl	%eax, -164(%ebp)
L2945:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -156(%ebp)
	call	__Unwind_SjLj_Resume
L2957:
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1231:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1231-LLSDACSB1231
LLSDACSB1231:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
LLSDACSE1231:
	.text
	.section .rdata,"dr"
LC620:
	.ascii "InputDevice.EndUpdate\0"
	.align 4
LC621:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<207>\0"
	.align 4
LC622:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<208>\0"
	.align 4
LC623:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<210>\0"
	.align 4
LC624:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<211>\0"
	.align 4
LC625:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<212>\0"
	.text
	.align 2
	.globl	__ZN13c_InputDevice11p_EndUpdateEv
	.def	__ZN13c_InputDevice11p_EndUpdateEv;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice11p_EndUpdateEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1235, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2968, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC620, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	$LC621, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2959
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2959:
	movl	$0, -44(%ebp)
	jmp	L2960
L2962:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC622, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2961
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L2961:
	movl	-44(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	$28, %edx
	movl	%eax, (%esp)
	movl	$2, -108(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	-60(%ebp), %edx
	addl	$32, %edx
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -44(%ebp)
L2960:
	movl	-60(%ebp), %eax
	movl	24(%eax), %edx
	movl	-44(%ebp), %eax
	cmpl	%eax, %edx
	jg	L2962
	movl	$LC623, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2963
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2963:
	movl	-60(%ebp), %eax
	movl	$0, 24(%eax)
	movl	$LC624, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2964
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2964:
	movl	-60(%ebp), %eax
	movl	$0, 36(%eax)
	movl	$LC625, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2965
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2965:
	movl	-60(%ebp), %eax
	movl	$0, 40(%eax)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2971
L2970:
	movl	%edx, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2967
L2968:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L2969
	subl	$1, %eax
	testl	%eax, %eax
	je	L2970
	subl	$1, %eax
		.word	0x0b0f
L2969:
	movl	%edx, -116(%ebp)
L2967:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L2971:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1235:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1235-LLSDACSB1235
LLSDACSB1235:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1235:
	.text
	.section .rdata,"dr"
LC626:
	.ascii "InputDevice.KeyEvent\0"
	.align 4
LC627:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<111>\0"
	.align 4
LC628:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<112>\0"
	.align 4
LC629:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<113>\0"
	.align 4
LC630:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<114>\0"
	.align 4
LC631:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<115>\0"
	.align 4
LC632:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<116>\0"
	.align 4
LC633:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<117>\0"
	.align 4
LC634:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<118>\0"
	.align 4
LC635:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<119>\0"
	.align 4
LC636:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<120>\0"
	.align 4
LC637:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<121>\0"
	.align 4
LC638:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<124>\0"
	.align 4
LC639:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<125>\0"
	.align 4
LC640:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<126>\0"
	.align 4
LC641:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<127>\0"
	.align 4
LC642:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<128>\0"
	.align 4
LC643:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<129>\0"
	.align 4
LC644:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<130>\0"
	.align 4
LC645:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<133>\0"
	.align 4
LC646:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<134>\0"
	.align 4
LC647:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<135>\0"
	.align 4
LC648:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<136>\0"
	.text
	.align 2
	.globl	__ZN13c_InputDevice10p_KeyEventEii
	.def	__ZN13c_InputDevice10p_KeyEventEii;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice10p_KeyEventEii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	movl	%ecx, -108(%ebp)
	movl	$___gxx_personality_sj0, -136(%ebp)
	movl	$LLSDA1236, -132(%ebp)
	leal	-128(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3024, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC626, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-108(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC432, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC42, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC627, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2973
	movl	$1, -156(%ebp)
	call	__Z8dbg_stopv
L2973:
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC288, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC628, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2974
	movl	$1, -156(%ebp)
	call	__Z8dbg_stopv
L2974:
	movl	-44(%ebp), %eax
	cmpl	$1, %eax
	jne	L2975
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC629, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2976
	movl	$2, -156(%ebp)
	call	__Z8dbg_stopv
L2976:
	movl	12(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$20, %edx
	movl	%eax, (%esp)
	movl	$2, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L2977
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC630, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2978
	movl	$3, -156(%ebp)
	call	__Z8dbg_stopv
L2978:
	movl	12(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$20, %edx
	movl	%eax, (%esp)
	movl	$3, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$1, (%eax)
	movl	$LC631, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2979
	call	__Z8dbg_stopv
L2979:
	movl	12(%ebp), %edx
	movl	-108(%ebp), %eax
	movl	%edx, (%esp)
	movl	$3, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice11p_PutKeyHitEi
	subl	$4, %esp
	movl	$LC632, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2980
	call	__Z8dbg_stopv
L2980:
	movl	12(%ebp), %eax
	cmpl	$1, %eax
	jne	L2981
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC633, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2982
	movl	$4, -156(%ebp)
	call	__Z8dbg_stopv
L2982:
	movl	-108(%ebp), %eax
	addl	$20, %eax
	movl	$384, (%esp)
	movl	$4, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$1, (%eax)
	movl	$LC634, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2983
	call	__Z8dbg_stopv
L2983:
	movl	-108(%ebp), %eax
	movl	$384, (%esp)
	movl	$4, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice11p_PutKeyHitEi
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2984
L2981:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC635, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2985
	movl	$5, -156(%ebp)
	call	__Z8dbg_stopv
L2985:
	movl	12(%ebp), %eax
	cmpl	$384, %eax
	jne	L2986
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC636, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2987
	movl	$6, -156(%ebp)
	call	__Z8dbg_stopv
L2987:
	movl	-108(%ebp), %eax
	addl	$20, %eax
	movl	$1, (%esp)
	movl	$6, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$1, (%eax)
	movl	$LC637, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2988
	call	__Z8dbg_stopv
L2988:
	movl	-108(%ebp), %eax
	movl	$1, (%esp)
	movl	$6, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice11p_PutKeyHitEi
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2986:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2984:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2977:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2989
L2975:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC638, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2990
	movl	$7, -156(%ebp)
	call	__Z8dbg_stopv
L2990:
	movl	-44(%ebp), %eax
	cmpl	$2, %eax
	jne	L2991
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC639, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2992
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L2992:
	movl	12(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$20, %edx
	movl	%eax, (%esp)
	movl	$8, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L2993
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC640, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2994
	movl	$9, -156(%ebp)
	call	__Z8dbg_stopv
L2994:
	movl	12(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$20, %edx
	movl	%eax, (%esp)
	movl	$9, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$0, (%eax)
	movl	$LC641, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2995
	call	__Z8dbg_stopv
L2995:
	movl	12(%ebp), %eax
	cmpl	$1, %eax
	jne	L2996
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC642, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2997
	movl	$10, -156(%ebp)
	call	__Z8dbg_stopv
L2997:
	movl	-108(%ebp), %eax
	addl	$20, %eax
	movl	$384, (%esp)
	movl	$10, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$0, (%eax)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2998
L2996:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC643, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2999
	movl	$11, -156(%ebp)
	call	__Z8dbg_stopv
L2999:
	movl	12(%ebp), %eax
	cmpl	$384, %eax
	jne	L3000
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC644, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3001
	movl	$12, -156(%ebp)
	call	__Z8dbg_stopv
L3001:
	movl	-108(%ebp), %eax
	addl	$20, %eax
	movl	$1, (%esp)
	movl	$12, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$0, (%eax)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3000:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2998:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2993:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3002
L2991:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC645, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3003
	movl	$13, -156(%ebp)
	call	__Z8dbg_stopv
L3003:
	movl	-44(%ebp), %eax
	cmpl	$3, %eax
	jne	L3004
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC646, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3005
	movl	$14, -156(%ebp)
	call	__Z8dbg_stopv
L3005:
	movl	-108(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -164(%ebp)
	movl	-108(%ebp), %eax
	addl	$44, %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIiE6LengthEv
	cmpl	%eax, -164(%ebp)
	setl	%al
	testb	%al, %al
	je	L3006
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC647, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3007
	movl	$15, -156(%ebp)
	call	__Z8dbg_stopv
L3007:
	movl	-108(%ebp), %eax
	movl	40(%eax), %eax
	movl	-108(%ebp), %edx
	addl	$44, %edx
	movl	%eax, (%esp)
	movl	$15, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	$LC648, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3008
	call	__Z8dbg_stopv
L3008:
	movl	-108(%ebp), %eax
	movl	40(%eax), %eax
	leal	1(%eax), %edx
	movl	-108(%ebp), %eax
	movl	%edx, 40(%eax)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3006:
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3004:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3002:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2989:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L3042
L3028:
	movl	%eax, -164(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3010
L3030:
	movl	%eax, -164(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3012
L3029:
	movl	%eax, -164(%ebp)
L3012:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3010
L3027:
	movl	%eax, -164(%ebp)
L3010:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3013
L3026:
	movl	%eax, -164(%ebp)
L3013:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3014
L3034:
	movl	%eax, -164(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3016
L3036:
	movl	%eax, -164(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3018
L3035:
	movl	%eax, -164(%ebp)
L3018:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3016
L3033:
	movl	%eax, -164(%ebp)
L3016:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3019
L3032:
	movl	%eax, -164(%ebp)
L3019:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3020
L3039:
	movl	%eax, -164(%ebp)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3022
L3038:
	movl	%eax, -164(%ebp)
L3022:
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3023
L3037:
	movl	%eax, -164(%ebp)
L3023:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3020
L3031:
	movl	%eax, -164(%ebp)
L3020:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L3014
L3024:
	leal	24(%ebp), %ebp
	movl	-152(%ebp), %eax
	cmpl	$14, -156(%ebp)
	ja	L3040
	movl	-156(%ebp), %edx
	sall	$2, %edx
	addl	$L3041, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3041:
	.long	L3025
	.long	L3026
	.long	L3027
	.long	L3028
	.long	L3029
	.long	L3030
	.long	L3031
	.long	L3032
	.long	L3033
	.long	L3034
	.long	L3035
	.long	L3036
	.long	L3037
	.long	L3038
	.long	L3039
	.text
L3040:
		.word	0x0b0f
L3025:
	movl	%eax, -164(%ebp)
L3014:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -156(%ebp)
	call	__Unwind_SjLj_Resume
L3042:
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1236:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1236-LLSDACSB1236
LLSDACSB1236:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
	.uleb128 0xa
	.uleb128 0
	.uleb128 0xb
	.uleb128 0
	.uleb128 0xc
	.uleb128 0
	.uleb128 0xd
	.uleb128 0
	.uleb128 0xe
	.uleb128 0
LLSDACSE1236:
	.text
	.section .rdata,"dr"
LC649:
	.ascii "InputDevice.MouseEvent\0"
	.align 4
LC650:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<142>\0"
	.align 4
LC651:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<143>\0"
	.align 4
LC652:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<144>\0"
	.align 4
LC653:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<145>\0"
	.align 4
LC654:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<146>\0"
	.align 4
LC655:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<148>\0"
	.align 4
LC656:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<152>\0"
	.align 4
LC657:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<153>\0"
	.align 4
LC658:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<154>\0"
	.align 4
LC659:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<155>\0"
	.text
	.align 2
	.globl	__ZN13c_InputDevice12p_MouseEventEiiff
	.def	__ZN13c_InputDevice12p_MouseEventEiiff;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice12p_MouseEventEiiff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA1237, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3074, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC649, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC432, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC42, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC224, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC225, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC650, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3044
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3044:
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC295, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC651, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3045
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3045:
	movl	-44(%ebp), %eax
	cmpl	$4, %eax
	jne	L3046
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC652, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3047
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L3047:
	movl	12(%ebp), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	movl	$2, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice10p_KeyEventEii
	subl	$8, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3048
L3046:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC653, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3049
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L3049:
	movl	-44(%ebp), %eax
	cmpl	$5, %eax
	jne	L3050
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC654, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3051
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L3051:
	movl	12(%ebp), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	$2, (%esp)
	movl	$4, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice10p_KeyEventEii
	subl	$8, %esp
	nop
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -132(%ebp)
	jmp	L3052
L3050:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC655, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3053
	movl	$5, -124(%ebp)
	call	__Z8dbg_stopv
L3053:
	movl	-44(%ebp), %eax
	cmpl	$6, %eax
	jne	L3054
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$1, -132(%ebp)
	jmp	L3056
L3054:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -132(%ebp)
L3056:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -132(%ebp)
	jne	L3083
	nop
	movl	$1, -132(%ebp)
	jmp	L3052
L3083:
	movl	$0, -132(%ebp)
L3052:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -132(%ebp)
	jne	L3084
	nop
	jmp	L3048
L3084:
	movl	$0, -132(%ebp)
	jmp	L3061
L3048:
	movl	$LC656, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3062
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3062:
	movl	16(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 48(%edx)
	movl	$LC657, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3063
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3063:
	movl	20(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 52(%edx)
	movl	$LC658, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3064
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3064:
	movl	-76(%ebp), %eax
	addl	$56, %eax
	movl	$0, (%esp)
	movl	$1, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfE2AtEi
	subl	$4, %esp
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	movl	$LC659, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3065
	call	__Z8dbg_stopv
L3065:
	movl	-76(%ebp), %eax
	addl	$60, %eax
	movl	$0, (%esp)
	movl	$1, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfE2AtEi
	subl	$4, %esp
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, (%edx)
	movl	$1, -132(%ebp)
L3061:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -132(%ebp)
	jne	L3043
	nop
	jmp	L3043
L3076:
	movl	%edx, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3070
L3078:
	movl	%edx, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3072
L3079:
	movl	%edx, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3072
L3077:
	movl	%edx, -132(%ebp)
L3072:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3070
L3074:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L3075
	subl	$1, %eax
	testl	%eax, %eax
	je	L3076
	subl	$1, %eax
	testl	%eax, %eax
	je	L3077
	subl	$1, %eax
	testl	%eax, %eax
	je	L3078
	subl	$1, %eax
	testl	%eax, %eax
	je	L3079
	subl	$1, %eax
		.word	0x0b0f
L3075:
	movl	%edx, -132(%ebp)
L3070:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L3043:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$16
	.section	.gcc_except_table,"w"
LLSDA1237:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1237-LLSDACSB1237
LLSDACSB1237:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
LLSDACSE1237:
	.text
	.section .rdata,"dr"
LC660:
	.ascii "InputDevice.TouchEvent\0"
	.align 4
LC661:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<159>\0"
	.align 4
LC662:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<160>\0"
	.align 4
LC663:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<161>\0"
	.align 4
LC664:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<162>\0"
	.align 4
LC665:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<163>\0"
	.align 4
LC666:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<165>\0"
	.align 4
LC667:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<169>\0"
	.align 4
LC668:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<170>\0"
	.align 4
LC669:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<171>\0"
	.align 4
LC670:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<172>\0"
	.align 4
LC671:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<173>\0"
	.text
	.align 2
	.globl	__ZN13c_InputDevice12p_TouchEventEiiff
	.def	__ZN13c_InputDevice12p_TouchEventEiiff;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice12p_TouchEventEiiff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA1238, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3119, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC660, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC432, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC42, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC224, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC225, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC661, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3086
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3086:
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC351, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC662, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3087
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3087:
	movl	-44(%ebp), %eax
	cmpl	$7, %eax
	jne	L3088
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC663, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3089
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L3089:
	movl	12(%ebp), %eax
	leal	384(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	movl	$2, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice10p_KeyEventEii
	subl	$8, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3090
L3088:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC664, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3091
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L3091:
	movl	-44(%ebp), %eax
	cmpl	$8, %eax
	jne	L3092
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC665, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3093
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L3093:
	movl	12(%ebp), %eax
	leal	384(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	$2, (%esp)
	movl	$4, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice10p_KeyEventEii
	subl	$8, %esp
	nop
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -132(%ebp)
	jmp	L3094
L3092:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC666, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3095
	movl	$5, -124(%ebp)
	call	__Z8dbg_stopv
L3095:
	movl	-44(%ebp), %eax
	cmpl	$9, %eax
	jne	L3096
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$1, -132(%ebp)
	jmp	L3098
L3096:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -132(%ebp)
L3098:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -132(%ebp)
	jne	L3131
	nop
	movl	$1, -132(%ebp)
	jmp	L3094
L3131:
	movl	$0, -132(%ebp)
L3094:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -132(%ebp)
	jne	L3132
	nop
	jmp	L3090
L3132:
	movl	$0, -132(%ebp)
	jmp	L3103
L3090:
	movl	$LC667, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3104
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3104:
	movl	12(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$56, %edx
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIfE2AtEi
	subl	$4, %esp
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	movl	$LC668, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3105
	call	__Z8dbg_stopv
L3105:
	movl	12(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$60, %edx
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIfE2AtEi
	subl	$4, %esp
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, (%edx)
	movl	$LC669, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3106
	call	__Z8dbg_stopv
L3106:
	movl	12(%ebp), %eax
	testl	%eax, %eax
	jne	L3107
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC670, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3108
	movl	$6, -124(%ebp)
	call	__Z8dbg_stopv
L3108:
	movl	16(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 48(%edx)
	movl	$LC671, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3109
	movl	$6, -124(%ebp)
	call	__Z8dbg_stopv
L3109:
	movl	20(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 52(%edx)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3107:
	movl	$1, -132(%ebp)
L3103:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -132(%ebp)
	jne	L3085
	nop
	jmp	L3085
L3121:
	movl	%eax, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3114
L3123:
	movl	%eax, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3116
L3124:
	movl	%eax, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3116
L3122:
	movl	%eax, -132(%ebp)
L3116:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3114
L3125:
	movl	%eax, -132(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3114
L3119:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
	cmpl	$5, -124(%ebp)
	ja	L3126
	movl	-124(%ebp), %edx
	sall	$2, %edx
	addl	$L3127, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3127:
	.long	L3120
	.long	L3121
	.long	L3122
	.long	L3123
	.long	L3124
	.long	L3125
	.text
L3126:
		.word	0x0b0f
L3120:
	movl	%eax, -132(%ebp)
L3114:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L3085:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$16
	.section	.gcc_except_table,"w"
LLSDA1238:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1238-LLSDACSB1238
LLSDACSB1238:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
LLSDACSE1238:
	.text
	.section .rdata,"dr"
LC672:
	.ascii "InputDevice.MotionEvent\0"
	.align 4
LC673:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<178>\0"
	.align 4
LC674:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<179>\0"
	.align 4
LC675:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<183>\0"
	.align 4
LC676:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<184>\0"
	.align 4
LC677:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<185>\0"
	.text
	.align 2
	.globl	__ZN13c_InputDevice13p_MotionEventEiifff
	.def	__ZN13c_InputDevice13p_MotionEventEiifff;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice13p_MotionEventEiifff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1239, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3146, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC672, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC432, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC42, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC224, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC225, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	24(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC445, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC673, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3134
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3134:
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC164, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC674, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3135
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3135:
	movl	-44(%ebp), %eax
	cmpl	$10, %eax
	jne	L3136
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$LC675, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3139
	jmp	L3149
L3136:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -116(%ebp)
	jmp	L3138
L3149:
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3139:
	movl	16(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	$LC676, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3140
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3140:
	movl	20(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 68(%edx)
	movl	$LC677, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3141
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3141:
	movl	24(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 72(%edx)
	movl	$1, -116(%ebp)
L3138:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -116(%ebp)
	je	L3150
	jmp	L3133
L3150:
	nop
	jmp	L3133
L3146:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3133:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$20
	.section	.gcc_except_table,"w"
LLSDA1239:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1239-LLSDACSB1239
LLSDACSB1239:
	.uleb128 0
	.uleb128 0
LLSDACSE1239:
	.text
	.section .rdata,"dr"
LC678:
	.ascii "InputDevice.KeyHit\0"
	.align 4
LC679:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<52>\0"
	.align 4
LC680:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<53>\0"
	.text
	.align 2
	.globl	__ZN13c_InputDevice8p_KeyHitEi
	.def	__ZN13c_InputDevice8p_KeyHitEi;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice8p_KeyHitEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1240, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3159, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC678, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC602, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC679, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3152
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3152:
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jle	L3153
	movl	8(%ebp), %eax
	cmpl	$511, %eax
	jg	L3153
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	8(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	$32, %edx
	movl	%eax, (%esp)
	movl	$2, -108(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3154
L3153:
	movl	$LC680, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3155
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3155:
	movl	$0, -116(%ebp)
L3154:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3162
L3161:
	movl	%edx, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3158
L3159:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3160
	subl	$1, %eax
	testl	%eax, %eax
	je	L3161
	subl	$1, %eax
		.word	0x0b0f
L3160:
	movl	%edx, -116(%ebp)
L3158:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3162:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1240:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1240-LLSDACSB1240
LLSDACSB1240:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1240:
	.text
	.section .rdata,"dr"
LC681:
	.ascii "InputDevice.KeyDown\0"
	.align 4
LC682:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<47>\0"
	.align 4
LC683:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<48>\0"
	.text
	.align 2
	.globl	__ZN13c_InputDevice9p_KeyDownEi
	.def	__ZN13c_InputDevice9p_KeyDownEi;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice9p_KeyDownEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1241, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3171, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC681, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC602, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC682, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3164
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3164:
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jle	L3165
	movl	8(%ebp), %eax
	cmpl	$511, %eax
	jg	L3165
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	8(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	$20, %edx
	movl	%eax, (%esp)
	movl	$2, -108(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movzbl	(%eax), %eax
	movb	%al, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3166
L3165:
	movl	$LC683, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3167
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3167:
	movb	$0, -116(%ebp)
L3166:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movzbl	-116(%ebp), %eax
	movb	%al, -116(%ebp)
	jmp	L3174
L3173:
	movl	%edx, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3170
L3171:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3172
	subl	$1, %eax
	testl	%eax, %eax
	je	L3173
	subl	$1, %eax
		.word	0x0b0f
L3172:
	movl	%edx, -116(%ebp)
L3170:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3174:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1241:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1241-LLSDACSB1241
LLSDACSB1241:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1241:
	.text
	.align 2
	.globl	__ZN13c_InputDevice4markEv
	.def	__ZN13c_InputDevice4markEv;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1242, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3183, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_object4markEv
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	call	__Z9gc_mark_qIP10c_JoyStateEv5ArrayIT_E
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP10c_JoyStateED1Ev
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -108(%ebp)
	call	__Z9gc_mark_qIbEv5ArrayIT_E
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	movl	-60(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -44(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	$3, -108(%ebp)
	call	__Z9gc_mark_qIiEv5ArrayIT_E
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-60(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -40(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, -108(%ebp)
	call	__Z9gc_mark_qIiEv5ArrayIT_E
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -36(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	$5, -108(%ebp)
	call	__Z9gc_mark_qIiEv5ArrayIT_E
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-60(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -32(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$6, -108(%ebp)
	call	__Z9gc_mark_qIfEv5ArrayIT_E
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -28(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$7, -108(%ebp)
	call	__Z9gc_mark_qIfEv5ArrayIT_E
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	jmp	L3193
L3183:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	cmpl	$6, -108(%ebp)
	ja	L3191
	movl	-108(%ebp), %edx
	sall	$2, %edx
	addl	$L3192, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3192:
	.long	L3184
	.long	L3185
	.long	L3186
	.long	L3187
	.long	L3188
	.long	L3189
	.long	L3190
	.text
L3191:
		.word	0x0b0f
L3184:
	movl	%eax, -116(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP10c_JoyStateED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3185:
	movl	%eax, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3186:
	movl	%eax, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3187:
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3188:
	movl	%eax, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3189:
	movl	%eax, -116(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3190:
	movl	%eax, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3193:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1242:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1242-LLSDACSB1242
LLSDACSB1242:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
LLSDACSE1242:
	.text
	.section .rdata,"dr"
LC684:
	.ascii "(InputDevice)\12\0"
LC685:
	.ascii "_keyDown\0"
LC686:
	.ascii "_keyHit\0"
LC687:
	.ascii "_keyHitQueue\0"
LC688:
	.ascii "_keyHitPut\0"
LC689:
	.ascii "_charQueue\0"
LC690:
	.ascii "_charPut\0"
LC691:
	.ascii "_charGet\0"
LC692:
	.ascii "_mouseX\0"
LC693:
	.ascii "_mouseY\0"
LC694:
	.ascii "_touchX\0"
LC695:
	.ascii "_touchY\0"
LC696:
	.ascii "_accelX\0"
LC697:
	.ascii "_accelY\0"
LC698:
	.ascii "_accelZ\0"
LC699:
	.ascii "_joyStates\0"
	.text
	.align 2
	.globl	__ZN13c_InputDevice5debugEv
	.def	__ZN13c_InputDevice5debugEv;	.scl	2;	.type	32;	.endef
__ZN13c_InputDevice5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	movl	%ecx, -92(%ebp)
	movl	$___gxx_personality_sj0, -120(%ebp)
	movl	$LLSDA1243, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3212, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-92(%ebp), %eax
	movl	$LC684, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-84(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC685, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declI5ArrayIbEE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-84(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	leal	-80(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC686, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declI5ArrayIiEE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-80(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	28(%eax), %edx
	leal	-76(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC687, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declI5ArrayIiEE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-76(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	24(%eax), %edx
	leal	-72(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC688, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-72(%ebp), %edx
	movl	%edx, (%esp)
	movl	$5, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	44(%eax), %edx
	leal	-68(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC689, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declI5ArrayIiEE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-68(%ebp), %edx
	movl	%edx, (%esp)
	movl	$6, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	40(%eax), %edx
	leal	-64(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC690, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-64(%ebp), %edx
	movl	%edx, (%esp)
	movl	$7, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	36(%eax), %edx
	leal	-60(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC691, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	$8, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	48(%eax), %edx
	leal	-56(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC692, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, (%esp)
	movl	$9, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	52(%eax), %edx
	leal	-52(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC693, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	$10, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	56(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC694, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declI5ArrayIfEE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	$11, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	60(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC695, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declI5ArrayIfEE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	$12, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	64(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC696, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	$13, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	68(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC697, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$14, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	72(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC698, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declIfE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$15, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC699, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	call	__Z8dbg_declI5ArrayIP10c_JoyStateEE6StringPKcPT_
	movl	-92(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$16, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L3231
L3214:
	movl	%eax, -148(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3215:
	movl	%eax, -148(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3216:
	movl	%eax, -148(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3217:
	movl	%eax, -148(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3218:
	movl	%eax, -148(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3219:
	movl	%eax, -148(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3220:
	movl	%eax, -148(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3221:
	movl	%eax, -148(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3222:
	movl	%eax, -148(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3223:
	movl	%eax, -148(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3224:
	movl	%eax, -148(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3225:
	movl	%eax, -148(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3226:
	movl	%eax, -148(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3227:
	movl	%eax, -148(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3228:
	movl	%eax, -148(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3197
L3212:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %eax
	cmpl	$15, -140(%ebp)
	ja	L3229
	movl	-140(%ebp), %edx
	sall	$2, %edx
	addl	$L3230, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3230:
	.long	L3213
	.long	L3214
	.long	L3215
	.long	L3216
	.long	L3217
	.long	L3218
	.long	L3219
	.long	L3220
	.long	L3221
	.long	L3222
	.long	L3223
	.long	L3224
	.long	L3225
	.long	L3226
	.long	L3227
	.long	L3228
	.text
L3229:
		.word	0x0b0f
L3213:
	movl	%eax, -148(%ebp)
L3197:
	movl	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L3231:
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-92(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1243:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1243-LLSDACSB1243
LLSDACSB1243:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
	.uleb128 0xa
	.uleb128 0
	.uleb128 0xb
	.uleb128 0
	.uleb128 0xc
	.uleb128 0
	.uleb128 0xd
	.uleb128 0
	.uleb128 0xe
	.uleb128 0
	.uleb128 0xf
	.uleb128 0
LLSDACSE1243:
	.text
	.align 2
	.globl	__ZN10c_JoyStateC2Ev
	.def	__ZN10c_JoyStateC2Ev;	.scl	2;	.type	32;	.endef
__ZN10c_JoyStateC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1245, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3234, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-44(%ebp), %eax
	movl	$__ZTV10c_JoyState+8, (%eax)
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ev
	movl	-44(%ebp), %eax
	addl	$20, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ev
	movl	-44(%ebp), %eax
	addl	$24, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ev
	movl	-44(%ebp), %eax
	addl	$28, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbEC1Ev
	leal	-40(%ebp), %eax
	movl	$2, (%esp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ei
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 16(%eax)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	leal	-36(%ebp), %eax
	movl	$2, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ei
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, 20(%eax)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	leal	-32(%ebp), %eax
	movl	$2, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIfEC1Ei
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 24(%eax)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	leal	-28(%ebp), %eax
	movl	$32, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIbEC1Ei
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 28(%eax)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	jmp	L3236
L3234:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-44(%ebp), %eax
	addl	$28, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-44(%ebp), %eax
	addl	$24, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-44(%ebp), %eax
	addl	$20, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3236:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1245:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1245-LLSDACSB1245
LLSDACSB1245:
	.uleb128 0
	.uleb128 0
LLSDACSE1245:
	.text
	.globl	__ZN10c_JoyStateC1Ev
	.def	__ZN10c_JoyStateC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN10c_JoyStateC1Ev,__ZN10c_JoyStateC2Ev
	.section .rdata,"dr"
LC700:
	.ascii "JoyState.new\0"
	.align 4
LC701:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<14>\0"
	.text
	.align 2
	.globl	__ZN10c_JoyState5m_newEv
	.def	__ZN10c_JoyState5m_newEv;	.scl	2;	.type	32;	.endef
__ZN10c_JoyState5m_newEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1247, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3241, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC700, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_JoyStateE4infoE, (%eax)
	movl	$LC701, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3238
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3238:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3243
L3241:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3243:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1247:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1247-LLSDACSB1247
LLSDACSB1247:
	.uleb128 0
	.uleb128 0
LLSDACSE1247:
	.text
	.align 2
	.globl	__ZN10c_JoyState4markEv
	.def	__ZN10c_JoyState4markEv;	.scl	2;	.type	32;	.endef
__ZN10c_JoyState4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1248, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3249, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_object4markEv
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z9gc_mark_qIfEv5ArrayIT_E
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	$2, -92(%ebp)
	call	__Z9gc_mark_qIfEv5ArrayIT_E
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -32(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$3, -92(%ebp)
	call	__Z9gc_mark_qIfEv5ArrayIT_E
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-44(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, -92(%ebp)
	call	__Z9gc_mark_qIbEv5ArrayIT_E
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	jmp	L3254
L3249:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L3250
	subl	$1, %eax
	testl	%eax, %eax
	je	L3251
	subl	$1, %eax
	testl	%eax, %eax
	je	L3252
	subl	$1, %eax
	testl	%eax, %eax
	je	L3253
	subl	$1, %eax
		.word	0x0b0f
L3250:
	movl	%edx, -100(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3251:
	movl	%edx, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3252:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3253:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3254:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1248:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1248-LLSDACSB1248
LLSDACSB1248:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1248:
	.text
	.section .rdata,"dr"
LC702:
	.ascii "(JoyState)\12\0"
LC703:
	.ascii "joyx\0"
LC704:
	.ascii "joyy\0"
LC705:
	.ascii "joyz\0"
LC706:
	.ascii "buttons\0"
	.text
	.align 2
	.globl	__ZN10c_JoyState5debugEv
	.def	__ZN10c_JoyState5debugEv;	.scl	2;	.type	32;	.endef
__ZN10c_JoyState5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1249, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3262, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC702, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC703, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declI5ArrayIfEE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC704, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declI5ArrayIfEE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	24(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC705, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declI5ArrayIfEE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	28(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC706, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declI5ArrayIbEE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$5, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L3268
L3264:
	movl	%edx, -100(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3258
L3265:
	movl	%edx, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3258
L3266:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3258
L3267:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3258
L3262:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L3263
	subl	$1, %eax
	testl	%eax, %eax
	je	L3264
	subl	$1, %eax
	testl	%eax, %eax
	je	L3265
	subl	$1, %eax
	testl	%eax, %eax
	je	L3266
	subl	$1, %eax
	testl	%eax, %eax
	je	L3267
	subl	$1, %eax
		.word	0x0b0f
L3263:
	movl	%edx, -100(%ebp)
L3258:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3268:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-44(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1249:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1249-LLSDACSB1249
LLSDACSB1249:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
LLSDACSE1249:
	.text
	.globl	_bb_input_device
	.bss
	.align 4
_bb_input_device:
	.space 4
	.section .rdata,"dr"
LC707:
	.ascii "SetInputDevice\0"
	.align 4
LC708:
	.ascii "C:/MonkeyXFree84f/modules/mojo/input.monkey<22>\0"
	.text
	.globl	__Z23bb_input_SetInputDeviceP13c_InputDevice
	.def	__Z23bb_input_SetInputDeviceP13c_InputDevice;	.scl	2;	.type	32;	.endef
__Z23bb_input_SetInputDeviceP13c_InputDevice:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1250, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3273, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC707, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC456, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	$LC708, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3270
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3270:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_bb_input_device, (%esp)
	call	__Z9gc_assignI13c_InputDeviceS0_EvRPT_PT0_
	movl	$0, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L3275
L3273:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L3275:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-96(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1250:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1250-LLSDACSB1250
LLSDACSB1250:
	.uleb128 0
	.uleb128 0
LLSDACSE1250:
	.text
	.globl	_bb_app__devWidth
	.bss
	.align 4
_bb_app__devWidth:
	.space 4
	.globl	_bb_app__devHeight
	.align 4
_bb_app__devHeight:
	.space 4
	.section	.text$_ZN14dbg_var_type_tIbEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIbEC1Ev
	.def	__ZN14dbg_var_type_tIbEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIbEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIbE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC709:
	.ascii "ValidateDeviceWindow\0"
LC710:
	.ascii "notifyApp\0"
	.align 4
LC711:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<57>\0"
	.align 4
LC712:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<58>\0"
LC713:
	.ascii "h\0"
	.align 4
LC714:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<59>\0"
	.align 4
LC715:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<60>\0"
	.align 4
LC716:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<61>\0"
	.align 4
LC717:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<62>\0"
	.text
	.globl	__Z27bb_app_ValidateDeviceWindowb
	.def	__Z27bb_app_ValidateDeviceWindowb;	.scl	2;	.type	32;	.endef
__Z27bb_app_ValidateDeviceWindowb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	8(%ebp), %eax
	movb	%al, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1251, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3291, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC709, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-60(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC710, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIbE4infoE, (%eax)
	movl	$LC711, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3278
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3278:
	movl	_bb_app__game, %eax
	movl	(%eax), %eax
	addl	$72, %eax
	movl	(%eax), %eax
	movl	_bb_app__game, %edx
	movl	$1, -108(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC74, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC712, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3279
	call	__Z8dbg_stopv
L3279:
	movl	_bb_app__game, %eax
	movl	(%eax), %eax
	addl	$76, %eax
	movl	(%eax), %eax
	movl	_bb_app__game, %edx
	movl	$1, -108(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC713, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC714, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3280
	call	__Z8dbg_stopv
L3280:
	movl	-40(%ebp), %edx
	movl	_bb_app__devWidth, %eax
	cmpl	%eax, %edx
	jne	L3281
	movl	-44(%ebp), %edx
	movl	_bb_app__devHeight, %eax
	cmpl	%eax, %edx
	jne	L3281
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -116(%ebp)
	jmp	L3282
L3281:
	movl	$LC715, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3283
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3283:
	movl	-40(%ebp), %eax
	movl	%eax, _bb_app__devWidth
	movl	$LC716, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3284
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3284:
	movl	-44(%ebp), %eax
	movl	%eax, _bb_app__devHeight
	movl	$LC717, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3285
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3285:
	movzbl	-60(%ebp), %eax
	testb	%al, %al
	je	L3286
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	_bb_app__app, %eax
	movl	%eax, %ecx
	call	__ZN5c_App10p_OnResizeEv
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3286:
	movl	$1, -116(%ebp)
L3282:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -116(%ebp)
	je	L3294
	jmp	L3277
L3294:
	nop
	jmp	L3277
L3291:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3277:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1251:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1251-LLSDACSB1251
LLSDACSB1251:
	.uleb128 0
	.uleb128 0
LLSDACSE1251:
	.text
	.align 2
	.globl	__ZN13c_DisplayModeC2Ev
	.def	__ZN13c_DisplayModeC2Ev;	.scl	2;	.type	32;	.endef
__ZN13c_DisplayModeC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV13c_DisplayMode+8, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 20(%eax)
	leave
	ret
	.globl	__ZN13c_DisplayModeC1Ev
	.def	__ZN13c_DisplayModeC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN13c_DisplayModeC1Ev,__ZN13c_DisplayModeC2Ev
	.section	.text$_ZN14dbg_var_type_tIP13c_DisplayModeEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP13c_DisplayModeEC1Ev
	.def	__ZN14dbg_var_type_tIP13c_DisplayModeEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP13c_DisplayModeEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP13c_DisplayModeE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC718:
	.ascii "DisplayMode.new\0"
	.align 4
LC719:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<192>\0"
	.align 4
LC720:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<193>\0"
	.text
	.align 2
	.globl	__ZN13c_DisplayMode5m_newEii
	.def	__ZN13c_DisplayMode5m_newEii;	.scl	2;	.type	32;	.endef
__ZN13c_DisplayMode5m_newEii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1258, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3302, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC718, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC523, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC524, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC719, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3298
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3298:
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	$LC720, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3299
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3299:
	movl	12(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3304
L3302:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3304:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1258:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1258-LLSDACSB1258
LLSDACSB1258:
	.uleb128 0
	.uleb128 0
LLSDACSE1258:
	.text
	.section .rdata,"dr"
	.align 4
LC721:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<189>\0"
	.text
	.align 2
	.globl	__ZN13c_DisplayMode6m_new2Ev
	.def	__ZN13c_DisplayMode6m_new2Ev;	.scl	2;	.type	32;	.endef
__ZN13c_DisplayMode6m_new2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1262, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3309, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC718, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	$LC721, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3306
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3306:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3311
L3309:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3311:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1262:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1262-LLSDACSB1262
LLSDACSB1262:
	.uleb128 0
	.uleb128 0
LLSDACSE1262:
	.text
	.align 2
	.globl	__ZN13c_DisplayMode4markEv
	.def	__ZN13c_DisplayMode4markEv;	.scl	2;	.type	32;	.endef
__ZN13c_DisplayMode4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_object4markEv
	leave
	ret
	.section .rdata,"dr"
LC722:
	.ascii "(DisplayMode)\12\0"
LC723:
	.ascii "_width\0"
LC724:
	.ascii "_height\0"
	.text
	.align 2
	.globl	__ZN13c_DisplayMode5debugEv
	.def	__ZN13c_DisplayMode5debugEv;	.scl	2;	.type	32;	.endef
__ZN13c_DisplayMode5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1264, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3318, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC722, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC723, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC724, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L3322
L3320:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3316
L3321:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3316
L3318:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L3319
	subl	$1, %eax
	testl	%eax, %eax
	je	L3320
	subl	$1, %eax
	testl	%eax, %eax
	je	L3321
	subl	$1, %eax
		.word	0x0b0f
L3319:
	movl	%edx, -100(%ebp)
L3316:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3322:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-44(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1264:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1264-LLSDACSB1264
LLSDACSB1264:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1264:
	.text
	.align 2
	.globl	__ZN5c_MapC2Ev
	.def	__ZN5c_MapC2Ev;	.scl	2;	.type	32;	.endef
__ZN5c_MapC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV5c_Map+8, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 16(%eax)
	leave
	ret
	.globl	__ZN5c_MapC1Ev
	.def	__ZN5c_MapC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN5c_MapC1Ev,__ZN5c_MapC2Ev
	.section	.text$_ZN14dbg_var_type_tIP5c_MapEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP5c_MapEC1Ev
	.def	__ZN14dbg_var_type_tIP5c_MapEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP5c_MapEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP5c_MapE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC725:
	.ascii "Map.new\0"
	.align 4
LC726:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<7>\0"
	.text
	.align 2
	.globl	__ZN5c_Map5m_newEv
	.def	__ZN5c_Map5m_newEv;	.scl	2;	.type	32;	.endef
__ZN5c_Map5m_newEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1268, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3329, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC725, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_MapE4infoE, (%eax)
	movl	$LC726, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3326
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3326:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3331
L3329:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3331:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1268:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1268-LLSDACSB1268
LLSDACSB1268:
	.uleb128 0
	.uleb128 0
LLSDACSE1268:
	.text
	.section	.text$_ZN14dbg_var_type_tIP6c_NodeEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP6c_NodeEC1Ev
	.def	__ZN14dbg_var_type_tIP6c_NodeEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP6c_NodeEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP6c_NodeE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC727:
	.ascii "Map.FindNode\0"
	.align 4
LC728:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<157>\0"
LC729:
	.ascii "node\0"
	.align 4
LC730:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<159>\0"
	.align 4
LC731:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<160>\0"
LC732:
	.ascii "cmp\0"
	.align 4
LC733:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<161>\0"
	.align 4
LC734:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<162>\0"
	.align 4
LC735:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<163>\0"
	.align 4
LC736:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<164>\0"
	.align 4
LC737:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<166>\0"
	.align 4
LC738:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<169>\0"
	.text
	.align 2
	.globl	__ZN5c_Map10p_FindNodeEi
	.def	__ZN5c_Map10p_FindNodeEi;	.scl	2;	.type	32;	.endef
__ZN5c_Map10p_FindNodeEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA1272, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L3363, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC727, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_MapE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %edi
	movl	%edi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC602, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC728, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3334
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3334:
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC729, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC730, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3335
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3335:
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3336
L3354:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC731, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3337
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L3337:
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	16(%eax), %ecx
	movl	8(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	$2, -124(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$8, %esp
	movl	%eax, -52(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-52(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC732, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC733, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3338
	call	__Z8dbg_stopv
L3338:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jle	L3339
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC734, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3340
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L3340:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3341
L3339:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC735, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3342
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L3342:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jns	L3343
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC736, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3344
	movl	$5, -124(%ebp)
	call	__Z8dbg_stopv
L3344:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$1, -136(%ebp)
	jmp	L3347
L3343:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC737, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3346
	movl	$6, -124(%ebp)
	call	__Z8dbg_stopv
L3346:
	movl	-44(%ebp), %eax
	movl	%eax, -132(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -136(%ebp)
L3347:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -136(%ebp)
	jne	L3374
	nop
	jmp	L3341
L3374:
	movl	$0, -136(%ebp)
	jmp	L3350
L3341:
	movl	$1, -136(%ebp)
L3350:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -136(%ebp)
	jne	L3353
	nop
L3336:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	L3354
	movl	$LC738, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3355
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3355:
	movl	-44(%ebp), %eax
	movl	%eax, -132(%ebp)
L3353:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3375
L3366:
	movl	%eax, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3358
L3368:
	movl	%eax, -132(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3360
L3369:
	movl	%eax, -132(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3360
L3367:
	movl	%eax, -132(%ebp)
L3360:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3358
L3365:
	movl	%eax, -132(%ebp)
L3358:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3362
L3363:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
	cmpl	$5, -124(%ebp)
	ja	L3370
	movl	-124(%ebp), %edx
	sall	$2, %edx
	addl	$L3371, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3371:
	.long	L3364
	.long	L3365
	.long	L3366
	.long	L3367
	.long	L3368
	.long	L3369
	.text
L3370:
		.word	0x0b0f
L3364:
	movl	%eax, -132(%ebp)
L3362:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L3375:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-132(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1272:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1272-LLSDACSB1272
LLSDACSB1272:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
LLSDACSE1272:
	.text
	.section .rdata,"dr"
LC739:
	.ascii "Map.Contains\0"
	.align 4
LC740:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<25>\0"
	.text
	.align 2
	.globl	__ZN5c_Map10p_ContainsEi
	.def	__ZN5c_Map10p_ContainsEi;	.scl	2;	.type	32;	.endef
__ZN5c_Map10p_ContainsEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1276, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3380, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC739, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_MapE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC602, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC740, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3377
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3377:
	movl	8(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map10p_FindNodeEi
	subl	$4, %esp
	testl	%eax, %eax
	setne	%al
	movb	%al, -25(%ebp)
	movzbl	-25(%ebp), %eax
	movb	%al, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movzbl	-116(%ebp), %eax
	movb	%al, -116(%ebp)
	jmp	L3382
L3380:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3382:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1276:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1276-LLSDACSB1276
LLSDACSB1276:
	.uleb128 0
	.uleb128 0
LLSDACSE1276:
	.text
	.section .rdata,"dr"
LC741:
	.ascii "Map.RotateLeft\0"
	.align 4
LC742:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<251>\0"
LC743:
	.ascii "child\0"
	.align 4
LC744:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<252>\0"
	.align 4
LC745:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<253>\0"
	.align 4
LC746:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<254>\0"
	.align 4
LC747:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<256>\0"
	.align 4
LC748:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<257>\0"
	.align 4
LC749:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<258>\0"
	.align 4
LC750:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<259>\0"
	.align 4
LC751:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<261>\0"
	.align 4
LC752:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<264>\0"
	.align 4
LC753:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<266>\0"
	.align 4
LC754:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<267>\0"
	.text
	.align 2
	.globl	__ZN5c_Map12p_RotateLeftEP6c_Node
	.def	__ZN5c_Map12p_RotateLeftEP6c_Node;	.scl	2;	.type	32;	.endef
__ZN5c_Map12p_RotateLeftEP6c_Node:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA1277, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3408, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC741, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_MapE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC729, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC742, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3384
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3384:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC743, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC744, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3385
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3385:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC745, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3386
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3386:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L3387
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC746, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3388
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L3388:
	movl	8(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	24(%edx), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3387:
	movl	$LC747, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3389
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3389:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-44(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC748, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3390
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3390:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L3391
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC749, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3392
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L3392:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	jne	L3393
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC750, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3394
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L3394:
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	36(%edx), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3395
L3393:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC751, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3396
	movl	$5, -124(%ebp)
	call	__Z8dbg_stopv
L3396:
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	36(%edx), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3395:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3397
L3391:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC752, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3398
	movl	$6, -124(%ebp)
	call	__Z8dbg_stopv
L3398:
	movl	-44(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3397:
	movl	$LC753, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3399
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3399:
	movl	8(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC754, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3400
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3400:
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$0, -132(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3417
L3410:
	movl	%eax, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3403
L3412:
	movl	%eax, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3405
L3413:
	movl	%eax, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3405
L3411:
	movl	%eax, -132(%ebp)
L3405:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3403
L3414:
	movl	%eax, -132(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3403
L3408:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
	cmpl	$5, -124(%ebp)
	ja	L3415
	movl	-124(%ebp), %edx
	sall	$2, %edx
	addl	$L3416, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3416:
	.long	L3409
	.long	L3410
	.long	L3411
	.long	L3412
	.long	L3413
	.long	L3414
	.text
L3415:
		.word	0x0b0f
L3409:
	movl	%eax, -132(%ebp)
L3403:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L3417:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-132(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1277:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1277-LLSDACSB1277
LLSDACSB1277:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
LLSDACSE1277:
	.text
	.section .rdata,"dr"
LC755:
	.ascii "Map.RotateRight\0"
	.align 4
LC756:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<271>\0"
	.align 4
LC757:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<272>\0"
	.align 4
LC758:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<273>\0"
	.align 4
LC759:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<274>\0"
	.align 4
LC760:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<276>\0"
	.align 4
LC761:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<277>\0"
	.align 4
LC762:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<278>\0"
	.align 4
LC763:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<279>\0"
	.align 4
LC764:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<281>\0"
	.align 4
LC765:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<284>\0"
	.align 4
LC766:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<286>\0"
	.align 4
LC767:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<287>\0"
	.text
	.align 2
	.globl	__ZN5c_Map13p_RotateRightEP6c_Node
	.def	__ZN5c_Map13p_RotateRightEP6c_Node;	.scl	2;	.type	32;	.endef
__ZN5c_Map13p_RotateRightEP6c_Node:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	%ecx, -76(%ebp)
	movl	$___gxx_personality_sj0, -104(%ebp)
	movl	$LLSDA1278, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3443, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC755, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-76(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_MapE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC729, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC756, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3419
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3419:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC743, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC757, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3420
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3420:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	8(%ebp), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC758, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3421
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3421:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L3422
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC759, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3423
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L3423:
	movl	8(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	20(%edx), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3422:
	movl	$LC760, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3424
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3424:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-44(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC761, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3425
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3425:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L3426
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC762, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3427
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L3427:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	jne	L3428
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC763, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3429
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L3429:
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	36(%edx), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3430
L3428:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC764, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3431
	movl	$5, -124(%ebp)
	call	__Z8dbg_stopv
L3431:
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	36(%edx), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3430:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3432
L3426:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC765, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3433
	movl	$6, -124(%ebp)
	call	__Z8dbg_stopv
L3433:
	movl	-44(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3432:
	movl	$LC766, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3434
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3434:
	movl	8(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC767, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3435
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3435:
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$0, -132(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3452
L3445:
	movl	%eax, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3438
L3447:
	movl	%eax, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3440
L3448:
	movl	%eax, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3440
L3446:
	movl	%eax, -132(%ebp)
L3440:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3438
L3449:
	movl	%eax, -132(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3438
L3443:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
	cmpl	$5, -124(%ebp)
	ja	L3450
	movl	-124(%ebp), %edx
	sall	$2, %edx
	addl	$L3451, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3451:
	.long	L3444
	.long	L3445
	.long	L3446
	.long	L3447
	.long	L3448
	.long	L3449
	.text
L3450:
		.word	0x0b0f
L3444:
	movl	%eax, -132(%ebp)
L3438:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L3452:
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-132(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1278:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1278-LLSDACSB1278
LLSDACSB1278:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
LLSDACSE1278:
	.text
	.section .rdata,"dr"
LC768:
	.ascii "Map.InsertFixup\0"
	.align 4
LC769:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<212>\0"
	.align 4
LC770:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<213>\0"
	.align 4
LC771:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<214>\0"
LC772:
	.ascii "uncle\0"
	.align 4
LC773:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<215>\0"
	.align 4
LC774:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<216>\0"
	.align 4
LC775:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<217>\0"
	.align 4
LC776:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<218>\0"
	.align 4
LC777:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<219>\0"
	.align 4
LC778:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<221>\0"
	.align 4
LC779:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<222>\0"
	.align 4
LC780:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<223>\0"
	.align 4
LC781:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<225>\0"
	.align 4
LC782:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<226>\0"
	.align 4
LC783:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<227>\0"
	.align 4
LC784:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<230>\0"
	.align 4
LC785:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<231>\0"
	.align 4
LC786:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<232>\0"
	.align 4
LC787:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<233>\0"
	.align 4
LC788:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<234>\0"
	.align 4
LC789:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<235>\0"
	.align 4
LC790:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<237>\0"
	.align 4
LC791:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<238>\0"
	.align 4
LC792:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<239>\0"
	.align 4
LC793:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<241>\0"
	.align 4
LC794:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<242>\0"
	.align 4
LC795:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<243>\0"
	.align 4
LC796:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<247>\0"
	.text
	.align 2
	.globl	__ZN5c_Map13p_InsertFixupEP6c_Node
	.def	__ZN5c_Map13p_InsertFixupEP6c_Node;	.scl	2;	.type	32;	.endef
__ZN5c_Map13p_InsertFixupEP6c_Node:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	movl	%ecx, -92(%ebp)
	movl	$___gxx_personality_sj0, -120(%ebp)
	movl	$LLSDA1279, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3503, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC768, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-92(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_MapE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC729, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC769, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3454
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3454:
	jmp	L3455
L3490:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC770, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3456
	movl	$2, -140(%ebp)
	call	__Z8dbg_stopv
L3456:
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	L3457
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC771, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3458
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L3458:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-52(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC772, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC773, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3459
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L3459:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	L3460
	movl	-52(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$-1, %eax
	jne	L3460
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC774, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3461
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L3461:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$1, 32(%eax)
	movl	$LC775, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3462
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L3462:
	movl	-52(%ebp), %eax
	movl	$1, 32(%eax)
	movl	$LC776, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3463
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L3463:
	movl	-52(%ebp), %eax
	movl	36(%eax), %eax
	movl	$-1, 32(%eax)
	movl	$LC777, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3464
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L3464:
	movl	-52(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3465
L3460:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC778, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3466
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L3466:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	jne	L3467
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC779, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3468
	movl	$6, -140(%ebp)
	call	__Z8dbg_stopv
L3468:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	$LC780, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3469
	movl	$6, -140(%ebp)
	call	__Z8dbg_stopv
L3469:
	movl	8(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%edx, (%esp)
	movl	$6, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map12p_RotateLeftEP6c_Node
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3467:
	movl	$LC781, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3470
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L3470:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$1, 32(%eax)
	movl	$LC782, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3471
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L3471:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %eax
	movl	$-1, 32(%eax)
	movl	$LC783, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3472
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L3472:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%edx, (%esp)
	movl	$5, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map13p_RotateRightEP6c_Node
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3465:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3473
L3457:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC784, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3474
	movl	$7, -140(%ebp)
	call	__Z8dbg_stopv
L3474:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-72(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC772, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC785, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3475
	movl	$7, -140(%ebp)
	call	__Z8dbg_stopv
L3475:
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	je	L3476
	movl	-72(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$-1, %eax
	jne	L3476
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC786, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3477
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3477:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$1, 32(%eax)
	movl	$LC787, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3478
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3478:
	movl	-72(%ebp), %eax
	movl	$1, 32(%eax)
	movl	$LC788, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3479
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3479:
	movl	-72(%ebp), %eax
	movl	36(%eax), %eax
	movl	$-1, 32(%eax)
	movl	$LC789, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3480
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3480:
	movl	-72(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3481
L3476:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC790, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3482
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L3482:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	jne	L3483
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC791, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3484
	movl	$10, -140(%ebp)
	call	__Z8dbg_stopv
L3484:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	$LC792, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3485
	movl	$10, -140(%ebp)
	call	__Z8dbg_stopv
L3485:
	movl	8(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%edx, (%esp)
	movl	$10, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map13p_RotateRightEP6c_Node
	subl	$4, %esp
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3483:
	movl	$LC793, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3486
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L3486:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$1, 32(%eax)
	movl	$LC794, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3487
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L3487:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %eax
	movl	$-1, 32(%eax)
	movl	$LC795, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3488
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L3488:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%edx, (%esp)
	movl	$9, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map12p_RotateLeftEP6c_Node
	subl	$4, %esp
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3481:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3473:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3455:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L3489
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	32(%eax), %eax
	cmpl	$-1, %eax
	jne	L3489
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	L3490
L3489:
	movl	$LC796, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3491
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3491:
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	movl	$1, 32(%eax)
	movl	$0, -148(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3516
L3507:
	movl	%eax, -148(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3494
L3509:
	movl	%eax, -148(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3496
L3508:
	movl	%eax, -148(%ebp)
L3496:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3494
L3506:
	movl	%eax, -148(%ebp)
L3494:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3497
L3511:
	movl	%eax, -148(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3499
L3513:
	movl	%eax, -148(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3501
L3512:
	movl	%eax, -148(%ebp)
L3501:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3499
L3510:
	movl	%eax, -148(%ebp)
L3499:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3497
L3505:
	movl	%eax, -148(%ebp)
L3497:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3502
L3503:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %eax
	cmpl	$9, -140(%ebp)
	ja	L3514
	movl	-140(%ebp), %edx
	sall	$2, %edx
	addl	$L3515, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3515:
	.long	L3504
	.long	L3505
	.long	L3506
	.long	L3507
	.long	L3508
	.long	L3509
	.long	L3510
	.long	L3511
	.long	L3512
	.long	L3513
	.text
L3514:
		.word	0x0b0f
L3504:
	movl	%eax, -148(%ebp)
L3502:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L3516:
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-148(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1279:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1279-LLSDACSB1279
LLSDACSB1279:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
LLSDACSE1279:
	.text
	.section .rdata,"dr"
LC797:
	.ascii "Map.Set\0"
LC798:
	.ascii "value\0"
	.align 4
LC799:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<29>\0"
	.align 4
LC800:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<30>\0"
LC801:
	.ascii "parent\0"
	.align 4
LC802:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<32>\0"
	.align 4
LC803:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<33>\0"
	.align 4
LC804:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<34>\0"
	.align 4
LC805:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<35>\0"
	.align 4
LC806:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<36>\0"
	.align 4
LC807:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<37>\0"
	.align 4
LC808:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<38>\0"
	.align 4
LC809:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<40>\0"
	.align 4
LC810:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<41>\0"
	.align 4
LC811:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<45>\0"
	.align 4
LC812:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<47>\0"
	.align 4
LC813:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<48>\0"
	.align 4
LC814:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<49>\0"
	.align 4
LC815:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<51>\0"
	.align 4
LC816:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<53>\0"
	.align 4
LC817:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<55>\0"
	.align 4
LC818:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<57>\0"
	.text
	.align 2
	.globl	__ZN5c_Map5p_SetEiP13c_DisplayMode
	.def	__ZN5c_Map5p_SetEiP13c_DisplayMode;	.scl	2;	.type	32;	.endef
__ZN5c_Map5p_SetEiP13c_DisplayMode:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	movl	%ecx, -92(%ebp)
	movl	$___gxx_personality_sj0, -120(%ebp)
	movl	$LLSDA1280, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L3566, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC797, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-92(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_MapE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %edi
	movl	%edi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC602, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC798, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	$LC799, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3518
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3518:
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC729, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC800, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3519
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3519:
	movl	$0, -48(%ebp)
	movl	$0, -52(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-48(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC801, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-52(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC732, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC802, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3520
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3520:
	movzbl	-148(%ebp), %eax
	movb	%al, -148(%ebp)
	jmp	L3521
L3541:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC803, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3522
	movl	$2, -140(%ebp)
	call	__Z8dbg_stopv
L3522:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	$LC804, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3523
	movl	$2, -140(%ebp)
	call	__Z8dbg_stopv
L3523:
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %ebx
	movl	-44(%ebp), %eax
	movl	16(%eax), %ecx
	movl	8(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	$2, -140(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$8, %esp
	movl	%eax, -52(%ebp)
	movl	$LC805, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3524
	call	__Z8dbg_stopv
L3524:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jle	L3525
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC806, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3526
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L3526:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3527
L3525:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC807, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3528
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L3528:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jns	L3529
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC808, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3530
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L3530:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$1, -152(%ebp)
	jmp	L3534
L3529:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC809, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3532
	movl	$6, -140(%ebp)
	call	__Z8dbg_stopv
L3532:
	movl	12(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	$28, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI13c_DisplayModeS0_EvRPT_PT0_
	movl	$LC810, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3533
	movl	$6, -140(%ebp)
	call	__Z8dbg_stopv
L3533:
	movb	$0, -148(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -152(%ebp)
L3534:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -152(%ebp)
	jne	L3582
	nop
	jmp	L3527
L3582:
	movl	$0, -152(%ebp)
	jmp	L3537
L3527:
	movl	$1, -152(%ebp)
L3537:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -152(%ebp)
	jne	L3540
	nop
L3521:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	L3541
	movl	$LC811, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3542
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3542:
	movl	-48(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	$40, (%esp)
	movl	$1, -140(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -156(%ebp)
	movl	$7, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN6c_NodeC1Ev
	movl	-148(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$-1, 8(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -140(%ebp)
	movl	-156(%ebp), %ecx
	call	__ZN6c_Node5m_newEiP13c_DisplayModeiPS_
	subl	$16, %esp
	movl	%eax, -44(%ebp)
	movl	$LC812, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3543
	call	__Z8dbg_stopv
L3543:
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	je	L3544
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC813, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3545
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3545:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jle	L3546
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC814, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3547
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L3547:
	movl	-44(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3548
L3546:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC815, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3549
	movl	$10, -140(%ebp)
	call	__Z8dbg_stopv
L3549:
	movl	-44(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3548:
	movl	$LC816, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3550
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3550:
	movl	-44(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%edx, (%esp)
	movl	$8, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map13p_InsertFixupEP6c_Node
	subl	$4, %esp
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3551
L3544:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC817, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3552
	movl	$11, -140(%ebp)
	call	__Z8dbg_stopv
L3552:
	movl	-44(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3551:
	movl	$LC818, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3553
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3553:
	movb	$1, -148(%ebp)
L3540:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movzbl	-148(%ebp), %eax
	movb	%al, -148(%ebp)
	jmp	L3583
L3569:
	movl	%eax, -148(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3556
L3571:
	movl	%eax, -148(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3558
L3572:
	movl	%eax, -148(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3558
L3570:
	movl	%eax, -148(%ebp)
L3558:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3556
L3568:
	movl	%eax, -148(%ebp)
L3556:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3560
L3573:
	movl	%eax, -148(%ebp)
	movl	-156(%ebp), %ebx
	movl	%ebx, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3560
L3575:
	movl	%eax, -148(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3563
L3576:
	movl	%eax, -148(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3563
L3574:
	movl	%eax, -148(%ebp)
L3563:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3560
L3577:
	movl	%eax, -148(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3560
L3566:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %eax
	cmpl	$10, -140(%ebp)
	ja	L3578
	movl	-140(%ebp), %edx
	sall	$2, %edx
	addl	$L3579, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3579:
	.long	L3567
	.long	L3568
	.long	L3569
	.long	L3570
	.long	L3571
	.long	L3572
	.long	L3573
	.long	L3574
	.long	L3575
	.long	L3576
	.long	L3577
	.text
L3578:
		.word	0x0b0f
L3567:
	movl	%eax, -148(%ebp)
L3560:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L3583:
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-148(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1280:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1280-LLSDACSB1280
LLSDACSB1280:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
	.uleb128 0x7
	.uleb128 0
	.uleb128 0x8
	.uleb128 0
	.uleb128 0x9
	.uleb128 0
	.uleb128 0xa
	.uleb128 0
LLSDACSE1280:
	.text
	.section .rdata,"dr"
LC819:
	.ascii "Map.Insert\0"
	.align 4
LC820:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<146>\0"
	.text
	.align 2
	.globl	__ZN5c_Map8p_InsertEiP13c_DisplayMode
	.def	__ZN5c_Map8p_InsertEiP13c_DisplayMode;	.scl	2;	.type	32;	.endef
__ZN5c_Map8p_InsertEiP13c_DisplayMode:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1281, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3588, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC819, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_MapE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC602, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC798, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	$LC820, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3585
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3585:
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	$1, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map5p_SetEiP13c_DisplayMode
	subl	$8, %esp
	movb	%al, -25(%ebp)
	movzbl	-25(%ebp), %eax
	movb	%al, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movzbl	-116(%ebp), %eax
	movb	%al, -116(%ebp)
	jmp	L3590
L3588:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3590:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movzbl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1281:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1281-LLSDACSB1281
LLSDACSB1281:
	.uleb128 0
	.uleb128 0
LLSDACSE1281:
	.text
	.align 2
	.globl	__ZN5c_Map4markEv
	.def	__ZN5c_Map4markEv;	.scl	2;	.type	32;	.endef
__ZN5c_Map4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_object4markEv
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI6c_NodeEvPT_
	leave
	ret
	.section .rdata,"dr"
LC821:
	.ascii "(Map)\12\0"
LC822:
	.ascii "root\0"
	.text
	.align 2
	.globl	__ZN5c_Map5debugEv
	.def	__ZN5c_Map5debugEv;	.scl	2;	.type	32;	.endef
__ZN5c_Map5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1283, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3596, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC821, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC822, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declIP6c_NodeE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L3599
L3598:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3595
L3596:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L3597
	subl	$1, %eax
	testl	%eax, %eax
	je	L3598
	subl	$1, %eax
		.word	0x0b0f
L3597:
	movl	%edx, -100(%ebp)
L3595:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3599:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-44(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1283:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1283-LLSDACSB1283
LLSDACSB1283:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1283:
	.text
	.section	.text$_ZN5c_MapD2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN5c_MapD2Ev
	.def	__ZN5c_MapD2Ev;	.scl	2;	.type	32;	.endef
__ZN5c_MapD2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV5c_Map+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L3600
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L3600:
	leave
	ret
	.section	.text$_ZN5c_MapD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN5c_MapD1Ev
	.def	__ZN5c_MapD1Ev;	.scl	2;	.type	32;	.endef
__ZN5c_MapD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$__ZTV5c_Map+8, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L3603
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L3603:
	leave
	ret
	.section	.text$_ZN5c_MapD0Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN5c_MapD0Ev
	.def	__ZN5c_MapD0Ev;	.scl	2;	.type	32;	.endef
__ZN5c_MapD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5c_MapD1Ev
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	leave
	ret
	.text
	.align 2
	.globl	__ZN8c_IntMapC2Ev
	.def	__ZN8c_IntMapC2Ev;	.scl	2;	.type	32;	.endef
__ZN8c_IntMapC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5c_MapC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV8c_IntMap+8, (%eax)
	leave
	ret
	.globl	__ZN8c_IntMapC1Ev
	.def	__ZN8c_IntMapC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN8c_IntMapC1Ev,__ZN8c_IntMapC2Ev
	.section	.text$_ZN14dbg_var_type_tIP8c_IntMapEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP8c_IntMapEC1Ev
	.def	__ZN14dbg_var_type_tIP8c_IntMapEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP8c_IntMapEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP8c_IntMapE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC823:
	.ascii "IntMap.new\0"
	.align 4
LC824:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<534>\0"
	.text
	.align 2
	.globl	__ZN8c_IntMap5m_newEv
	.def	__ZN8c_IntMap5m_newEv;	.scl	2;	.type	32;	.endef
__ZN8c_IntMap5m_newEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1291, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3614, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC823, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP8c_IntMapE4infoE, (%eax)
	movl	$LC824, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3611
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3611:
	movl	-44(%ebp), %eax
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map5m_newEv
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3616
L3614:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3616:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1291:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1291-LLSDACSB1291
LLSDACSB1291:
	.uleb128 0
	.uleb128 0
LLSDACSE1291:
	.text
	.section .rdata,"dr"
LC825:
	.ascii "IntMap.Compare\0"
LC826:
	.ascii "lhs\0"
LC827:
	.ascii "rhs\0"
	.align 4
LC828:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<537>\0"
	.text
	.align 2
	.globl	__ZN8c_IntMap9p_CompareEii
	.def	__ZN8c_IntMap9p_CompareEii;	.scl	2;	.type	32;	.endef
__ZN8c_IntMap9p_CompareEii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1295, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3621, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC825, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP8c_IntMapE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC826, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC827, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC828, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3618
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3618:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3623
L3621:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3623:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1295:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1295-LLSDACSB1295
LLSDACSB1295:
	.uleb128 0
	.uleb128 0
LLSDACSE1295:
	.text
	.align 2
	.globl	__ZN8c_IntMap4markEv
	.def	__ZN8c_IntMap4markEv;	.scl	2;	.type	32;	.endef
__ZN8c_IntMap4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5c_Map4markEv
	leave
	ret
	.section .rdata,"dr"
LC829:
	.ascii "(IntMap)\12\0"
	.text
	.align 2
	.globl	__ZN8c_IntMap5debugEv
	.def	__ZN8c_IntMap5debugEv;	.scl	2;	.type	32;	.endef
__ZN8c_IntMap5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1297, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3628, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC829, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %edx
	leal	-28(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map5debugEv
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	movl	-44(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L3630
L3628:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3630:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-44(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1297:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1297-LLSDACSB1297
LLSDACSB1297:
	.uleb128 0
	.uleb128 0
LLSDACSE1297:
	.text
	.align 2
	.globl	__ZN7c_StackC2Ev
	.def	__ZN7c_StackC2Ev;	.scl	2;	.type	32;	.endef
__ZN7c_StackC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-28(%ebp), %eax
	movl	$__ZTV7c_Stack+8, (%eax)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeEC1Ev
	leal	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeEC1Ev
	movl	-28(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 16(%eax)
	leal	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	-28(%ebp), %eax
	movl	$0, 20(%eax)
	leave
	ret
	.globl	__ZN7c_StackC1Ev
	.def	__ZN7c_StackC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN7c_StackC1Ev,__ZN7c_StackC2Ev
	.section	.text$_ZN14dbg_var_type_tIP7c_StackEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP7c_StackEC1Ev
	.def	__ZN14dbg_var_type_tIP7c_StackEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP7c_StackEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP7c_StackE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC830:
	.ascii "Stack.new\0"
	.text
	.align 2
	.globl	__ZN7c_Stack5m_newEv
	.def	__ZN7c_Stack5m_newEv;	.scl	2;	.type	32;	.endef
__ZN7c_Stack5m_newEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$24, %esp
	movl	%ecx, -24(%ebp)
	leal	-16(%ebp), %eax
	movl	$LC830, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_StackE4infoE, (%eax)
	movl	-24(%ebp), %ebx
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section	.text$_ZN14dbg_var_type_tI5ArrayIP13c_DisplayModeEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tI5ArrayIP13c_DisplayModeEEC1Ev
	.def	__ZN14dbg_var_type_tI5ArrayIP13c_DisplayModeEEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tI5ArrayIP13c_DisplayModeEEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tI5ArrayIP13c_DisplayModeEE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
	.align 4
LC831:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<13>\0"
	.align 4
LC832:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<14>\0"
	.text
	.align 2
	.globl	__ZN7c_Stack6m_new2E5ArrayIP13c_DisplayModeE
	.def	__ZN7c_Stack6m_new2E5ArrayIP13c_DisplayModeE;	.scl	2;	.type	32;	.endef
__ZN7c_Stack6m_new2E5ArrayIP13c_DisplayModeE:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1305, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3642, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC830, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_StackE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC42, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI5ArrayIP13c_DisplayModeEE4infoE, (%eax)
	movl	$LC831, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3637
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3637:
	leal	-28(%ebp), %eax
	movl	$0, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -108(%ebp)
	movl	%eax, %ecx
	call	__ZNK5ArrayIP13c_DisplayModeE5SliceEi
	subl	$8, %esp
	movl	-60(%ebp), %eax
	leal	16(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$2, -108(%ebp)
	call	__Z9gc_assignIP13c_DisplayModeEvR5ArrayIT_ES4_
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	$LC832, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3638
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3638:
	movl	8(%ebp), %ecx
	call	__ZNK5ArrayIP13c_DisplayModeE6LengthEv
	movl	-60(%ebp), %edx
	movl	%eax, 20(%edx)
	movl	-60(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3645
L3644:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3641
L3642:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3643
	subl	$1, %eax
	testl	%eax, %eax
	je	L3644
	subl	$1, %eax
		.word	0x0b0f
L3643:
	movl	%edx, -116(%ebp)
L3641:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3645:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-116(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1305:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1305-LLSDACSB1305
LLSDACSB1305:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1305:
	.text
	.section .rdata,"dr"
LC833:
	.ascii "Stack.Push\0"
	.align 4
LC834:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<71>\0"
	.align 4
LC835:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<72>\0"
	.align 4
LC836:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<74>\0"
	.align 4
LC837:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<75>\0"
	.text
	.align 2
	.globl	__ZN7c_Stack6p_PushEP13c_DisplayMode
	.def	__ZN7c_Stack6p_PushEP13c_DisplayMode;	.scl	2;	.type	32;	.endef
__ZN7c_Stack6p_PushEP13c_DisplayMode:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1309, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3655, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC833, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_StackE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC798, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	$LC834, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3647
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3647:
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIP13c_DisplayModeE6LengthEv
	cmpl	%eax, -116(%ebp)
	sete	%al
	testb	%al, %al
	je	L3648
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC835, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3649
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L3649:
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	addl	$5, %eax
	leal	(%eax,%eax), %ecx
	movl	-60(%ebp), %eax
	leal	16(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	$2, -108(%ebp)
	movl	%eax, %ecx
	call	__ZNK5ArrayIP13c_DisplayModeE6ResizeEi
	subl	$8, %esp
	movl	-60(%ebp), %eax
	leal	16(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$3, -108(%ebp)
	call	__Z9gc_assignIP13c_DisplayModeEvR5ArrayIT_ES4_
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3648:
	movl	$LC836, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3650
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3650:
	movl	8(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	-60(%ebp), %edx
	addl	$16, %edx
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIP13c_DisplayModeE2AtEi
	subl	$4, %esp
	movl	-116(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z9gc_assignI13c_DisplayModeS0_EvRPT_PT0_
	movl	$LC837, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3651
	call	__Z8dbg_stopv
L3651:
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 20(%eax)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L3659
L3658:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3653
L3657:
	movl	%edx, -116(%ebp)
L3653:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3654
L3655:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3656
	subl	$1, %eax
	testl	%eax, %eax
	je	L3657
	subl	$1, %eax
	testl	%eax, %eax
	je	L3658
	subl	$1, %eax
		.word	0x0b0f
L3656:
	movl	%edx, -116(%ebp)
L3654:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3659:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1309:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1309-LLSDACSB1309
LLSDACSB1309:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1309:
	.text
	.section .rdata,"dr"
LC838:
	.ascii "values\0"
LC839:
	.ascii "offset\0"
LC840:
	.ascii "count\0"
	.align 4
LC841:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<83>\0"
	.align 4
LC842:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<84>\0"
	.text
	.align 2
	.globl	__ZN7c_Stack7p_Push2E5ArrayIP13c_DisplayModeEii
	.def	__ZN7c_Stack7p_Push2E5ArrayIP13c_DisplayModeEii;	.scl	2;	.type	32;	.endef
__ZN7c_Stack7p_Push2E5ArrayIP13c_DisplayModeEii:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1310, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3667, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC833, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_StackE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC838, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI5ArrayIP13c_DisplayModeEE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC839, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC840, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC841, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3661
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3661:
	movl	$0, -44(%ebp)
	jmp	L3662
L3664:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC842, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3663
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L3663:
	movl	12(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	movl	$2, -108(%ebp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIP13c_DisplayModeE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN7c_Stack6p_PushEP13c_DisplayMode
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -44(%ebp)
L3662:
	movl	-44(%ebp), %edx
	movl	16(%ebp), %eax
	cmpl	%eax, %edx
	jl	L3664
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L3670
L3669:
	movl	%edx, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3666
L3667:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3668
	subl	$1, %eax
	testl	%eax, %eax
	je	L3669
	subl	$1, %eax
		.word	0x0b0f
L3668:
	movl	%edx, -116(%ebp)
L3666:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3670:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$12
	.section	.gcc_except_table,"w"
LLSDA1310:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1310-LLSDACSB1310
LLSDACSB1310:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1310:
	.text
	.section .rdata,"dr"
	.align 4
LC843:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<79>\0"
	.text
	.align 2
	.globl	__ZN7c_Stack7p_Push3E5ArrayIP13c_DisplayModeEi
	.def	__ZN7c_Stack7p_Push3E5ArrayIP13c_DisplayModeEi;	.scl	2;	.type	32;	.endef
__ZN7c_Stack7p_Push3E5ArrayIP13c_DisplayModeEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1311, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3675, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC833, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_StackE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC838, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI5ArrayIP13c_DisplayModeEE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC839, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC843, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3672
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3672:
	movl	8(%ebp), %ecx
	call	__ZNK5ArrayIP13c_DisplayModeE6LengthEv
	movl	12(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-60(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Stack7p_Push2E5ArrayIP13c_DisplayModeEii
	subl	$12, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L3678
L3677:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3674
L3675:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3676
	subl	$1, %eax
	testl	%eax, %eax
	je	L3677
	subl	$1, %eax
		.word	0x0b0f
L3676:
	movl	%edx, -116(%ebp)
L3674:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3678:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$8
	.section	.gcc_except_table,"w"
LLSDA1311:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1311-LLSDACSB1311
LLSDACSB1311:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1311:
	.text
	.section .rdata,"dr"
LC844:
	.ascii "Stack.ToArray\0"
	.align 4
LC845:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<18>\0"
LC846:
	.ascii "t\0"
	.align 4
LC847:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<19>\0"
	.align 4
LC848:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<20>\0"
	.align 4
LC849:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<22>\0"
	.text
	.align 2
	.globl	__ZN7c_Stack9p_ToArrayEv
	.def	__ZN7c_Stack9p_ToArrayEv;	.scl	2;	.type	32;	.endef
__ZN7c_Stack9p_ToArrayEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1312, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3690, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC844, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_StackE4infoE, (%eax)
	movl	$LC845, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3680
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3680:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeEC1Ei
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	-60(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC846, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI5ArrayIP13c_DisplayModeEE4infoE, (%eax)
	movl	$LC847, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3681
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L3681:
	movl	$0, -44(%ebp)
	jmp	L3682
L3684:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC848, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3683
	movl	$3, -108(%ebp)
	call	__Z8dbg_stopv
L3683:
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$16, %edx
	movl	%eax, (%esp)
	movl	$3, -108(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIP13c_DisplayModeE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	-44(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeE2AtEi
	subl	$4, %esp
	movl	-116(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z9gc_assignI13c_DisplayModeS0_EvRPT_PT0_
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -44(%ebp)
L3682:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	cmpl	%eax, %edx
	jg	L3684
	movl	$LC849, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3685
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L3685:
	nop
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L3694
L3693:
	movl	%edx, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3688
L3692:
	movl	%edx, -116(%ebp)
L3688:
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3689
L3690:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3691
	subl	$1, %eax
	testl	%eax, %eax
	je	L3692
	subl	$1, %eax
	testl	%eax, %eax
	je	L3693
	subl	$1, %eax
		.word	0x0b0f
L3691:
	movl	%edx, -116(%ebp)
L3689:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3694:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-60(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1312:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1312-LLSDACSB1312
LLSDACSB1312:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1312:
	.text
	.align 2
	.globl	__ZN7c_Stack4markEv
	.def	__ZN7c_Stack4markEv;	.scl	2;	.type	32;	.endef
__ZN7c_Stack4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1313, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3697, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_object4markEv
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z9gc_mark_qIP13c_DisplayModeEv5ArrayIT_E
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	jmp	L3699
L3697:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3699:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1313:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1313-LLSDACSB1313
LLSDACSB1313:
	.uleb128 0
	.uleb128 0
LLSDACSE1313:
	.text
	.section .rdata,"dr"
LC850:
	.ascii "(Stack)\12\0"
LC851:
	.ascii "length\0"
	.text
	.align 2
	.globl	__ZN7c_Stack5debugEv
	.def	__ZN7c_Stack5debugEv;	.scl	2;	.type	32;	.endef
__ZN7c_Stack5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1314, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3705, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC850, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declI5ArrayIP13c_DisplayModeEE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC851, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-44(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L3709
L3707:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3703
L3708:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3703
L3705:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L3706
	subl	$1, %eax
	testl	%eax, %eax
	je	L3707
	subl	$1, %eax
	testl	%eax, %eax
	je	L3708
	subl	$1, %eax
		.word	0x0b0f
L3706:
	movl	%edx, -100(%ebp)
L3703:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3709:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-44(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1314:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1314-LLSDACSB1314
LLSDACSB1314:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1314:
	.text
	.align 2
	.globl	__ZN6c_NodeC2Ev
	.def	__ZN6c_NodeC2Ev;	.scl	2;	.type	32;	.endef
__ZN6c_NodeC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV6c_Node+8, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 24(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 28(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 32(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 36(%eax)
	leave
	ret
	.globl	__ZN6c_NodeC1Ev
	.def	__ZN6c_NodeC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN6c_NodeC1Ev,__ZN6c_NodeC2Ev
	.section .rdata,"dr"
LC852:
	.ascii "Node.new\0"
LC853:
	.ascii "color\0"
	.align 4
LC854:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<364>\0"
	.align 4
LC855:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<365>\0"
	.align 4
LC856:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<366>\0"
	.align 4
LC857:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<367>\0"
	.text
	.align 2
	.globl	__ZN6c_Node5m_newEiP13c_DisplayModeiPS_
	.def	__ZN6c_Node5m_newEiP13c_DisplayModeiPS_;	.scl	2;	.type	32;	.endef
__ZN6c_Node5m_newEiP13c_DisplayModeiPS_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1318, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3718, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC852, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %esi
	movl	%esi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC602, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC798, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC853, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	20(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC801, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC854, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3712
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3712:
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	$LC855, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3713
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3713:
	movl	12(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	$28, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI13c_DisplayModeS0_EvRPT_PT0_
	movl	$LC856, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3714
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3714:
	movl	16(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	$LC857, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3715
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3715:
	movl	20(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3720
L3718:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3720:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$16
	.section	.gcc_except_table,"w"
LLSDA1318:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1318-LLSDACSB1318
LLSDACSB1318:
	.uleb128 0
	.uleb128 0
LLSDACSE1318:
	.text
	.section .rdata,"dr"
	.align 4
LC858:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<361>\0"
	.text
	.align 2
	.globl	__ZN6c_Node6m_new2Ev
	.def	__ZN6c_Node6m_new2Ev;	.scl	2;	.type	32;	.endef
__ZN6c_Node6m_new2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	%ecx, -44(%ebp)
	movl	$___gxx_personality_sj0, -72(%ebp)
	movl	$LLSDA1319, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3725, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC852, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC106, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC858, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3722
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3722:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3727
L3725:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3727:
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-100(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1319:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1319-LLSDACSB1319
LLSDACSB1319:
	.uleb128 0
	.uleb128 0
LLSDACSE1319:
	.text
	.align 2
	.globl	__ZN6c_Node4markEv
	.def	__ZN6c_Node4markEv;	.scl	2;	.type	32;	.endef
__ZN6c_Node4markEv:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9gc_object4markEv
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI6c_NodeEvPT_
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI6c_NodeEvPT_
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI13c_DisplayModeEvPT_
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI6c_NodeEvPT_
	leave
	ret
	.section .rdata,"dr"
LC859:
	.ascii "(Node)\12\0"
LC860:
	.ascii "left\0"
LC861:
	.ascii "right\0"
	.text
	.align 2
	.globl	__ZN6c_Node5debugEv
	.def	__ZN6c_Node5debugEv;	.scl	2;	.type	32;	.endef
__ZN6c_Node5debugEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	%ecx, -60(%ebp)
	movl	$___gxx_personality_sj0, -88(%ebp)
	movl	$LLSDA1321, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3738, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-60(%ebp), %eax
	movl	$LC859, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC602, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-60(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	28(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC798, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	call	__Z8dbg_declIP13c_DisplayModeE6StringPKcPT_
	movl	-60(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC853, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-60(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	36(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC801, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	call	__Z8dbg_declIP6c_NodeE6StringPKcPT_
	movl	-60(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$5, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	24(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC860, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	call	__Z8dbg_declIP6c_NodeE6StringPKcPT_
	movl	-60(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$6, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC861, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -108(%ebp)
	call	__Z8dbg_declIP6c_NodeE6StringPKcPT_
	movl	-60(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$7, -108(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L3748
L3740:
	movl	%eax, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3732
L3741:
	movl	%eax, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3732
L3742:
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3732
L3743:
	movl	%eax, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3732
L3744:
	movl	%eax, -116(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3732
L3745:
	movl	%eax, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3732
L3738:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	cmpl	$6, -108(%ebp)
	ja	L3746
	movl	-108(%ebp), %edx
	sall	$2, %edx
	addl	$L3747, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3747:
	.long	L3739
	.long	L3740
	.long	L3741
	.long	L3742
	.long	L3743
	.long	L3744
	.long	L3745
	.text
L3746:
		.word	0x0b0f
L3739:
	movl	%eax, -116(%ebp)
L3732:
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3748:
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-60(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.gcc_except_table,"w"
LLSDA1321:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1321-LLSDACSB1321
LLSDACSB1321:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
	.uleb128 0x4
	.uleb128 0
	.uleb128 0x5
	.uleb128 0
	.uleb128 0x6
	.uleb128 0
LLSDACSE1321:
	.text
	.globl	_bb_app__displayModes
	.bss
	.align 4
_bb_app__displayModes:
	.space 4
	.globl	_bb_app__desktopMode
	.align 4
_bb_app__desktopMode:
	.space 4
	.section .rdata,"dr"
LC862:
	.ascii "DeviceWidth\0"
	.align 4
LC863:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<263>\0"
	.text
	.globl	__Z18bb_app_DeviceWidthv
	.def	__Z18bb_app_DeviceWidthv;	.scl	2;	.type	32;	.endef
__Z18bb_app_DeviceWidthv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1322, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3753, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC862, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	$LC863, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3750
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3750:
	movl	_bb_app__devWidth, %eax
	movl	%eax, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L3755
L3753:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L3755:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-96(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1322:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1322-LLSDACSB1322
LLSDACSB1322:
	.uleb128 0
	.uleb128 0
LLSDACSE1322:
	.text
	.section .rdata,"dr"
LC864:
	.ascii "DeviceHeight\0"
	.align 4
LC865:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<267>\0"
	.text
	.globl	__Z19bb_app_DeviceHeightv
	.def	__Z19bb_app_DeviceHeightv;	.scl	2;	.type	32;	.endef
__Z19bb_app_DeviceHeightv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1323, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3760, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC864, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	$LC865, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3757
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3757:
	movl	_bb_app__devHeight, %eax
	movl	%eax, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L3762
L3760:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L3762:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-96(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1323:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1323-LLSDACSB1323
LLSDACSB1323:
	.uleb128 0
	.uleb128 0
LLSDACSE1323:
	.text
	.section	.text$_ZN14dbg_var_type_tI5ArrayIP13BBDisplayModeEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tI5ArrayIP13BBDisplayModeEEC1Ev
	.def	__ZN14dbg_var_type_tI5ArrayIP13BBDisplayModeEEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tI5ArrayIP13BBDisplayModeEEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tI5ArrayIP13BBDisplayModeEE+8, (%eax)
	leave
	ret
	.section	.text$_ZN14dbg_var_type_tIP13BBDisplayModeEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tIP13BBDisplayModeEC1Ev
	.def	__ZN14dbg_var_type_tIP13BBDisplayModeEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tIP13BBDisplayModeEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tIP13BBDisplayModeE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC866:
	.ascii "EnumDisplayModes\0"
	.align 4
LC867:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<33>\0"
LC868:
	.ascii "modes\0"
	.align 4
LC869:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<34>\0"
LC870:
	.ascii "mmap\0"
	.align 4
LC871:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<35>\0"
LC872:
	.ascii "mstack\0"
	.align 4
LC873:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<36>\0"
	.align 4
LC874:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<37>\0"
	.align 4
LC875:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<38>\0"
	.align 4
LC876:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<39>\0"
LC877:
	.ascii "size\0"
	.align 4
LC878:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<40>\0"
	.align 4
LC879:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<42>\0"
	.align 4
LC880:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<43>\0"
	.align 4
LC881:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<44>\0"
	.align 4
LC882:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<47>\0"
	.align 4
LC883:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<48>\0"
	.align 4
LC884:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<49>\0"
	.align 4
LC885:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<50>\0"
	.align 4
LC886:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<52>\0"
	.text
	.globl	__Z23bb_app_EnumDisplayModesv
	.def	__Z23bb_app_EnumDisplayModesv;	.scl	2;	.type	32;	.endef
__Z23bb_app_EnumDisplayModesv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	movl	$___gxx_personality_sj0, -132(%ebp)
	movl	$LLSDA1324, -128(%ebp)
	leal	-124(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L3795, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC866, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	$LC867, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3766
	movl	$1, -152(%ebp)
	call	__Z8dbg_stopv
L3766:
	movl	_bb_app__game, %eax
	movl	(%eax), %eax
	addl	$84, %eax
	movl	(%eax), %ebx
	movl	_bb_app__game, %edx
	leal	-44(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -152(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC868, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI5ArrayIP13BBDisplayModeEE4infoE, (%eax)
	movl	$LC869, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3767
	movl	$2, -152(%ebp)
	call	__Z8dbg_stopv
L3767:
	movl	$20, (%esp)
	movl	$2, -152(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -160(%ebp)
	movl	%eax, %ecx
	call	__ZN8c_IntMapC1Ev
	movl	-160(%ebp), %ecx
	call	__ZN8c_IntMap5m_newEv
	movl	%eax, -48(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-48(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC870, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP8c_IntMapE4infoE, (%eax)
	movl	$LC871, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3768
	call	__Z8dbg_stopv
L3768:
	movl	$24, (%esp)
	movl	$2, -152(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -160(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_StackC1Ev
	movl	-160(%ebp), %ecx
	call	__ZN7c_Stack5m_newEv
	movl	%eax, -52(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-52(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC872, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_StackE4infoE, (%eax)
	movl	$LC873, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3769
	call	__Z8dbg_stopv
L3769:
	movl	$0, -60(%ebp)
	jmp	L3770
L3780:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-60(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC184, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC874, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3771
	movl	$3, -152(%ebp)
	call	__Z8dbg_stopv
L3771:
	movl	-60(%ebp), %edx
	leal	-44(%ebp), %eax
	movl	%edx, (%esp)
	movl	$3, -152(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP13BBDisplayModeE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-68(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC74, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC875, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3772
	call	__Z8dbg_stopv
L3772:
	movl	-60(%ebp), %edx
	leal	-44(%ebp), %eax
	movl	%edx, (%esp)
	movl	$3, -152(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP13BBDisplayModeE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-72(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC713, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC876, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3773
	call	__Z8dbg_stopv
L3773:
	movl	-68(%ebp), %eax
	sall	$16, %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-76(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC877, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC878, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3774
	movl	$3, -152(%ebp)
	call	__Z8dbg_stopv
L3774:
	movl	-76(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%esp)
	movl	$3, -152(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map10p_ContainsEi
	subl	$4, %esp
	testb	%al, %al
	je	L3775
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3776
L3775:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC879, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3777
	movl	$4, -152(%ebp)
	call	__Z8dbg_stopv
L3777:
	movl	-60(%ebp), %edx
	leal	-44(%ebp), %eax
	movl	%edx, (%esp)
	movl	$4, -152(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP13BBDisplayModeE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -160(%ebp)
	movl	-60(%ebp), %edx
	leal	-44(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP13BBDisplayModeE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -164(%ebp)
	movl	$24, (%esp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -168(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_DisplayModeC1Ev
	movl	-160(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	-164(%ebp), %ebx
	movl	%ebx, (%esp)
	movl	-168(%ebp), %ecx
	call	__ZN13c_DisplayMode5m_newEii
	subl	$8, %esp
	movl	%eax, -88(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-88(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC426, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	$LC880, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3778
	call	__Z8dbg_stopv
L3778:
	movl	-88(%ebp), %ecx
	movl	-76(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	$4, -152(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map8p_InsertEiP13c_DisplayMode
	subl	$8, %esp
	movl	$LC881, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3779
	call	__Z8dbg_stopv
L3779:
	movl	-88(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%edx, (%esp)
	movl	$4, -152(%ebp)
L3776: