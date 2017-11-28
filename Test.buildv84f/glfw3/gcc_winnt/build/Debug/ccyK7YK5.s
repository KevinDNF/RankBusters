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
	pushl	%e