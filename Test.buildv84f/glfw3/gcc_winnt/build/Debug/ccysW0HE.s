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
	jne	L104
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
	jne	L104
	movl	$1, %eax
	jmp	L105
L104:
	movl	$0, %eax
L105:
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
	jne	L108
	movl	-28(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L107
L108:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L110
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L107
L110:
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
L107:
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
	jns	L112
	movl	$0, 12(%ebp)
L112:
	jmp	L113
L116:
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
	je	L114
	movl	12(%ebp), %eax
	jmp	L115
L114:
	addl	$1, 12(%ebp)
L113:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jle	L116
	movl	$-1, %eax
L115:
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
	movl	$L132, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L118
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
	jmp	L119
L120:
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
L119:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	L120
	movl	-76(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%edx, (%eax)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	jmp	L117
L118:
	movl	$0, -32(%ebp)
	movl	$1, -36(%ebp)
	jmp	L122
L123:
	addl	$1, -36(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
L122:
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
	jne	L123
	leal	-64(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringEC1Ei
	subl	$4, %esp
	cmpl	$1, -36(%ebp)
	jne	L124
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
	jmp	L125
L124:
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
	jmp	L126
L127:
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
L126:
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
	jne	L127
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
L125:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	jmp	L117
L132:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L133
	subl	$1, %eax
	testl	%eax, %eax
	je	L134
	subl	$1, %eax
	testl	%eax, %eax
	je	L135
	subl	$1, %eax
		.word	0x0b0f
L133:
	movl	%edx, %eax
	jmp	L130
L135:
	movl	%edx, -132(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayI6StringED1Ev
	movl	-132(%ebp), %eax
	jmp	L130
L134:
	movl	%edx, %eax
L130:
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L117:
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
	jmp	L137
L138:
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
L137:
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
	jne	L138
	cmpl	$0, -12(%ebp)
	jne	L139
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L136
L139:
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
	jmp	L141
L142:
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
L141:
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
	jne	L142
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
L136:
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
	jmp	L144
L150:
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
	jne	L145
	nop
	addl	$1, -12(%ebp)
	jmp	L144
L145:
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
	jmp	L147
L148:
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
L147:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L148
	movl	-28(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPNS_3RepE
	subl	$4, %esp
	jmp	L143
L144:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L150
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
L143:
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
	jg	L152
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
	jne	L152
	movl	$1, %eax
	jmp	L153
L152:
	movl	$0, %eax
L153:
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
	jg	L156
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
	jne	L156
	movl	$1, %eax
	jmp	L157
L156:
	movl	$0, %eax
L157:
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
	jns	L160
	movl	-12(%ebp), %eax
	addl	%eax, 12(%ebp)
	cmpl	$0, 12(%ebp)
	jns	L161
	movl	$0, 12(%ebp)
	jmp	L161
L160:
	movl	12(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jle	L161
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
L161:
	cmpl	$0, 16(%ebp)
	jns	L162
	movl	-12(%ebp), %eax
	addl	%eax, 16(%ebp)
	jmp	L163
L162:
	movl	16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jle	L163
	movl	-12(%ebp), %eax
	movl	%eax, 16(%ebp)
L163:
	movl	16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	L164
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	jmp	L159
L164:
	cmpl	$0, 12(%ebp)
	jne	L166
	movl	16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	L166
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L159
L166:
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
L159:
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
	movl	$L178, %edx
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
	je	L172
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
	jne	L173
L172:
	movl	$1, %eax
	jmp	L174
L173:
	movl	$0, %eax
L174:
	movb	%al, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEED1Ev
	movzbl	-100(%ebp), %eax
	movb	%al, -100(%ebp)
	jmp	L181
L180:
	movl	%edx, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	$0, -92(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEED1Ev
	movl	-100(%ebp), %eax
	jmp	L177
L178:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L179
	subl	$1, %eax
	testl	%eax, %eax
	je	L180
	subl	$1, %eax
		.word	0x0b0f
L179:
	movl	%edx, %eax
L177:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L181:
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
	movl	$L193, %edx
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
	jmp	L183
L186:
	movl	-28(%ebp), %eax
	leal	2(%eax), %edx
	movl	%edx, -28(%ebp)
	movzwl	(%eax), %eax
	movw	%ax, -34(%ebp)
	cmpw	$127, -34(%ebp)
	ja	L184
	movzwl	-34(%ebp), %eax
	movb	%al, -40(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIhSaIhEE9push_backERKh
	subl	$4, %esp
	jmp	L183
L184:
	cmpw	$2047, -34(%ebp)
	ja	L185
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
	jmp	L183
L185:
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
L183:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	L186
	jmp	L202
L193:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	cmpl	$5, -92(%ebp)
	ja	L200
	movl	-92(%ebp), %edx
	sall	$2, %edx
	addl	$L201, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L201:
	.long	L194
	.long	L195
	.long	L196
	.long	L197
	.long	L198
	.long	L199
	.section	.text$_ZNK6String4SaveERSt6vectorIhSaIhEE,"x"
	.linkonce discard
L200:
		.word	0x0b0f
L194:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L195:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L196:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L197:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L198:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L199:
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L202:
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
	jmp	L204
L205:
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
L204:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	L205
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
	movl	$L217, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-4188(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$1, -4184(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEEC1Ev
L211:
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4096, 8(%esp)
	movl	$1, 4(%esp)
	leal	-4136(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jle	L208
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
L208:
	cmpl	$4096, -28(%ebp)
	je	L209
	nop
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIhSaIhEE4sizeEv
	testl	%eax, %eax
	je	L212
	jmp	L220
L209:
	jmp	L211
L220:
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
	jmp	L213
L212:
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
L213:
	nop
	leal	-40(%ebp), %eax
	movl	$1, -4184(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEED1Ev
	jmp	L221
L219:
	movl	%edx, -4192(%ebp)
	leal	-40(%ebp), %eax
	movl	$0, -4184(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIhSaIhEED1Ev
	movl	-4192(%ebp), %eax
	jmp	L216
L217:
	leal	24(%ebp), %ebp
	movl	-4180(%ebp), %edx
	movl	-4184(%ebp), %eax
	testl	%eax, %eax
	je	L218
	subl	$1, %eax
	testl	%eax, %eax
	je	L219
	subl	$1, %eax
		.word	0x0b0f
L218:
	movl	%edx, %eax
L216:
	movl	%eax, (%esp)
	movl	$-1, -4184(%ebp)
	call	__Unwind_SjLj_Resume
L221:
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
LC4:
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
	movl	$L256, %edx
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
	jle	L223
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	jmp	L224
L223:
	movl	$-1, %eax
L224:
	movl	%eax, -40(%ebp)
	cmpl	$1, 16(%ebp)
	jle	L225
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	jmp	L226
L225:
	movl	$-1, %eax
L226:
	movl	%eax, -44(%ebp)
	cmpl	$254, -40(%ebp)
	jne	L227
	cmpl	$255, -44(%ebp)
	jne	L227
	addl	$2, 12(%ebp)
	jmp	L228
L229:
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
L228:
	movl	-36(%ebp), %eax
	subl	$1, %eax
	cmpl	12(%ebp), %eax
	ja	L229
	jmp	L230
L227:
	cmpl	$255, -40(%ebp)
	jne	L231
	cmpl	$254, -44(%ebp)
	jne	L231
	addl	$2, 12(%ebp)
	jmp	L232
L233:
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
L232:
	movl	-36(%ebp), %eax
	subl	$1, %eax
	cmpl	12(%ebp), %eax
	ja	L233
	jmp	L230
L231:
	cmpl	$2, 16(%ebp)
	jle	L234
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	jmp	L235
L234:
	movl	$-1, %eax
L235:
	movl	%eax, -56(%ebp)
	cmpl	$239, -40(%ebp)
	jne	L236
	cmpl	$187, -44(%ebp)
	jne	L236
	cmpl	$191, -56(%ebp)
	jne	L236
	addl	$3, 12(%ebp)
L236:
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	movb	$0, -25(%ebp)
	jmp	L237
L246:
	movl	12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 12(%ebp)
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	L238
	movl	-32(%ebp), %eax
	andl	$224, %eax
	cmpl	$192, %eax
	jne	L239
	movl	12(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jae	L240
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	L241
L240:
	movb	$1, -25(%ebp)
	jmp	L242
L241:
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
	jmp	L238
L239:
	movl	-32(%ebp), %eax
	andl	$240, %eax
	cmpl	$224, %eax
	jne	L243
	movl	12(%ebp), %eax
	addl	$1, %eax
	cmpl	-36(%ebp), %eax
	jae	L244
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	L244
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	L245
L244:
	movb	$1, -25(%ebp)
	jmp	L242
L245:
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
	jmp	L238
L243:
	movb	$1, -25(%ebp)
	jmp	L242
L238:
	movl	-32(%ebp), %eax
	movw	%ax, -62(%ebp)
	leal	-80(%ebp), %eax
	leal	-62(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, -136(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIwSaIwEE9push_backERKw
	subl	$4, %esp
L237:
	movl	12(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	L246
L242:
	cmpb	$0, -25(%ebp)
	je	L230
	movl	$LC4, __ZL13_str_load_err
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IhEEPKT_i
	subl	$8, %esp
	jmp	L247
L230:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIwSaIwEE4sizeEv
	testl	%eax, %eax
	je	L248
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
	jmp	L247
L248:
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
L247:
	leal	-80(%ebp), %eax
	movl	$1, -136(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIwSaIwEED1Ev
	jmp	L261
L258:
	movl	%edx, %eax
	movl	%eax, -144(%ebp)
	jmp	L252
L259:
	movl	%edx, %eax
	movl	%eax, -144(%ebp)
	jmp	L252
L260:
	movl	%edx, %eax
	movl	%eax, -144(%ebp)
L252:
	leal	-80(%ebp), %eax
	movl	$0, -136(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIwSaIwEED1Ev
	movl	-144(%ebp), %eax
	jmp	L255
L256:
	leal	24(%ebp), %ebp
	movl	-132(%ebp), %edx
	movl	-136(%ebp), %eax
	testl	%eax, %eax
	je	L257
	subl	$1, %eax
	testl	%eax, %eax
	je	L258
	subl	$1, %eax
	testl	%eax, %eax
	je	L259
	subl	$1, %eax
	testl	%eax, %eax
	je	L260
	subl	$1, %eax
		.word	0x0b0f
L257:
	movl	%edx, %eax
L255:
	movl	%eax, (%esp)
	movl	$-1, -136(%ebp)
	call	__Unwind_SjLj_Resume
L261:
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
	jne	L266
	cmpl	$__ZN6String7nullRepE, -12(%ebp)
	jne	L267
L266:
	movl	$1, %eax
	jmp	L268
L267:
	movl	$0, %eax
L268:
	testb	%al, %al
	je	L269
	jmp	L265
L269:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L265:
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
	jne	L272
	movl	$__ZN6String7nullRepE, %eax
	jmp	L273
L272:
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
	je	L274
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %ecx
	call	__ZN6String3RepC1Ei
	subl	$4, %esp
	movl	%ebx, %eax
	jmp	L275
L274:
	movl	%ebx, %eax
L275:
L273:
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
	jmp	L278
L281:
	movl	-4(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	__ZnwjPv
	testl	%eax, %eax
	je	L280
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
L280:
	addl	$1, -4(%ebp)
L278:
	movl	-4(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L281
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
	jmp	L284
L287:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	__ZnwjPv
	testl	%eax, %eax
	je	L286
	movl	-12(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	16(%ebp), %edx
	addl	%ecx, %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
L286:
	addl	$1, -12(%ebp)
L284:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L287
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
	jmp	L290
L291:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	addl	$1, -12(%ebp)
L290:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L291
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
LC5:
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
	movl	$LC5, (%esp)
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
	je	L299
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L299:
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
	je	L302
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L302:
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
	movl	$L309, %edx
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
	jmp	L311
L309:
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
L311:
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
LC6:
	.ascii "Bool\0"
	.text
	.globl	__Z8dbg_typePb
	.def	__Z8dbg_typePb;	.scl	2;	.type	32;	.endef
__Z8dbg_typePb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC6, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC7:
	.ascii "Int\0"
	.text
	.globl	__Z8dbg_typePi
	.def	__Z8dbg_typePi;	.scl	2;	.type	32;	.endef
__Z8dbg_typePi:
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
	.ascii "Float\0"
	.text
	.globl	__Z8dbg_typePf
	.def	__Z8dbg_typePf;	.scl	2;	.type	32;	.endef
__Z8dbg_typePf:
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
	.ascii "String\0"
	.text
	.globl	__Z8dbg_typeP6String
	.def	__Z8dbg_typeP6String;	.scl	2;	.type	32;	.endef
__Z8dbg_typeP6String:
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
	.ascii "True\0"
LC11:
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
	je	L321
	movl	$LC10, %eax
	jmp	L322
L321:
	movl	$LC11, %eax
L322:
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
LC12:
	.ascii "...\0"
LC13:
	.ascii "~q\0"
LC14:
	.ascii "\"\0"
LC15:
	.ascii "~t\0"
LC16:
	.ascii "\11\0"
LC17:
	.ascii "~n\0"
LC18:
	.ascii "\12\0"
LC19:
	.ascii "~r\0"
LC20:
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
	je	L329
	leal	-76(%ebp), %eax
	movl	$LC12, (%esp)
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
L329:
	leal	-64(%ebp), %eax
	movl	$LC13, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	$LC14, (%esp)
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
	movl	$LC15, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	$LC16, (%esp)
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
	movl	$LC17, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	$LC18, (%esp)
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
	movl	$LC19, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-24(%ebp), %eax
	movl	$LC20, (%esp)
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
	movl	$LC14, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-12(%ebp), %eax
	movl	$LC14, (%esp)
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
LC21:
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
	movl	$LC21, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movzbl	-72(%ebp), %eax
	cmpb	$48, %al
	jne	L332
	movzbl	-71(%ebp), %eax
	cmpb	$120, %al
	jne	L332
	leal	-72(%ebp), %eax
	addl	$2, %eax
	jmp	L333
L332:
	leal	-72(%ebp), %eax
L333:
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
	jne	L335
	movl	__ZL11dbg_suspend, %eax
	subl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L335:
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
	jne	L337
	movl	__ZL11dbg_suspend, %eax
	subl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L337:
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
	jne	L340
	movl	__ZL11dbg_suspend, %eax
	addl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L340:
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
	jne	L343
	movl	__ZL11dbg_suspend, %eax
	addl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L343:
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
	jne	L345
	movl	__ZL11dbg_suspend, %eax
	subl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L345:
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
	jne	L348
	movl	__ZL11dbg_suspend, %eax
	addl	$1, %eax
	movl	%eax, __ZL11dbg_suspend
L348:
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
	jle	L351
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
L351:
	movl	__ZZ9dbg_print6StringE3buf, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	$10, (%eax)
	movl	$0, -12(%ebp)
	jmp	L352
L353:
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
L352:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	L353
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
LC22:
	.ascii "+%s;%s\12\0"
LC23:
	.ascii "=\0"
LC24:
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
	movl	$L368, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$__ZL11dbg_var_buf, -28(%ebp)
	movl	$__ZL12dbg_func_buf, -32(%ebp)
	jmp	L356
L362:
	jmp	L357
L361:
	movl	-32(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	__ZL12dbg_func_ptr, %eax
	cmpl	%eax, -32(%ebp)
	je	L358
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	jmp	L359
L358:
	movl	_dbg_info, %eax
L359:
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
L357:
	movl	__ZL12dbg_func_ptr, %eax
	cmpl	%eax, -32(%ebp)
	je	L360
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	L361
L360:
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
	movl	$LC23, (%esp)
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
	movl	$LC24, (%esp)
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
L356:
	movl	__ZL11dbg_var_ptr, %eax
	cmpl	%eax, -28(%ebp)
	jne	L362
	jmp	L363
L366:
	movl	-32(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	__ZL12dbg_func_ptr, %eax
	cmpl	%eax, -32(%ebp)
	je	L364
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	jmp	L365
L364:
	movl	_dbg_info, %eax
L365:
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
L363:
	movl	__ZL12dbg_func_ptr, %eax
	cmpl	%eax, -32(%ebp)
	jne	L366
	jmp	L370
L368:
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
L370:
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
LC25:
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
	movl	$L381, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	_dbg_info, %eax
	testl	%eax, %eax
	je	L372
	movl	_dbg_info, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L373
L372:
	movl	$LC25, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	jmp	L371
L373:
	leal	-48(%ebp), %eax
	movl	$LC18, (%esp)
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
	jne	L375
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L376
L375:
	jmp	L377
L378:
	leal	-36(%ebp), %eax
	movl	$LC18, (%esp)
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
L377:
	subl	$4, -28(%ebp)
	cmpl	$__ZL12dbg_func_buf, -28(%ebp)
	setne	%al
	testb	%al, %al
	jne	L378
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
L376:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L371
L381:
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
L371:
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
LC26:
	.ascii "{{~~%s~~}}\12\0"
LC27:
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
	movl	$L403, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-364(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	_dbg_info, %eax
	movl	%eax, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$-1, -360(%ebp)
	call	__Z13dbg_callstackv
	leal	-40(%ebp), %eax
	movl	$LC25, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9dbg_print6String
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L400:
	movl	__imp___iob, %eax
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	leal	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	_fgets
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L385
	movl	$-1, (%esp)
	call	_exit
L385:
	movl	$10, 4(%esp)
	leal	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	_strchr
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L386
	movl	$-1, (%esp)
	call	_exit
L386:
	movl	-28(%ebp), %eax
	movb	$0, (%eax)
	movzbl	-300(%ebp), %eax
	movsbl	%al, %eax
	subl	$63, %eax
	cmpl	$52, %eax
	ja	L387
	movl	L389(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L389:
	.long	L405
	.long	L390
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L391
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L392
	.long	L387
	.long	L387
	.long	L387
	.long	L387
	.long	L393
	.long	L394
	.long	L395
	.text
L394:
	movl	$0, __ZL11dbg_suspend
	movl	$0, __ZL12dbg_stepmode
	jmp	L384
L395:
	movl	$1, __ZL11dbg_suspend
	movl	$115, __ZL12dbg_stepmode
	jmp	L384
L391:
	movl	$1, __ZL11dbg_suspend
	movl	$101, __ZL12dbg_stepmode
	jmp	L384
L392:
	movl	$0, __ZL11dbg_suspend
	movl	$108, __ZL12dbg_stepmode
	jmp	L384
L390:
	movl	$0, -44(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC21, 4(%esp)
	leal	-300(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	_sscanf
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	L398
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
	jmp	L396
L398:
	leal	-32(%ebp), %eax
	movl	$LC25, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z9dbg_print6String
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L396
L393:
	movl	$0, (%esp)
	call	_exit
L387:
	leal	-300(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC27, (%esp)
	call	_printf
	movl	__imp___iob, %eax
	addl	$32, %eax
	movl	%eax, (%esp)
	call	_fflush
	movl	$-1, (%esp)
	call	_exit
L405:
	nop
L396:
	jmp	L400
L403:
	leal	24(%ebp), %ebp
	movl	-356(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -360(%ebp)
	call	__Unwind_SjLj_Resume
L384:
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
LC28:
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
	movl	$L410, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
L407:
	leal	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	$LC28, (%esp)
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
	jmp	L407
L410:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %edx
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	L411
	subl	$1, %eax
	testl	%eax, %eax
	je	L412
	subl	$1, %eax
		.word	0x0b0f
L411:
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
L412:
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
	movl	$L421, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$__ZGVZ7bbPrint6StringE3buf, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L415
	movl	$__ZGVZ7bbPrint6StringE3buf, (%esp)
	call	___cxa_guard_acquire
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L415
	movb	$0, -96(%ebp)
	movl	$1, -88(%ebp)
	movl	$__ZZ7bbPrint6StringE3buf, %ecx
	call	__ZNSt6vectorIhSaIhEEC1Ev
	movl	$__ZGVZ7bbPrint6StringE3buf, (%esp)
	call	___cxa_guard_release
	movl	$___tcf_0, (%esp)
	call	_atexit
L415:
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
	jmp	L425
L421:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %edx
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	L422
	subl	$1, %eax
	testl	%eax, %eax
	je	L423
	subl	$1, %eax
	testl	%eax, %eax
	je	L424
	subl	$1, %eax
		.word	0x0b0f
L422:
	movl	%edx, -100(%ebp)
	cmpb	$0, -96(%ebp)
	jne	L418
	movl	$__ZGVZ7bbPrint6StringE3buf, (%esp)
	call	___cxa_guard_abort
L418:
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L423:
	movl	%edx, %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L424:
	movl	%edx, %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L425:
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
	movl	$L430, %edx
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
	je	L427
	movl	$0, (%esp)
	call	_exit
L427:
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
	jmp	L432
L430:
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
L432:
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
	movl	$L436, %edx
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
	jmp	L438
L436:
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
L438:
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
LC29:
	.ascii "Memory access violation\0"
LC30:
	.ascii "Illegal instruction\0"
LC31:
	.ascii "Floating point exception\0"
LC32:
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
	je	L443
	cmpl	$11, %eax
	je	L444
	cmpl	$4, %eax
	je	L445
	jmp	L442
L444:
	movl	$LC29, (%esp)
	call	__Z9dbg_errorPKc
L445:
	movl	$LC30, (%esp)
	call	__Z9dbg_errorPKc
L443:
	movl	$LC31, (%esp)
	call	__Z9dbg_errorPKc
L442:
	movl	$LC32, (%esp)
	call	__Z9dbg_errorPKc
	leave
	ret
	.section .rdata,"dr"
LC33:
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
	movl	$LC33, 4(%esp)
	movl	$2, (%esp)
	call	_setlocale
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L447
	movl	$LC25, 4(%esp)
	movl	$2, (%esp)
	call	_setlocale
L447:
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
	je	L460
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
L460:
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
	je	L463
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
L463:
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
	jle	L500
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
	jle	L502
	movl	$1, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	16(%edx), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	cmpl	$2, -12(%ebp)
	jle	L502
	movl	$2, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	12(%edx), %edx
	movl	%edx, (%eax)
	cmpl	$3, -12(%ebp)
	jle	L502
	movl	$3, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	8(%edx), %edx
	movl	%edx, (%eax)
	cmpl	$4, -12(%ebp)
	jle	L502
	movl	$4, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, (%eax)
	cmpl	$5, -12(%ebp)
	jle	L502
	movl	$5, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%eax)
	cmpl	$6, -12(%ebp)
	jle	L502
	movl	$6, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIiEixEi
	subl	$4, %esp
	movl	$0, (%eax)
L502:
L500:
	leave
	ret	$4
	.section .rdata,"dr"
LC34:
	.ascii "wb\0"
LC35:
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
	movl	$L509, %edx
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
	movl	$LC34, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	$LC35, (%esp)
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
	je	L504
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
	je	L505
	movl	$0, %eax
	jmp	L506
L505:
	movl	$-2, %eax
L506:
	jmp	L507
L504:
	movl	$-1, %eax
L507:
	movl	%eax, -100(%ebp)
	jmp	L511
L509:
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
L511:
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
LC36:
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
	movl	$L517, %edx
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
	movl	$LC36, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	$LC35, (%esp)
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
	je	L513
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
	jmp	L512
L513:
	movl	-44(%ebp), %eax
	movl	$LC25, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	jmp	L512
L517:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L518
	subl	$1, %eax
	testl	%eax, %eax
	je	L519
	subl	$1, %eax
		.word	0x0b0f
L518:
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
L519:
	movl	%edx, %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L512:
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
	movl	$L525, %edx
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
	movl	$LC36, (%esp)
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
	je	L521
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
	jmp	L520
L521:
	movl	-44(%ebp), %eax
	movl	$LC25, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	jmp	L520
L525:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L526
	subl	$1, %eax
	testl	%eax, %eax
	je	L527
	subl	$1, %eax
		.word	0x0b0f
L526:
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
L527:
	movl	%edx, %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L520:
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
	movl	$L539, %edx
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
	movl	$LC25, (%esp)
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
	je	L535
	movl	$0, -116(%ebp)
	jmp	L536
L535:
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
L536:
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L542
L539:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L540
	subl	$1, %eax
	testl	%eax, %eax
	je	L541
	subl	$1, %eax
		.word	0x0b0f
L540:
	movl	%edx, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L541:
	movl	%edx, -116(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6String7CStringIwED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L542:
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
	movl	$L554, %edx
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
	movl	$LC36, (%esp)
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
	jne	L544
	movl	$0, -148(%ebp)
	jmp	L550
L544:
	movl	$4096, -48(%ebp)
	leal	-80(%ebp), %eax
	movl	$2, -140(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIPvSaIS0_EEC1Ev
	movl	$0, -28(%ebp)
L548:
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
	je	L546
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
	jmp	L547
L546:
	jmp	L548
L549:
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
L547:
	movl	-40(%ebp), %eax
	movl	%eax, -148(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIPvSaIS0_EE4sizeEv
	cmpl	%eax, -148(%ebp)
	setb	%al
	testb	%al, %al
	jne	L549
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
L550:
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L558
L554:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %edx
	movl	-140(%ebp), %eax
	testl	%eax, %eax
	je	L555
	subl	$1, %eax
	testl	%eax, %eax
	je	L556
	subl	$1, %eax
	testl	%eax, %eax
	je	L557
	subl	$1, %eax
		.word	0x0b0f
L555:
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
	jmp	L552
L557:
	movl	%edx, %eax
	movl	%eax, -148(%ebp)
	leal	-80(%ebp), %eax
	movl	$0, -140(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIPvSaIS0_EED1Ev
	movl	-148(%ebp), %eax
	jmp	L552
L556:
	movl	%edx, %eax
L552:
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L558:
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
LC37:
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
	movl	$L562, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-32(%ebp), %eax
	movl	$LC37, (%esp)
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
L562:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L563
	subl	$1, %eax
	testl	%eax, %eax
	je	L564
	subl	$1, %eax
		.word	0x0b0f
L563:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L564:
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
	movl	$L574, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	testb	%al, %al
	je	L567
	jmp	L566
L567:
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
L573:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L566
L576:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L574:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L575
	subl	$1, %eax
	testl	%eax, %eax
	je	L576
	subl	$1, %eax
		.word	0x0b0f
L575:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L572
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L572:
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
	jmp	L573
L566:
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
	movl	$L586, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L578
	movl	-44(%ebp), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	je	L579
L578:
	jmp	L577
L579:
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
L585:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L577
L588:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L586:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L587
	subl	$1, %eax
	testl	%eax, %eax
	je	L588
	subl	$1, %eax
		.word	0x0b0f
L587:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L584
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L584:
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
	jmp	L585
L577:
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
	movl	$L598, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L590
	movl	-44(%ebp), %eax
	movzbl	17(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L591
L590:
	jmp	L589
L591:
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
L597:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L589
L600:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L598:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L599
	subl	$1, %eax
	testl	%eax, %eax
	je	L600
	subl	$1, %eax
		.word	0x0b0f
L599:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L596
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L596:
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
	jmp	L597
L589:
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
	movl	$L610, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	L602
	movl	-44(%ebp), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	je	L603
L602:
	jmp	L601
L603:
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
L609:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L601
L612:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L610:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L611
	subl	$1, %eax
	testl	%eax, %eax
	je	L612
	subl	$1, %eax
		.word	0x0b0f
L611:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L608
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L608:
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
	jmp	L609
L601:
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
	movl	$L621, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L614
	jmp	L613
L614:
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
L620:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L613
L623:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L621:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L622
	subl	$1, %eax
	testl	%eax, %eax
	je	L623
	subl	$1, %eax
		.word	0x0b0f
L622:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L619
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L619:
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
	jmp	L620
L613:
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
	movl	$L632, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L625
	jmp	L624
L625:
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
L631:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L624
L634:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L632:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L633
	subl	$1, %eax
	testl	%eax, %eax
	je	L634
	subl	$1, %eax
		.word	0x0b0f
L633:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L630
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L630:
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
	jmp	L631
L624:
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
	movl	$L643, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L636
	jmp	L635
L636:
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
L642:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L635
L645:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L643:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L644
	subl	$1, %eax
	testl	%eax, %eax
	je	L645
	subl	$1, %eax
		.word	0x0b0f
L644:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L641
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L641:
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
	jmp	L642
L635:
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
	movl	$L654, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L647
	jmp	L646
L647:
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
L653:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L646
L656:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L654:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L655
	subl	$1, %eax
	testl	%eax, %eax
	je	L656
	subl	$1, %eax
		.word	0x0b0f
L655:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L652
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L652:
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
	jmp	L653
L646:
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
	movl	$L665, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L658
	jmp	L657
L658:
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
L664:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L657
L667:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L665:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L666
	subl	$1, %eax
	testl	%eax, %eax
	je	L667
	subl	$1, %eax
		.word	0x0b0f
L666:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L663
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L663:
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
	jmp	L664
L657:
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
	movl	$L676, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movzbl	16(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L669
	jmp	L668
L669:
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
L675:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$120, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	$-1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	jmp	L668
L678:
	movl	%edx, -100(%ebp)
	call	___cxa_end_catch
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L676:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L677
	subl	$1, %eax
	testl	%eax, %eax
	je	L678
	subl	$1, %eax
		.word	0x0b0f
L677:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L674
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L674:
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
	jmp	L675
L668:
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
	je	L680
	movl	$LC25, %eax
	jmp	L681
L680:
	movb	$0, __ZZL7readTagP6_iobufE3buf+4
	movl	$__ZZL7readTagP6_iobufE3buf, %eax
L681:
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
	je	L683
	movl	$-1, %eax
	jmp	L685
L683:
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
L685:
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
	je	L687
	movl	$-1, %eax
	jmp	L689
L687:
	movzbl	-9(%ebp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-10(%ebp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
L689:
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
LC38:
	.ascii "RIFF\0"
LC39:
	.ascii "WAVE\0"
LC40:
	.ascii "fmt \0"
LC41:
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
	movl	$LC38, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L692
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readIntP6_iobuf
	subl	$8, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readTagP6_iobuf
	movl	$LC39, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L693
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readTagP6_iobuf
	movl	$LC40, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	L694
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readIntP6_iobuf
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL9readShortP6_iobuf
	movl	%eax, -20(%ebp)
	cmpl	$1, -20(%ebp)
	jne	L695
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
	jle	L696
	movl	-16(%ebp), %eax
	leal	-16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZL9skipBytesiP6_iobuf
L696:
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
	je	L697
	nop
	jmp	L695
L697:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL7readIntP6_iobuf
	movl	%eax, -52(%ebp)
	movl	$LC41, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L699
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZL9skipBytesiP6_iobuf
	nop
	jmp	L696
L699:
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
	je	L701
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
	jmp	L702
L701:
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L696
L695:
L694:
L693:
L692:
	movl	$0, %eax
L702:
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
	movl	$L712, %edx
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
	jne	L704
	movl	$0, %eax
	jmp	L710
L704:
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
L709:
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
	jne	L706
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
	jmp	L714
L706:
	movl	-52(%ebp), %eax
	addl	%eax, -32(%ebp)
	movl	-76(%ebp), %eax
	imull	-52(%ebp), %eax
	addl	%eax, -28(%ebp)
	movl	-48(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	cmpl	-36(%ebp), %eax
	jle	L708
	sall	-36(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -40(%ebp)
L708:
	jmp	L709
L714:
	movl	-40(%ebp), %eax
L710:
	movl	%eax, -144(%ebp)
	jmp	L715
L712:
	leal	24(%ebp), %ebp
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -136(%ebp)
	call	__Unwind_SjLj_Resume
L715:
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
	movl	$L727, %edx
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
	je	L729
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
	jmp	L729
L727:
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
L729:
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
	je	L731
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	fildl	-8(%ebp)
	fld1
	fdivp	%st, %st(1)
	movl	-4(%ebp), %eax
	fstpl	64(%eax)
L731:
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
	fldl	LC44
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
	movl	$L764, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	cmpl	$0, 8(%ebp)
	jne	L735
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	jmp	L736
L739:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -348(%ebp)
	call	_glfwJoystickPresent
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L737
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	-32(%ebp), %edx
	movl	%edx, __ZZN10BBGlfwGame12PollJoystickEi5ArrayIfES1_S1_S0_IbEE5pjoys(,%eax,4)
L737:
	addl	$1, -32(%ebp)
L736:
	cmpl	$15, -32(%ebp)
	jg	L738
	cmpl	$3, -28(%ebp)
	jle	L739
L738:
	jmp	L740
L741:
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	$-1, __ZZN10BBGlfwGame12PollJoystickEi5ArrayIfES1_S1_S0_IbEE5pjoys(,%eax,4)
L740:
	cmpl	$3, -28(%ebp)
	jle	L741
L735:
	movl	8(%ebp), %eax
	movl	__ZZN10BBGlfwGame12PollJoystickEi5ArrayIfES1_S1_S0_IbEE5pjoys(,%eax,4), %eax
	movl	%eax, 8(%ebp)
	cmpl	$-1, 8(%ebp)
	jne	L742
	movl	$0, %eax
	jmp	L762
L742:
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
	jne	L744
	movl	-84(%ebp), %eax
	cmpl	$14, %eax
	jne	L744
	leal	-112(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	-284(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	L745
L744:
	leal	-140(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	-224(%ebp), %eax
	movl	%eax, -40(%ebp)
L745:
	movl	-36(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	LC45, %eax
	movl	%eax, -164(%ebp)
	movl	LC45, %eax
	movl	%eax, -160(%ebp)
	movl	LC45, %eax
	movl	%eax, -156(%ebp)
	movl	LC45, %eax
	movl	%eax, -152(%ebp)
	movl	LC45, %eax
	movl	%eax, -148(%ebp)
	movl	LC45, %eax
	movl	%eax, -144(%ebp)
	movl	$0, -44(%ebp)
	jmp	L746
L755:
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
	jne	L747
	movl	-72(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	flds	(%eax)
	fld1
	faddp	%st, %st(1)
	flds	LC47
	fdivrp	%st, %st(1)
	movl	-44(%ebp), %eax
	fstps	-164(%ebp,%eax,4)
	jmp	L748
L747:
	cmpl	$32, -76(%ebp)
	jne	L749
	movl	-72(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	flds	(%eax)
	fld1
	fsubp	%st, %st(1)
	flds	LC47
	fdivrp	%st, %st(1)
	movl	-44(%ebp), %eax
	fstps	-164(%ebp,%eax,4)
	jmp	L748
L749:
	cmpl	$64, -76(%ebp)
	jne	L750
	movl	-72(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	flds	(%eax)
	fchs
	movl	-44(%ebp), %eax
	fstps	-164(%ebp,%eax,4)
	jmp	L748
L750:
	cmpl	$128, -76(%ebp)
	jne	L751
	movl	-72(%ebp), %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$1, %al
	jne	L752
	movl	LC46, %eax
	jmp	L753
L752:
	movl	LC45, %eax
L753:
	movl	-44(%ebp), %edx
	movl	%eax, -164(%ebp,%edx,4)
	jmp	L748
L751:
	movl	-72(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -164(%ebp,%edx,4)
L748:
	addl	$1, -44(%ebp)
L746:
	cmpl	$5, -44(%ebp)
	jg	L754
	movl	-44(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-68(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	$999, %eax
	jne	L755
L754:
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
	jmp	L756
L757:
	movl	24(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIbEixEi
	subl	$4, %esp
	movb	$0, (%eax)
	addl	$1, -48(%ebp)
L756:
	cmpl	$31, -48(%ebp)
	jle	L757
	movl	$0, -52(%ebp)
	jmp	L758
L761:
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-68(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	jns	L759
	movl	-84(%ebp), %eax
	addl	%eax, -56(%ebp)
L759:
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
L758:
	cmpl	$31, -52(%ebp)
	jg	L760
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-68(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	$999, %eax
	jne	L761
L760:
	movl	$1, %eax
L762:
	movb	%al, -353(%ebp)
	jmp	L766
L764:
	leal	24(%ebp), %ebp
	movl	-344(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -348(%ebp)
	call	__Unwind_SjLj_Resume
L766:
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
LC48:
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
	movl	$L769, %edx
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
	movl	$LC48, 4(%esp)
	movl	$0, (%esp)
	movl	$1, -92(%ebp)
	call	_ShellExecuteA@24
	subl	$24, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6String7CStringIcED1Ev
	jmp	L771
L769:
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
L771:
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
	je	L773
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	$212993, 8(%esp)
	movl	$208897, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwSetInputMode
	jmp	L772
L773:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	$212994, 8(%esp)
	movl	$208897, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwSetInputMode
L772:
	leave
	ret	$4
	.section .rdata,"dr"
LC49:
	.ascii "monkey:\0"
LC50:
	.ascii "monkey://data/\0"
LC51:
	.ascii "./data/\0"
LC52:
	.ascii "monkey://internal/\0"
LC53:
	.ascii "./internal/\0"
LC54:
	.ascii "monkey://external/\0"
LC55:
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
	movl	$LC49, (%esp)
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
	je	L776
	movl	-60(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	jmp	L775
L776:
	leal	-44(%ebp), %eax
	movl	$LC50, (%esp)
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
	je	L778
	leal	-40(%ebp), %eax
	movl	$14, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String5SliceEi
	subl	$8, %esp
	leal	-36(%ebp), %eax
	movl	$LC51, (%esp)
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
	jmp	L775
L778:
	leal	-32(%ebp), %eax
	movl	$LC52, (%esp)
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
	je	L779
	leal	-28(%ebp), %eax
	movl	$18, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String5SliceEi
	subl	$8, %esp
	leal	-24(%ebp), %eax
	movl	$LC53, (%esp)
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
	jmp	L775
L779:
	leal	-20(%ebp), %eax
	movl	$LC54, (%esp)
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
	je	L780
	leal	-16(%ebp), %eax
	movl	$18, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6String5SliceEi
	subl	$8, %esp
	leal	-12(%ebp), %eax
	movl	$LC55, (%esp)
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
	jmp	L775
L780:
	movl	-60(%ebp), %eax
	movl	$LC25, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
L775:
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
	movl	$L786, %edx
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
	movl	$LC36, (%esp)
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
	jne	L782
	movl	$0, %eax
	jmp	L783
L782:
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
	je	L784
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
L784:
	movl	-32(%ebp), %eax
L783:
	movl	%eax, -100(%ebp)
	jmp	L788
L786:
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
L788:
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
LC56:
	.ascii ".wav\0"
LC57:
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
	movl	$L796, %edx
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
	movl	$LC36, (%esp)
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
	jne	L790
	movl	$0, %eax
	jmp	L791
L790:
	movl	$0, -28(%ebp)
	leal	-48(%ebp), %eax
	movl	$LC56, (%esp)
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
	je	L792
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
	jmp	L793
L792:
	leal	-40(%ebp), %eax
	movl	$LC57, (%esp)
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
	je	L793
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
L793:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	cmpl	$0, -28(%ebp)
	je	L794
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
L794:
	movl	-28(%ebp), %eax
L791:
	movl	%eax, -116(%ebp)
	jmp	L798
L796:
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
L798:
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
	jle	L800
	cmpl	$57, 8(%ebp)
	jg	L800
	movl	8(%ebp), %eax
	jmp	L801
L800:
	cmpl	$64, 8(%ebp)
	jle	L802
	cmpl	$90, 8(%ebp)
	jg	L802
	movl	8(%ebp), %eax
	jmp	L801
L802:
	movl	8(%ebp), %eax
	subl	$32, %eax
	cmpl	$313, %eax
	ja	L803
	movl	L805(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L805:
	.long	L804
	.long	L803
	.long	L806
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L807
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L808
	.long	L809
	.long	L810
	.long	L811
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L812
	.long	L803
	.long	L813
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L814
	.long	L815
	.long	L816
	.long	L803
	.long	L803
	.long	L817
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L818
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L819
	.long	L820
	.long	L821
	.long	L822
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
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L833
	.long	L834
	.long	L835
	.long	L836
	.long	L837
	.long	L838
	.long	L839
	.long	L840
	.long	L841
	.long	L842
	.long	L843
	.long	L844
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L845
	.long	L846
	.long	L847
	.long	L848
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
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L803
	.long	L860
	.long	L861
	.long	L803
	.long	L803
	.long	L860
	.long	L861
	.text
L804:
	movl	$32, %eax
	jmp	L801
L812:
	movl	$186, %eax
	jmp	L801
L813:
	movl	$187, %eax
	jmp	L801
L808:
	movl	$188, %eax
	jmp	L801
L809:
	movl	$189, %eax
	jmp	L801
L810:
	movl	$190, %eax
	jmp	L801
L811:
	movl	$191, %eax
	jmp	L801
L818:
	movl	$192, %eax
	jmp	L801
L814:
	movl	$219, %eax
	jmp	L801
L816:
	movl	$221, %eax
	jmp	L801
L806:
	movl	$222, %eax
	jmp	L801
L815:
	movl	$220, %eax
	jmp	L801
L817:
	movl	$192, %eax
	jmp	L801
L807:
	movl	$222, %eax
	jmp	L801
L860:
	movl	$16, %eax
	jmp	L801
L861:
	movl	$17, %eax
	jmp	L801
L822:
	movl	$8, %eax
	jmp	L801
L821:
	movl	$9, %eax
	jmp	L801
L820:
	movl	$13, %eax
	jmp	L801
L819:
	movl	$27, %eax
	jmp	L801
L823:
	movl	$45, %eax
	jmp	L801
L824:
	movl	$46, %eax
	jmp	L801
L829:
	movl	$33, %eax
	jmp	L801
L830:
	movl	$34, %eax
	jmp	L801
L831:
	movl	$36, %eax
	jmp	L801
L832:
	movl	$35, %eax
	jmp	L801
L828:
	movl	$38, %eax
	jmp	L801
L827:
	movl	$40, %eax
	jmp	L801
L826:
	movl	$37, %eax
	jmp	L801
L825:
	movl	$39, %eax
	jmp	L801
L845:
	movl	$96, %eax
	jmp	L801
L846:
	movl	$97, %eax
	jmp	L801
L847:
	movl	$98, %eax
	jmp	L801
L848:
	movl	$99, %eax
	jmp	L801
L849:
	movl	$100, %eax
	jmp	L801
L850:
	movl	$101, %eax
	jmp	L801
L851:
	movl	$102, %eax
	jmp	L801
L852:
	movl	$103, %eax
	jmp	L801
L853:
	movl	$104, %eax
	jmp	L801
L854:
	movl	$105, %eax
	jmp	L801
L856:
	movl	$111, %eax
	jmp	L801
L857:
	movl	$106, %eax
	jmp	L801
L858:
	movl	$109, %eax
	jmp	L801
L859:
	movl	$107, %eax
	jmp	L801
L855:
	movl	$110, %eax
	jmp	L801
L833:
	movl	$112, %eax
	jmp	L801
L834:
	movl	$113, %eax
	jmp	L801
L835:
	movl	$114, %eax
	jmp	L801
L836:
	movl	$115, %eax
	jmp	L801
L837:
	movl	$116, %eax
	jmp	L801
L838:
	movl	$117, %eax
	jmp	L801
L839:
	movl	$118, %eax
	jmp	L801
L840:
	movl	$119, %eax
	jmp	L801
L841:
	movl	$120, %eax
	jmp	L801
L842:
	movl	$121, %eax
	jmp	L801
L843:
	movl	$122, %eax
	jmp	L801
L844:
	movl	$123, %eax
	jmp	L801
L803:
	movl	$0, %eax
L801:
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
	ja	L863
	movl	L865(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L865:
	.long	L864
	.long	L864
	.long	L863
	.long	L863
	.long	L863
	.long	L864
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L864
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L866
	.long	L866
	.long	L866
	.long	L866
	.long	L866
	.long	L866
	.long	L866
	.long	L866
	.long	L863
	.long	L863
	.long	L863
	.long	L863
	.long	L866
	.long	L867
	.text
L864:
	movl	8(%ebp), %eax
	jmp	L868
L866:
	movl	8(%ebp), %eax
	orl	$65536, %eax
	jmp	L868
L867:
	movl	$127, %eax
	jmp	L868
L863:
	movl	$0, %eax
L868:
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
	jne	L870
	jmp	L869
L870:
	movl	20(%ebp), %eax
	testl	%eax, %eax
	je	L872
	testl	%eax, %eax
	js	L869
	cmpl	$2, %eax
	jg	L869
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
	je	L874
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
L874:
	jmp	L869
L872:
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
L869:
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
	movl	$L887, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	12(%ebp), %eax
	cmpl	$1, %eax
	je	L878
	cmpl	$2, %eax
	je	L879
	testl	%eax, %eax
	je	L880
	jmp	L876
L880:
	movl	$0, 12(%ebp)
	jmp	L881
L878:
	movl	$1, 12(%ebp)
	jmp	L881
L879:
	movl	$2, 12(%ebp)
	nop
L881:
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
	je	L884
	cmpl	$1, %eax
	je	L885
	jmp	L876
L885:
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
	jmp	L883
L884:
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
L883:
	jmp	L876
L887:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L876:
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
LC58:
	.ascii "GameBuster\0"
LC59:
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
	movl	$L910, %edx
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
	je	L893
	movl	$0, -28(%ebp)
	jmp	L894
L898:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10BBGlfwGame8TransKeyEi
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	L895
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	_glfwGetKey
	cmpl	$1, %eax
	jne	L895
	movl	$1, %eax
	jmp	L896
L895:
	movl	$0, %eax
L896:
	testb	%al, %al
	je	L897
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
L897:
	addl	$1, -28(%ebp)
L894:
	cmpl	$348, -28(%ebp)
	jle	L898
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	_glfwDestroyWindow
	movl	-76(%ebp), %eax
	movl	$0, 44(%eax)
L893:
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
	je	L899
	movl	$32, %eax
	jmp	L900
L899:
	movl	$0, %eax
L900:
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
	je	L901
	cmpb	$0, -47(%ebp)
	je	L902
	movl	$1, %eax
	jmp	L903
L902:
	movl	$0, %eax
L903:
	movl	%eax, -36(%ebp)
	movl	$0, -60(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, -124(%ebp)
	call	_glfwGetMonitors
	movl	%eax, -52(%ebp)
	movl	-60(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jl	L904
	movl	-60(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
L904:
	movl	-36(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
L901:
	movl	$0, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$LC58, 8(%esp)
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
	jne	L905
	leal	-56(%ebp), %eax
	movl	$LC59, (%esp)
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
L905:
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
	je	L906
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
L906:
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	_glfwMakeContextCurrent
	movl	-76(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	js	L907
	movl	-76(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	_glfwSwapInterval
L907:
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
	jmp	L913
L910:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L911
	subl	$1, %eax
	testl	%eax, %eax
	je	L912
	subl	$1, %eax
		.word	0x0b0f
L911:
	movl	%edx, %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L912:
	movl	%edx, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L913:
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
	js	L914
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L914
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	_glfwSwapInterval
L914:
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
	movl	$L924, %edx
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
	jmp	L917
L920:
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
	je	L918
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$60, %eax
	je	L918
	jmp	L919
L918:
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
L919:
	addl	$1, -32(%ebp)
L917:
	movl	-44(%ebp), %eax
	cmpl	%eax, -32(%ebp)
	jl	L920
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
	jmp	L927
L926:
	movl	%edx, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13BBDisplayModeED1Ev
	movl	-116(%ebp), %eax
	jmp	L923
L924:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L925
	subl	$1, %eax
	testl	%eax, %eax
	je	L926
	subl	$1, %eax
		.word	0x0b0f
L925:
	movl	%edx, %eax
L923:
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L927:
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
	fldl	LC44
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
	je	L934
	call	_glfwWaitEvents
	jmp	L935
L934:
	call	_glfwPollEvents
L935:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	$131073, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwGetWindowAttrib
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L936
	movl	-12(%ebp), %eax
	movb	$1, 60(%eax)
	movl	-12(%ebp), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	je	L933
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
	jmp	L933
L936:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	$131074, 4(%esp)
	movl	%eax, (%esp)
	call	_glfwGetWindowAttrib
	movl	$1, %eax
	testb	%al, %al
	je	L933
	movl	-12(%ebp), %eax
	movzbl	60(%eax), %eax
	testb	%al, %al
	je	L933
	movl	-12(%ebp), %eax
	movzbl	17(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L933
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
L933:
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
	jmp	L939
L954:
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
	jp	L959
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L940
	jmp	L955
L959:
	fstp	%st(0)
L955:
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
	ja	L956
	jmp	L940
L956:
	movl	-28(%ebp), %eax
	fldl	-24(%ebp)
	fstpl	(%esp)
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame5SleepEd
	subl	$8, %esp
L940:
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame12UpdateEventsEv
	movl	-28(%ebp), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	je	L944
	jmp	L939
L944:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L945
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	addl	$136, %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	jmp	L939
L945:
	movl	-28(%ebp), %eax
	fldl	72(%eax)
	fldz
	fucomip	%st(1), %st
	jp	L960
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L946
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame7GetTimeEv
	movl	-28(%ebp), %eax
	fstpl	72(%eax)
	jmp	L946
L960:
	fstp	%st(0)
L946:
	movl	$0, -12(%ebp)
	jmp	L948
L953:
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
	jp	L961
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L949
	jmp	L951
L961:
	fstp	%st(0)
L949:
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
	je	L952
	jmp	L951
L952:
	addl	$1, -12(%ebp)
L948:
	cmpl	$3, -12(%ebp)
	jle	L953
L951:
	cmpl	$4, -12(%ebp)
	jne	L939
	movl	-28(%ebp), %eax
	fldz
	fstpl	72(%eax)
L939:
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	_glfwWindowShouldClose
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	jne	L954
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC60:
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
	movl	$LC60, (%esp)
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
	je	L963
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
L963:
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
	je	L966
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
L966:
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
LC61:
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
	movl	$L981, %edx
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
	je	L973
	movl	$LC61, (%esp)
	call	_puts
	movl	$-1, (%esp)
	call	_exit
L973:
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
	je	L974
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN10BBGlfwGame3RunEv
L974:
	movl	$-1, -88(%ebp)
	call	_glfwTerminate
	jmp	L985
L981:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %edx
	movl	-80(%ebp), %ecx
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	L982
	subl	$1, %eax
	testl	%eax, %eax
	je	L983
	subl	$1, %eax
	testl	%eax, %eax
	je	L984
	subl	$1, %eax
		.word	0x0b0f
L982:
	movl	%edx, -100(%ebp)
	movl	-96(%ebp), %esi
	movl	%esi, (%esp)
	call	__ZdlPv
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L984:
	movl	%edx, -96(%ebp)
	call	___cxa_end_catch
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L983:
	movl	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	L980
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L980:
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
L985:
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
	jmp	L987
L988:
	movl	-4(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -4(%ebp)
L987:
	movl	-4(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L988
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
	movl	$L996, %edx
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
	je	L991
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
L991:
	movl	$0, -28(%ebp)
	jmp	L992
L993:
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
L992:
	cmpl	$255, -28(%ebp)
	jle	L993
	jmp	L998
L996:
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
L998:
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
	jne	L1000
	jmp	L999
L1000:
	movl	-28(%ebp), %eax
	movl	23632(%eax), %eax
	testl	%eax, %eax
	je	L1002
	movl	$3553, (%esp)
	call	_glEnable@4
	subl	$4, %esp
	movl	-28(%ebp), %eax
	movl	23632(%eax), %eax
	movl	%eax, %ecx
	call	__ZN11gxtkSurface4BindEv
L1002:
	movl	-28(%ebp), %eax
	movl	23624(%eax), %eax
	cmpl	$2, %eax
	je	L1004
	cmpl	$2, %eax
	jg	L1005
	cmpl	$1, %eax
	je	L1006
	jmp	L1003
L1005:
	cmpl	$3, %eax
	je	L1007
	cmpl	$4, %eax
	je	L1008
	jmp	L1003
L1006:
	movl	-28(%ebp), %eax
	movl	23628(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_glDrawArrays@12
	subl	$12, %esp
	jmp	L1009
L1004:
	movl	-28(%ebp), %eax
	movl	23628(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$1, (%esp)
	call	_glDrawArrays@12
	subl	$12, %esp
	jmp	L1009
L1007:
	movl	-28(%ebp), %eax
	movl	23628(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4, (%esp)
	call	_glDrawArrays@12
	subl	$12, %esp
	jmp	L1009
L1008:
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
	jmp	L1009
L1003:
	movl	$0, -12(%ebp)
	jmp	L1010
L1011:
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
L1010:
	movl	-28(%ebp), %eax
	movl	23628(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L1011
	nop
L1009:
	movl	-28(%ebp), %eax
	movl	23632(%eax), %eax
	testl	%eax, %eax
	je	L1012
	movl	$3553, (%esp)
	call	_glDisable@4
	subl	$4, %esp
L1012:
	movl	-28(%ebp), %eax
	movl	$0, 23628(%eax)
L999:
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
	jne	L1014
	movl	-28(%ebp), %eax
	movl	23632(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	L1014
	movl	-28(%ebp), %eax
	movl	23628(%eax), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	cmpl	$1024, %eax
	jle	L1015
L1014:
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5FlushEv
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 23624(%eax)
	movl	-28(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 23632(%eax)
L1015:
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
	flds	LC63
	fdivrp	%st, %st(1)
	flds	12(%ebp)
	flds	LC63
	fdivrp	%st, %st(1)
	flds	8(%ebp)
	flds	LC63
	fdivrp	%st, %st(1)
	fxch	%st(2)
	movl	LC46, %eax
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
	flds	LC63
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
	flds	LC63
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
	jne	L1036
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	_glBlendFunc@8
	subl	$8, %esp
	jmp	L1034
L1036:
	movl	$771, 4(%esp)
	movl	$1, (%esp)
	call	_glBlendFunc@8
	subl	$8, %esp
L1034:
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
	jne	L1038
	cmpl	$0, 12(%ebp)
	jne	L1038
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	cmpl	16(%ebp), %eax
	jne	L1038
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	call	*%eax
	cmpl	20(%ebp), %eax
	je	L1039
L1038:
	movl	$1, %eax
	jmp	L1040
L1039:
	movl	$0, %eax
L1040:
	testb	%al, %al
	je	L1041
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
	jmp	L1042
L1041:
	movl	$3089, (%esp)
	call	_glDisable@4
	subl	$4, %esp
L1042:
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
	jp	L1045
	flds	8(%ebp)
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L1045
	flds	12(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1045
	flds	12(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L1045
	flds	16(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1045
	flds	16(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L1045
	flds	20(%ebp)
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1045
	flds	20(%ebp)
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L1045
	flds	24(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1045
	flds	24(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L1045
	flds	28(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1045
	flds	28(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L1050
L1045:
	movl	$1, %eax
	jmp	L1048
L1050:
	movl	$0, %eax
L1048:
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
	je	L1052
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
L1052:
	movl	-28(%ebp), %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	flds	8(%ebp)
	flds	LC64
	faddp	%st, %st(1)
	movl	-16(%ebp), %eax
	fstps	(%eax)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	flds	12(%ebp)
	flds	LC64
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
	je	L1055
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
L1055:
	movl	-28(%ebp), %eax
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$2, (%esp)
	movl	%eax, %ecx
	call	__ZN12gxtkGraphics5BeginEiiP11gxtkSurface
	subl	$12, %esp
	movl	%eax, -20(%ebp)
	flds	8(%ebp)
	flds	LC64
	faddp	%st, %st(1)
	movl	-20(%ebp), %eax
	fstps	(%eax)
	movl	-20(%ebp), %eax
	addl	$4, %eax
	flds	12(%ebp)
	flds	LC64
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
	flds	LC64
	faddp	%st, %st(1)
	fstps	(%eax)
	movl	-20(%ebp), %eax
	addl	$24, %eax
	flds	20(%ebp)
	flds	LC64
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
	je	L1058
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
L1058:
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
	flds	LC47
	fdivrp	%st, %st(1)
	fstps	-32(%ebp)
	flds	20(%ebp)
	flds	LC47
	fdivrp	%st, %st(1)
	fstps	-36(%ebp)
	movl	-92(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1061
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
	jmp	L1062
L1061:
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
L1062:
	cmpl	$11, -12(%ebp)
	jg	L1063
	movl	$12, -12(%ebp)
	jmp	L1064
L1063:
	cmpl	$1024, -12(%ebp)
	jle	L1065
	movl	$1024, -12(%ebp)
	jmp	L1064
L1065:
	andl	$-4, -12(%ebp)
L1064:
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
	jmp	L1066
L1068:
	fildl	-20(%ebp)
	flds	LC65
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
	je	L1067
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
L1067:
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
L1066:
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	L1068
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
	jle	L1071
	cmpl	$1024, -20(%ebp)
	jle	L1072
L1071:
	movl	$0, %eax
	jmp	L1073
L1072:
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
	jmp	L1074
L1077:
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1075
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
	jmp	L1076
L1075:
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
L1076:
	movl	-12(%ebp), %eax
	leal	16(%eax), %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	addl	$20, -12(%ebp)
	addl	$1, -16(%ebp)
L1074:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	L1077
	movl	$0, %eax
L1073:
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
	jle	L1079
	cmpl	$1024, -20(%ebp)
	jle	L1080
L1079:
	movl	$0, %eax
	jmp	L1081
L1080:
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
	jmp	L1082
L1085:
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1083
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
	jmp	L1084
L1083:
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
L1084:
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
L1082:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	L1085
	movl	$0, %eax
L1081:
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
	movl	LC45, %eax
	movl	%eax, -52(%ebp)
	movl	8(%ebp), %eax
	flds	44(%eax)
	fmuls	-44(%ebp)
	fstps	-56(%ebp)
	movl	LC45, %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	flds	48(%eax)
	fmuls	-48(%ebp)
	fstps	-64(%ebp)
	movl	-92(%ebp), %eax
	movzbl	68(%eax), %eax
	testb	%al, %al
	je	L1087
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
L1087:
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
	je	L1090
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
L1090:
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
	jmp	L1093
L1094:
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
L1093:
	movl	-12(%ebp), %eax
	cmpl	24(%ebp), %eax
	jl	L1094
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
	movl	LC45, %eax
	movl	%eax, 44(%edx)
	movl	-4(%ebp), %edx
	movl	LC45, %eax
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
	movl	$L1103, %edx
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
	je	L1105
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	jmp	L1105
L1103:
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
L1105:
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
	jne	L1109
	movl	-12(%ebp), %eax
	addl	$40, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_glDeleteTextures@8
	subl	$8, %esp
	movl	-12(%ebp), %eax
	movl	$-1, 36(%eax)
L1109:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1110
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
L1110:
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
	je	L1120
	cmpl	$2, %eax
	jg	L1121
	cmpl	$1, %eax
	je	L1122
	jmp	L1118
L1121:
	cmpl	$3, %eax
	je	L1123
	cmpl	$4, %eax
	je	L1124
	jmp	L1118
L1122:
	movl	-24(%ebp), %eax
	movl	$6409, 32(%eax)
	jmp	L1118
L1120:
	movl	-24(%ebp), %eax
	movl	$6410, 32(%eax)
	cmpl	$0, 8(%ebp)
	je	L1125
	jmp	L1126
L1127:
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
L1126:
	movl	-12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -12(%ebp)
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	L1127
L1125:
	jmp	L1118
L1123:
	movl	-24(%ebp), %eax
	movl	$6407, 32(%eax)
	jmp	L1118
L1124:
	movl	-24(%ebp), %eax
	movl	$6408, 32(%eax)
	cmpl	$0, 8(%ebp)
	je	L1128
	jmp	L1129
L1130:
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
L1129:
	movl	-12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -12(%ebp)
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	L1130
L1128:
	nop
L1118:
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
	je	L1132
	jmp	L1131
L1132:
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1134
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
L1134:
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
	jmp	L1135
L1138:
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
	jmp	L1136
L1137:
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
L1136:
	movl	-24(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	L1137
	addl	$1, -12(%ebp)
L1135:
	movl	-12(%ebp), %eax
	cmpl	20(%ebp), %eax
	jl	L1138
	movl	-44(%ebp), %eax
	movl	36(%eax), %edx
	movl	_glfwGraphicsSeq, %eax
	cmpl	%eax, %edx
	jne	L1131
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
	jne	L1139
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
	jmp	L1140
L1139:
	movl	$0, -28(%ebp)
	jmp	L1141
L1142:
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
L1141:
	movl	-28(%ebp), %eax
	cmpl	20(%ebp), %eax
	jl	L1142
L1140:
L1131:
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
	jne	L1144
	jmp	L1143
L1144:
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	_glfwGraphicsSeq, %eax
	cmpl	%eax, %edx
	jne	L1146
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$3553, (%esp)
	call	_glBindTexture@8
	subl	$8, %esp
	jmp	L1143
L1146:
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
	je	L1147
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
L1147:
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
	je	L1143
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
L1143:
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
	movl	$L1154, %edx
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
	jne	L1150
	movl	$0, %eax
	jmp	L1152
L1150:
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
L1152:
	movb	%al, -116(%ebp)
	jmp	L1156
L1154:
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
L1156:
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
	movl	$L1161, %edx
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
	je	L1158
	movl	$0, %eax
	jmp	L1159
L1158:
	movl	-28(%ebp), %eax
	movl	$-1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN11gxtkSurface4BindEv
	movl	-28(%ebp), %eax
L1159:
	movl	%eax, -100(%ebp)
	jmp	L1163
L1161:
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
L1163:
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
	movl	$L1180, %edx
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
	je	L1167
	jmp	L1166
L1167:
	movl	$0, -28(%ebp)
	jmp	L1169
L1172:
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
	je	L1170
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
	jne	L1171
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	$4105, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__alSourcei, %eax
	call	*%eax
L1171:
L1170:
	addl	$1, -28(%ebp)
L1169:
	cmpl	$32, -28(%ebp)
	jle	L1172
	leal	-52(%ebp), %eax
	movl	$2, -120(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEEC1Ev
	movl	$0, -32(%ebp)
	jmp	L1173
L1175:
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
	je	L1174
	leal	-52(%ebp), %eax
	leal	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEE9push_backERKj
	subl	$4, %esp
L1174:
	addl	$1, -32(%ebp)
L1173:
	movl	-32(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	$__ZL9discarded, %ecx
	call	__ZNKSt6vectorIjSaIjEE4sizeEv
	cmpl	%eax, -128(%ebp)
	setb	%al
	testb	%al, %al
	jne	L1175
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
	jmp	L1166
L1180:
	leal	24(%ebp), %ebp
	movl	-116(%ebp), %edx
	movl	-120(%ebp), %eax
	testl	%eax, %eax
	je	L1181
	subl	$1, %eax
	testl	%eax, %eax
	je	L1182
	subl	$1, %eax
	testl	%eax, %eax
	je	L1183
	subl	$1, %eax
	testl	%eax, %eax
	je	L1184
	subl	$1, %eax
		.word	0x0b0f
L1181:
	movl	%edx, %eax
	jmp	L1177
L1183:
	movl	%edx, %eax
	movl	%eax, -128(%ebp)
	jmp	L1179
L1184:
	movl	%edx, -128(%ebp)
L1179:
	leal	-52(%ebp), %eax
	movl	$0, -120(%ebp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEED1Ev
	movl	-128(%ebp), %eax
	jmp	L1177
L1182:
	movl	%edx, %eax
L1177:
	movl	%eax, (%esp)
	movl	$-1, -120(%ebp)
	call	__Unwind_SjLj_Resume
L1166:
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
	je	L1186
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	jmp	L1187
L1186:
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
	je	L1188
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	jmp	L1187
L1188:
	movl	-28(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, -12(%ebp)
	jmp	L1189
L1196:
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
	je	L1190
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
	je	L1191
L1190:
	movl	$1, %eax
	jmp	L1192
L1191:
	movl	$0, %eax
L1192:
	testb	%al, %al
	je	L1193
	nop
	addl	$1, -12(%ebp)
	jmp	L1189
L1193:
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	jmp	L1195
L1189:
	cmpl	$31, -12(%ebp)
	jle	L1196
L1195:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
L1187:
	movl	-4(%ebp), %ebx
	leave
	ret
	.section .rdata,"dr"
LC66:
	.ascii "Generic Hardware\0"
LC67:
	.ascii "Generic Software\0"
	.align 4
LC68:
	.ascii "OpenAl error: alcMakeContextCurrent failed\0"
	.align 4
LC69:
	.ascii "OpenAl error: alcCreateContext failed\0"
	.align 4
LC70:
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
	movl	$L1208, %edx
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
	jne	L1198
	movl	$LC66, (%esp)
	movl	__imp__alcOpenDevice, %eax
	call	*%eax
	movl	-44(%ebp), %edx
	movl	%eax, 16(%edx)
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1198
	movl	$LC67, (%esp)
	movl	__imp__alcOpenDevice, %eax
	call	*%eax
	movl	-44(%ebp), %edx
	movl	%eax, 16(%edx)
L1198:
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1199
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
	je	L1200
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alcMakeContextCurrent, %eax
	call	*%eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	jne	L1203
	leal	-36(%ebp), %eax
	movl	$LC68, (%esp)
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
	jmp	L1203
L1200:
	leal	-32(%ebp), %eax
	movl	$LC69, (%esp)
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
	jmp	L1203
L1199:
	leal	-28(%ebp), %eax
	movl	$LC70, (%esp)
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
L1203:
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
	jmp	L1213
L1210:
	movl	%edx, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1205
L1211:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1205
L1212:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1205
L1208:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L1209
	subl	$1, %eax
	testl	%eax, %eax
	je	L1210
	subl	$1, %eax
	testl	%eax, %eax
	je	L1211
	subl	$1, %eax
	testl	%eax, %eax
	je	L1212
	subl	$1, %eax
		.word	0x0b0f
L1209:
	movl	%edx, -100(%ebp)
L1205:
	movl	-44(%ebp), %eax
	movl	$0, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1213:
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
	movl	$L1220, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$0, -28(%ebp)
	jmp	L1215
L1218:
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
	je	L1216
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
	je	L1217
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__Z7gc_markI10gxtkSampleEvPT_
L1217:
L1216:
	addl	$1, -28(%ebp)
L1215:
	cmpl	$32, -28(%ebp)
	jle	L1218
	jmp	L1222
L1220:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1222:
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
	movl	$L1230, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$0, -28(%ebp)
	jmp	L1224
L1227:
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
	jne	L1225
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
	jne	L1226
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourcePause, %eax
	call	*%eax
L1226:
L1225:
	addl	$1, -28(%ebp)
L1224:
	cmpl	$32, -28(%ebp)
	jle	L1227
	movl	$0, %eax
	movl	%eax, -100(%ebp)
	jmp	L1232
L1230:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1232:
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
	movl	$L1240, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	$0, -28(%ebp)
	jmp	L1234
L1237:
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
	jne	L1235
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
	jne	L1236
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourcePlay, %eax
	call	*%eax
L1236:
L1235:
	addl	$1, -28(%ebp)
L1234:
	cmpl	$32, -28(%ebp)
	jle	L1237
	movl	$0, %eax
	movl	%eax, -100(%ebp)
	jmp	L1242
L1240:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1242:
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
	movl	$L1253, %edx
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
	jne	L1244
	movl	$0, %eax
	jmp	L1250
L1244:
	movl	$0, -28(%ebp)
	movl	-52(%ebp), %eax
	cmpl	$1, %eax
	jne	L1246
	movl	-48(%ebp), %eax
	cmpl	$1, %eax
	jne	L1246
	movl	$4352, -28(%ebp)
	jmp	L1247
L1246:
	movl	-52(%ebp), %eax
	cmpl	$1, %eax
	jne	L1248
	movl	-48(%ebp), %eax
	cmpl	$2, %eax
	jne	L1248
	movl	$4354, -28(%ebp)
	jmp	L1247
L1248:
	movl	-52(%ebp), %eax
	cmpl	$2, %eax
	jne	L1249
	movl	-48(%ebp), %eax
	cmpl	$1, %eax
	jne	L1249
	movl	$4353, -28(%ebp)
	jmp	L1247
L1249:
	movl	-52(%ebp), %eax
	cmpl	$2, %eax
	jne	L1247
	movl	-48(%ebp), %eax
	cmpl	$2, %eax
	jne	L1247
	movl	$4355, -28(%ebp)
L1247:
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
L1250:
	movb	%al, -132(%ebp)
	jmp	L1256
L1255:
	movl	%edx, -132(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	jmp	L1252
L1253:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L1254
	subl	$1, %eax
	testl	%eax, %eax
	je	L1255
	subl	$1, %eax
		.word	0x0b0f
L1254:
	movl	%edx, %eax
L1252:
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L1256:
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
	movl	$L1262, %edx
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
	je	L1258
	movl	$0, %eax
	jmp	L1259
L1258:
	movl	-28(%ebp), %eax
L1259:
	movl	%eax, -100(%ebp)
	jmp	L1265
L1262:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L1263
	subl	$1, %eax
	testl	%eax, %eax
	je	L1264
	subl	$1, %eax
		.word	0x0b0f
L1263:
	movl	%edx, -104(%ebp)
	movl	-100(%ebp), %esi
	movl	%esi, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1264:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1265:
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
	je	L1267
	movl	$-1, %eax
	jmp	L1268
L1267:
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
	je	L1269
	movl	$1, %eax
	jmp	L1270
L1269:
	movl	$0, %eax
L1270:
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
L1268:
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
	je	L1272
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourceStop, %eax
	call	*%eax
	movl	-12(%ebp), %eax
	movl	$0, 12(%eax)
L1272:
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
	movl	$L1280, %edx
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
	jne	L1275
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
	jne	L1276
	movl	-28(%ebp), %eax
	movl	$0, 12(%eax)
	jmp	L1275
L1276:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourcePause, %eax
	movl	$1, -92(%ebp)
	call	*%eax
	movl	-28(%ebp), %eax
	movl	$2, 12(%eax)
L1275:
	movl	$0, %eax
	movl	%eax, -100(%ebp)
	jmp	L1282
L1280:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1282:
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
	jne	L1284
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	__imp__alSourcePlay, %eax
	call	*%eax
	movl	-12(%ebp), %eax
	movl	$1, 12(%eax)
L1284:
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
	movl	$L1291, %edx
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
	jne	L1287
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
	jne	L1288
	movl	-28(%ebp), %eax
	movl	$0, 12(%eax)
L1288:
L1287:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	L1293
L1291:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1293:
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
	movl	LC45, %eax
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
	movl	$L1304, %edx
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
	jne	L1301
	movl	$-1, %eax
	jmp	L1302
L1301:
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
L1302:
	movl	%eax, -100(%ebp)
	jmp	L1306
L1304:
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
L1306:
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
	movl	$L1323, %edx
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
	je	L1325
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	jmp	L1325
L1323:
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
L1325:
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
	je	L1330
	movl	-12(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	movl	$__ZL9discarded, %ecx
	call	__ZNSt6vectorIjSaIjEE9push_backERKj
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
L1330:
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
LC71:
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
	movl	$L1347, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$1, %eax
	jne	L1342
	jmp	L1341
L1342:
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
	je	L1344
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_CloseHandle@4
	subl	$4, %esp
	jmp	L1341
L1344:
	movl	$LC71, (%esp)
	call	_puts
	movl	$-1, (%esp)
	call	_exit
L1347:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1341:
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
	je	L1362
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_free
L1362:
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1361
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1361:
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
	je	L1368
	movl	$0, %eax
	jmp	L1369
L1368:
	cmpl	$0, 12(%ebp)
	jne	L1370
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 12(%ebp)
L1370:
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	$1, %eax
L1369:
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
	movl	$L1376, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1372
	movl	$0, %eax
	jmp	L1373
L1372:
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
	jne	L1374
	movl	$0, %eax
	jmp	L1373
L1374:
	movl	$1, %eax
L1373:
	movb	%al, -100(%ebp)
	jmp	L1378
L1376:
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
L1378:
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
	movl	$L1383, %edx
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
	je	L1380
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
L1380:
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L1386
L1385:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1382
L1383:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L1384
	subl	$1, %eax
	testl	%eax, %eax
	je	L1385
	subl	$1, %eax
		.word	0x0b0f
L1384:
	movl	%edx, -100(%ebp)
L1382:
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1386:
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
	jne	L1388
	jmp	L1387
L1388:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 20(%eax)
L1387:
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
	je	L1404
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1404:
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
	je	L1407
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1407:
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
	je	L1414
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_fclose
L1414:
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8BBStreamD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1413
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1413:
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
LC72:
	.ascii "r\0"
LC73:
	.ascii "w\0"
LC74:
	.ascii "u\0"
LC75:
	.ascii "rb+\0"
LC76:
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
	movl	$L1436, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1420
	movb	$0, -132(%ebp)
	jmp	L1432
L1420:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	leal	-68(%ebp), %eax
	movl	$LC72, (%esp)
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
	je	L1422
	leal	-64(%ebp), %eax
	movl	$LC36, (%esp)
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
	jmp	L1423
L1422:
	leal	-60(%ebp), %eax
	movl	$LC73, (%esp)
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
	je	L1424
	leal	-56(%ebp), %eax
	movl	$LC34, (%esp)
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
	jmp	L1423
L1424:
	leal	-52(%ebp), %eax
	movl	$LC74, (%esp)
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
	je	L1425
	leal	-48(%ebp), %eax
	movl	$LC75, (%esp)
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
	jmp	L1423
L1425:
	movb	$0, -132(%ebp)
	jmp	L1426
L1423:
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
	jne	L1427
	leal	-36(%ebp), %eax
	movl	$LC74, (%esp)
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
	je	L1427
	movl	$1, %eax
	jmp	L1428
L1427:
	movl	$0, %eax
L1428:
	movb	%al, -136(%ebp)
	cmpb	$0, -132(%ebp)
	je	L1429
	nop
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L1429:
	cmpb	$0, -136(%ebp)
	je	L1430
	call	__ZN6BBGame4GameEv
	movl	%eax, -132(%ebp)
	movl	(%eax), %eax
	addl	$100, %eax
	movl	(%eax), %edi
	movl	%edi, -136(%ebp)
	leal	-32(%ebp), %eax
	movl	$LC76, (%esp)
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
L1430:
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L1431
	movb	$0, -132(%ebp)
	jmp	L1426
L1431:
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
L1426:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L1432:
	movzbl	-132(%ebp), %eax
	movb	%al, -132(%ebp)
	jmp	L1439
L1436:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L1437
	subl	$1, %eax
	testl	%eax, %eax
	je	L1438
	subl	$1, %eax
		.word	0x0b0f
L1437:
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
	jmp	L1434
L1438:
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
L1434:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L1439:
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
	jne	L1441
	jmp	L1440
L1441:
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
L1440:
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
	jne	L1444
	movl	$-1, %eax
	jmp	L1445
L1444:
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
L1445:
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
	jne	L1451
	movl	$0, %eax
	jmp	L1452
L1451:
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
L1452:
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
	jne	L1454
	movl	$0, %eax
	jmp	L1455
L1454:
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
L1455:
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
	jne	L1457
	movl	$0, %eax
	jmp	L1458
L1457:
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
	jle	L1459
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 24(%eax)
L1459:
	movl	-12(%ebp), %eax
L1458:
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
	movl	$L1469, %edx
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
	je	L1461
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String6LengthEv
	cmpl	$1023, %eax
	jg	L1461
	movl	$1, %eax
	jmp	L1462
L1461:
	movl	$0, %eax
L1462:
	testb	%al, %al
	je	L1471
	movl	$0, -28(%ebp)
	jmp	L1464
L1465:
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
L1464:
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6String6LengthEv
	cmpl	-28(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	L1465
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
	je	L1466
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_inet_ntoa@4
	subl	$4, %esp
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	L1467
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_inet_addr@4
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
L1467:
L1466:
	jmp	L1471
L1469:
	leal	24(%ebp), %ebp
	movl	-1108(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -1112(%ebp)
	call	__Unwind_SjLj_Resume
L1471:
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
	movl	$L1475, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movzbl	__ZZN8BBSocket11InitSocketsEvE7started, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L1477
	leal	-424(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$257, (%esp)
	movl	$1, -472(%ebp)
	call	_WSAStartup@8
	subl	$8, %esp
	movb	$1, __ZZN8BBSocket11InitSocketsEvE7started
	jmp	L1477
L1475:
	leal	24(%ebp), %ebp
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -472(%ebp)
	call	__Unwind_SjLj_Resume
L1477:
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
	movl	$L1480, %edx
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
	jmp	L1482
L1480:
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
L1482:
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
	movl	$L1485, %edx
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
	jmp	L1487
L1485:
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
L1487:
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
LC77:
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
	je	L1491
	jmp	L1490
L1491:
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
	movl	$LC77, (%esp)
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
	movl	$LC77, (%esp)
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
	movl	$LC77, (%esp)
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
L1490:
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
	movl	$L1495, %edx
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
	jmp	L1497
L1495:
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
L1497:
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
	movl	$L1504, %edx
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
	js	L1500
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	movl	$1, -76(%ebp)
	call	_closesocket@4
	subl	$4, %esp
L1500:
	movl	-28(%ebp), %eax
	movl	$-1, -76(%ebp)
	movl	%eax, %ecx
	call	__ZN6ObjectD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	L1506
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	jmp	L1506
L1504:
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
L1506:
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
	movl	$L1518, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	js	L1510
	movl	$0, %eax
	jmp	L1511
L1510:
	movl	8(%ebp), %eax
	cmpl	$1, %eax
	jl	L1512
	cmpl	$2, %eax
	jle	L1513
	cmpl	$3, %eax
	je	L1514
	jmp	L1512
L1513:
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
	js	L1515
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
	jmp	L1512
L1515:
	jmp	L1512
L1514:
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
L1512:
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jns	L1516
	movl	$0, %eax
	jmp	L1511
L1516:
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	$1, %eax
L1511:
	movb	%al, -97(%ebp)
	jmp	L1520
L1518:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L1520:
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
	jns	L1522
	jmp	L1521
L1522:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	_closesocket@4
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	$-1, 16(%eax)
L1521:
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
	movl	$L1527, %edx
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
	js	L1525
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
L1525:
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN15BBSocketAddress3SetERK11sockaddr_in
	subl	$4, %esp
	jmp	L1529
L1527:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1529:
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
	movl	$L1533, %edx
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
	js	L1531
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
L1531:
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN15BBSocketAddress3SetERK11sockaddr_in
	subl	$4, %esp
	jmp	L1535
L1533:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1535:
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
	movl	$L1540, %edx
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
	jmp	L1543
L1542:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	jmp	L1539
L1540:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L1541
	subl	$1, %eax
	testl	%eax, %eax
	je	L1542
	subl	$1, %eax
		.word	0x0b0f
L1541:
	movl	%edx, %eax
L1539:
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1543:
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
	movl	$L1548, %edx
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
	jmp	L1551
L1550:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	jmp	L1547
L1548:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L1549
	subl	$1, %eax
	testl	%eax, %eax
	je	L1550
	subl	$1, %eax
		.word	0x0b0f
L1549:
	movl	%edx, %eax
L1547:
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1551:
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
	js	L1557
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
	jmp	L1558
L1557:
	movl	$0, %eax
L1558:
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
	movl	$L1568, %edx
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
	jmp	L1570
L1568:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1570:
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
LC78:
	.ascii "App\0"
	.text
	.globl	__Z8dbg_typePP5c_App
	.def	__Z8dbg_typePP5c_App;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP5c_App:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$LC78, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leave
	ret
	.section .rdata,"dr"
LC79:
	.ascii "Game_app\0"
	.text
	.globl	__Z8dbg_typePP10c_Game_app
	.def	__Z8dbg_typePP10c_Game_app;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP10c_Game_app:
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
	.ascii "GameDelegate\0"
	.text
	.globl	__Z8dbg_typePP14c_GameDelegate
	.def	__Z8dbg_typePP14c_GameDelegate;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP14c_GameDelegate:
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
	.ascii "Image\0"
	.text
	.globl	__Z8dbg_typePP7c_Image
	.def	__Z8dbg_typePP7c_Image;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP7c_Image:
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
	.ascii "GraphicsContext\0"
	.text
	.globl	__Z8dbg_typePP17c_GraphicsContext
	.def	__Z8dbg_typePP17c_GraphicsContext;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP17c_GraphicsContext:
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
	.ascii "Frame\0"
	.text
	.globl	__Z8dbg_typePP7c_Frame
	.def	__Z8dbg_typePP7c_Frame;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP7c_Frame:
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
	.ascii "InputDevice\0"
	.text
	.globl	__Z8dbg_typePP13c_InputDevice
	.def	__Z8dbg_typePP13c_InputDevice;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP13c_InputDevice:
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
	.ascii "JoyState\0"
	.text
	.globl	__Z8dbg_typePP10c_JoyState
	.def	__Z8dbg_typePP10c_JoyState;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP10c_JoyState:
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
	.ascii "DisplayMode\0"
	.text
	.globl	__Z8dbg_typePP13c_DisplayMode
	.def	__Z8dbg_typePP13c_DisplayMode;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP13c_DisplayMode:
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
	.ascii "Map\0"
	.text
	.globl	__Z8dbg_typePP5c_Map
	.def	__Z8dbg_typePP5c_Map;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP5c_Map:
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
	.ascii "IntMap\0"
	.text
	.globl	__Z8dbg_typePP8c_IntMap
	.def	__Z8dbg_typePP8c_IntMap;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP8c_IntMap:
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
	.ascii "Stack\0"
	.text
	.globl	__Z8dbg_typePP7c_Stack
	.def	__Z8dbg_typePP7c_Stack;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP7c_Stack:
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
	.ascii "Node\0"
	.text
	.globl	__Z8dbg_typePP6c_Node
	.def	__Z8dbg_typePP6c_Node;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP6c_Node:
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
	.ascii "BBGameEvent\0"
	.text
	.globl	__Z8dbg_typePP13c_BBGameEvent
	.def	__Z8dbg_typePP13c_BBGameEvent;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP13c_BBGameEvent:
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
	.ascii "Sound\0"
	.text
	.globl	__Z8dbg_typePP7c_Sound
	.def	__Z8dbg_typePP7c_Sound;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP7c_Sound:
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
	.ascii "Arena\0"
	.text
	.globl	__Z8dbg_typePP7c_Arena
	.def	__Z8dbg_typePP7c_Arena;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP7c_Arena:
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
	.ascii "Stream\0"
	.text
	.globl	__Z8dbg_typePP8c_Stream
	.def	__Z8dbg_typePP8c_Stream;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP8c_Stream:
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
	.ascii "FileStream\0"
	.text
	.globl	__Z8dbg_typePP12c_FileStream
	.def	__Z8dbg_typePP12c_FileStream;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP12c_FileStream:
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
	.ascii "DataBuffer\0"
	.text
	.globl	__Z8dbg_typePP12c_DataBuffer
	.def	__Z8dbg_typePP12c_DataBuffer;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP12c_DataBuffer:
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
	.ascii "StreamError\0"
	.text
	.globl	__Z8dbg_typePP13c_StreamError
	.def	__Z8dbg_typePP13c_StreamError;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP13c_StreamError:
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
	.ascii "StreamReadError\0"
	.text
	.globl	__Z8dbg_typePP17c_StreamReadError
	.def	__Z8dbg_typePP17c_StreamReadError;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP17c_StreamReadError:
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
	.globl	__Z8dbg_typePP8c_Stack2
	.def	__Z8dbg_typePP8c_Stack2;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP8c_Stack2:
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
LC99:
	.ascii "Enumerator\0"
	.text
	.globl	__Z8dbg_typePP12c_Enumerator
	.def	__Z8dbg_typePP12c_Enumerator;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP12c_Enumerator:
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
	.section .rdata,"dr"
LC100:
	.ascii "BaseCharacters\0"
	.text
	.globl	__Z8dbg_typePP16c_BaseCharacters
	.def	__Z8dbg_typePP16c_BaseCharacters;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP16c_BaseCharacters:
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
	.ascii "TestingDoll\0"
	.text
	.globl	__Z8dbg_typePP13c_TestingDoll
	.def	__Z8dbg_typePP13c_TestingDoll;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP13c_TestingDoll:
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
	.globl	__Z7gc_markP6BBGame
	.def	__Z7gc_markP6BBGame;	.scl	2;	.type	32;	.endef
__Z7gc_markP6BBGame:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.section .rdata,"dr"
LC103:
	.ascii "BBGame\0"
	.text
	.globl	__Z8dbg_typePP6BBGame
	.def	__Z8dbg_typePP6BBGame;	.scl	2;	.type	32;	.endef
__Z8dbg_typePP6BBGame:
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
LC104:
	.ascii "App.new\0"
LC105:
	.ascii "Self\0"
	.align 4
LC106:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<152>\0"
	.align 4
LC107:
	.ascii "A\0p\0p\0 \0h\0a\0s\0 \0a\0l\0r\0e\0a\0d\0y\0 \0b\0e\0e\0n\0 \0c\0r\0e\0a\0t\0e\0d\0\0\0"
	.align 4
LC108:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<153>\0"
	.align 4
LC109:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<154>\0"
	.align 4
LC110:
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
	movl	$L1641, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC104, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$LC106, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1632
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1632:
	movl	_bb_app__app, %eax
	testl	%eax, %eax
	je	L1633
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-28(%ebp), %eax
	movl	$28, 4(%esp)
	movl	$LC107, (%esp)
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
L1633:
	movl	$LC108, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1634
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1634:
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_bb_app__app, (%esp)
	call	__Z9gc_assignI5c_AppS0_EvRPT_PT0_
	movl	$LC109, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1635
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1635:
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
	movl	$LC110, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1636
	call	__Z8dbg_stopv
L1636:
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
	jmp	L1645
L1643:
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
	jmp	L1639
L1644:
	movl	%edx, -120(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-120(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1639
L1641:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L1642
	subl	$1, %eax
	testl	%eax, %eax
	je	L1643
	subl	$1, %eax
	testl	%eax, %eax
	je	L1644
	subl	$1, %eax
		.word	0x0b0f
L1642:
	movl	%edx, -116(%ebp)
L1639:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1645:
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
LC111:
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
	movl	$LC111, (%esp)
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
	movl	$LC105, (%eax)
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
LC112:
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
	movl	$LC105, (%eax)
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
	movl	$LC105, (%eax)
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
	movl	$LC105, (%eax)
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
	movl	$LC105, (%eax)
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
	movl	$LC105, (%eax)
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
	movl	$LC105, (%eax)
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
	.ascii "App.OnClose\0"
	.align 4
LC119:
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
	movl	$L1664, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC118, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$LC119, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1661
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L1661:
	movl	$1, -92(%ebp)
	call	__Z13bb_app_EndAppv
	movl	$0, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L1666
L1664:
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
L1666:
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
LC120:
	.ascii "App.OnBack\0"
	.align 4
LC121:
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
	movl	$L1671, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC120, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_AppE4infoE, (%eax)
	movl	$LC121, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1668
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L1668:
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
	jmp	L1673
L1671:
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
L1673:
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
LC122:
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
	movl	$LC122, (%esp)
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
	je	L1677
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1677:
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
	je	L1680
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L1680:
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
	movl	$L1687, %edx
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
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	leal	-48(%ebp), %eax
	movl	$3, 4(%esp)
	leal	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	$1, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiEC1EPKii
	subl	$8, %esp
	movl	-76(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, 40(%eax)
	leal	-48(%ebp), %eax
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
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	leal	60(%eax), %edx
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
	leal	64(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	leal	68(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-76(%ebp), %eax
	movl	$0, 72(%eax)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringC1Ev
	movl	-76(%ebp), %eax
	leal	76(%eax), %edx
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
	leal	80(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-76(%ebp), %eax
	movl	$0, 84(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 88(%eax)
	movl	-76(%ebp), %eax
	movl	$0, 92(%eax)
	movl	-76(%ebp), %eax
	movb	$0, 96(%eax)
	jmp	L1689
L1687:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
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
L1689:
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
LC123:
	.ascii "Game_app.new\0"
	.align 4
LC124:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<19>\0"
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
	movl	$L1695, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC123, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	$LC124, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1692
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L1692:
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
	jmp	L1697
L1695:
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
L1697:
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
LC125:
	.ascii "Game_app.FlushVariables\0"
LC126:
	.ascii "What\0"
	.align 4
LC127:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<352>\0"
LC128:
	.ascii "5\0"
	.align 4
LC129:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<355>\0"
	.align 2
LC130:
	.ascii "A\0l\0l\0\0\0"
	.align 4
LC131:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<357>\0"
	.align 4
LC132:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<358>\0"
	.align 4
LC133:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<359>\0"
	.align 4
LC134:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<360>\0"
	.align 4
LC135:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<361>\0"
	.align 4
LC136:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<362>\0"
	.align 4
LC137:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<363>\0"
	.align 4
LC138:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<364>\0"
	.align 4
LC139:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<365>\0"
	.align 4
LC140:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<367>\0"
	.align 4
LC141:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<368>\0"
	.align 4
LC142:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<369>\0"
	.align 4
LC143:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<371>\0"
	.align 4
LC144:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<372>\0"
	.align 4
LC145:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<373>\0"
	.align 4
LC146:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<374>\0"
	.align 4
LC147:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<378>\0"
	.align 2
LC148:
	.ascii "M\0e\0n\0u\0\0\0"
	.align 4
LC149:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<380>\0"
	.align 4
LC150:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<381>\0"
	.align 4
LC151:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<382>\0"
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
	movl	$L1730, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-56(%ebp), %eax
	movl	$LC125, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC126, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC127, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1700
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L1700:
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
	movl	$LC128, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC129, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1701
	movl	$2, -140(%ebp)
	call	__Z8dbg_stopv
L1701:
	leal	-44(%ebp), %eax
	movl	$3, 4(%esp)
	movl	$LC130, (%esp)
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
	je	L1702
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC131, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1703
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1703:
	movl	-92(%ebp), %eax
	movl	$0, 16(%eax)
	movl	$LC132, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1704
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1704:
	movl	-92(%ebp), %eax
	movl	$0, 20(%eax)
	movl	$LC133, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1705
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1705:
	movl	-92(%ebp), %eax
	movl	$0, 24(%eax)
	movl	$LC134, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1706
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1706:
	movl	-92(%ebp), %eax
	movl	$0, 28(%eax)
	movl	$LC135, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1707
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1707:
	movl	-92(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$LC136, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1708
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1708:
	movl	-92(%ebp), %eax
	movl	$0, 36(%eax)
	movl	$LC137, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1709
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1709:
	movl	-92(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$3, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC138, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1710
	call	__Z8dbg_stopv
L1710:
	movl	-92(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$3, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC139, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1711
	call	__Z8dbg_stopv
L1711:
	movl	-92(%ebp), %eax
	addl	$40, %eax
	movl	$2, (%esp)
	movl	$3, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC140, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1712
	call	__Z8dbg_stopv
L1712:
	movl	-92(%ebp), %eax
	movl	$0, 44(%eax)
	movl	$LC141, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1713
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1713:
	movl	-92(%ebp), %eax
	movl	$0, 48(%eax)
	movl	$LC142, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1714
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1714:
	movl	-92(%ebp), %eax
	movl	$0, 52(%eax)
	movl	$LC143, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1715
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1715:
	movl	-92(%ebp), %eax
	movl	$0, 56(%eax)
	movl	$LC144, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1716
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1716:
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
	movl	$LC145, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1717
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1717:
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
	movl	$LC146, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1718
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L1718:
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
	jmp	L1719
L1702:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC147, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1720
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L1720:
	leal	-28(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC148, (%esp)
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
	je	L1721
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC149, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1722
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L1722:
	movl	-92(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$5, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC150, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1723
	call	__Z8dbg_stopv
L1723:
	movl	-92(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$5, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC151, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1724
	call	__Z8dbg_stopv
L1724:
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
L1721:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1719:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L1736
L1733:
	movl	%edx, -148(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L1726
L1735:
	movl	%edx, -148(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L1728
L1734:
	movl	%edx, -148(%ebp)
L1728:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L1726
L1732:
	movl	%edx, -148(%ebp)
L1726:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L1729
L1730:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %edx
	movl	-140(%ebp), %eax
	testl	%eax, %eax
	je	L1731
	subl	$1, %eax
	testl	%eax, %eax
	je	L1732
	subl	$1, %eax
	testl	%eax, %eax
	je	L1733
	subl	$1, %eax
	testl	%eax, %eax
	je	L1734
	subl	$1, %eax
	testl	%eax, %eax
	je	L1735
	subl	$1, %eax
		.word	0x0b0f
L1731:
	movl	%edx, -148(%ebp)
L1729:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L1736:
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
LC152:
	.ascii "Game_app.OnCreate\0"
	.align 4
LC153:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<76>\0"
	.align 4
LC154:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<79>\0"
	.align 2
LC155:
	.ascii "L\0o\0a\0d\0i\0n\0g\0.\0p\0n\0g\0\0\0"
	.align 4
LC156:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<83>\0"
	.align 2
LC157:
	.ascii "M\0a\0i\0n\0M\0e\0n\0u\0\0\0"
	.align 4
LC158:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<84>\0"
	.align 2
LC159:
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
	movl	$L1746, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-52(%ebp), %eax
	movl	$LC152, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	$LC153, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1738
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1738:
	leal	-40(%ebp), %eax
	movl	$3, 4(%esp)
	movl	$LC130, (%esp)
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
	movl	$LC154, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1739
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1739:
	movl	__ZN7c_Image14m_DefaultFlagsE, %eax
	movl	%eax, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	$11, 4(%esp)
	movl	$LC155, (%esp)
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
	movl	$LC156, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1740
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1740:
	leal	-32(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC157, (%esp)
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
	movl	$LC158, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1741
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L1741:
	leal	-28(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC159, (%esp)
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
	jmp	L1750
L1748:
	movl	%edx, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1744
L1749:
	movl	%edx, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L1744
L1746:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L1747
	subl	$1, %eax
	testl	%eax, %eax
	je	L1748
	subl	$1, %eax
	testl	%eax, %eax
	je	L1749
	subl	$1, %eax
		.word	0x0b0f
L1747:
	movl	%edx, -116(%ebp)
L1744:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L1750:
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
	.section .rdata,"dr"
LC160:
	.ascii "Game_app.LoadFiles\0"
LC161:
	.ascii "Where\0"
	.align 4
LC162:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<273>\0"
LC163:
	.ascii "4\0"
	.align 4
LC164:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<275>\0"
	.align 4
LC165:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<277>\0"
	.align 4
LC166:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<279>\0"
	.align 2
LC167:
	.ascii "O\0p\0e\0n\0i\0n\0g\0.\0p\0n\0g\0\0\0"
	.align 4
LC168:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<281>\0"
	.align 4
LC169:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<282>\0"
	.align 4
LC170:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<283>\0"
	.align 4
LC171:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<284>\0"
	.align 4
LC172:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<286>\0"
	.align 4
LC173:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<287>\0"
	.align 4
LC174:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<288>\0"
	.align 4
LC175:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<290>\0"
	.align 2
LC176:
	.ascii "W\0e\0l\0c\0o\0m\0e\0.\0w\0a\0v\0\0\0"
	.align 4
LC177:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<291>\0"
	.align 2
LC178:
	.ascii "N\0b\0i\0d\0i\0a\0.\0w\0a\0v\0\0\0"
	.align 4
LC179:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<295>\0"
	.align 2
LC180:
	.ascii "G\0a\0m\0e\0\0\0"
	.align 4
LC181:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<298>\0"
	.align 4
LC182:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<302>\0"
	.align 4
LC183:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<303>\0"
	.align 2
LC184:
	.ascii "A\0r\0e\0n\0a\0.\0p\0n\0g\0\0\0"
	.align 4
LC185:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<308>\0"
	.align 4
LC186:
	.ascii "m\0o\0n\0k\0e\0y\0:\0/\0/\0d\0a\0t\0a\0/\0M\0a\0p\0"
	.ascii "1\0.\0t\0x\0t\0\0\0"
	.align 4
LC187:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<309>\0"
	.align 4
LC188:
	.ascii "m\0o\0n\0k\0e\0y\0:\0/\0/\0d\0a\0t\0a\0/\0M\0a\0p\0"
	.ascii "2\0.\0t\0x\0t\0\0\0"
	.align 4
LC189:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<310>\0"
	.align 4
LC190:
	.ascii "m\0o\0n\0k\0e\0y\0:\0/\0/\0d\0a\0t\0a\0/\0M\0a\0p\0"
	.ascii "3\0.\0t\0x\0t\0\0\0"
	.align 4
LC191:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<313>\0"
	.align 4
LC192:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<314>\0"
	.align 4
LC193:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<316>\0"
	.align 4
LC194:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<317>\0"
	.align 4
LC195:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<319>\0"
	.align 4
LC196:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<320>\0"
	.align 4
LC197:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<322>\0"
	.align 4
LC198:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<323>\0"
	.align 4
LC199:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<324>\0"
	.align 4
LC200:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<325>\0"
	.align 4
LC201:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<326>\0"
	.align 4
LC202:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<329>\0"
	.align 4
LC203:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<330>\0"
	.align 4
LC204:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<331>\0"
	.align 4
LC205:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<332>\0"
	.align 4
LC206:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<333>\0"
	.align 4
LC207:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<338>\0"
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
	subl	$188, %esp
	movl	%ecx, -108(%ebp)
	movl	$___gxx_personality_sj0, -136(%ebp)
	movl	$LLSDA1129, -132(%ebp)
	leal	-128(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1805, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-84(%ebp), %eax
	movl	$LC160, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	-108(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-88(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC105, (%eax)
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
	movl	$LC161, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC162, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1752
	movl	$1, -156(%ebp)
	call	__Z8dbg_stopv
L1752:
	leal	-92(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-92(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC163, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC164, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1753
	movl	$2, -156(%ebp)
	call	__Z8dbg_stopv
L1753:
	leal	-72(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC157, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-92(%ebp), %eax
	leal	-72(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -176(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -176(%ebp)
	je	L1754
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC165, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1755
	movl	$3, -156(%ebp)
	call	__Z8dbg_stopv
L1755:
	movl	$7, (%esp)
	movl	$3, -156(%ebp)
	call	__Z20bb_app_SetUpdateRatei
	movl	$LC166, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1756
	call	__Z8dbg_stopv
L1756:
	movl	__ZN7c_Image14m_DefaultFlagsE, %eax
	movl	%eax, -176(%ebp)
	leal	-68(%ebp), %eax
	movl	$11, 4(%esp)
	movl	$LC167, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, -156(%ebp)
	call	__Z21bb_graphics_LoadImage6Stringii
	movl	-108(%ebp), %edx
	addl	$44, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC168, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1757
	movl	$3, -156(%ebp)
	call	__Z8dbg_stopv
L1757:
	movl	__ZN7c_Image14m_DefaultFlagsE, %edx
	movl	-108(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 20(%esp)
	movl	$9, 16(%esp)
	movl	$720, 12(%esp)
	movl	$1280, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	$3, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image11p_GrabImageEiiiiii
	subl	$24, %esp
	movl	-108(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC169, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1758
	call	__Z8dbg_stopv
L1758:
	movl	__ZN7c_Image14m_DefaultFlagsE, %edx
	movl	-108(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 20(%esp)
	movl	$9, 16(%esp)
	movl	$720, 12(%esp)
	movl	$1280, 8(%esp)
	movl	$720, 4(%esp)
	movl	$0, (%esp)
	movl	$3, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image11p_GrabImageEiiiiii
	subl	$24, %esp
	movl	-108(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC170, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1759
	call	__Z8dbg_stopv
L1759:
	movl	__ZN7c_Image14m_DefaultFlagsE, %edx
	movl	-108(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 20(%esp)
	movl	$9, 16(%esp)
	movl	$720, 12(%esp)
	movl	$1280, 8(%esp)
	movl	$1440, 4(%esp)
	movl	$0, (%esp)
	movl	$3, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image11p_GrabImageEiiiiii
	subl	$24, %esp
	movl	-108(%ebp), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC171, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1760
	call	__Z8dbg_stopv
L1760:
	movl	__ZN7c_Image14m_DefaultFlagsE, %edx
	movl	-108(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 20(%esp)
	movl	$9, 16(%esp)
	movl	$720, 12(%esp)
	movl	$1280, 8(%esp)
	movl	$2160, 4(%esp)
	movl	$0, (%esp)
	movl	$3, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image11p_GrabImageEiiiiii
	subl	$24, %esp
	movl	-108(%ebp), %edx
	addl	$28, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC172, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1761
	call	__Z8dbg_stopv
L1761:
	leal	-64(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC157, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-108(%ebp), %eax
	leal	80(%eax), %edx
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC173, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1762
	movl	$3, -156(%ebp)
	call	__Z8dbg_stopv
L1762:
	movl	-108(%ebp), %eax
	movl	16(%eax), %eax
	movl	-108(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC174, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1763
	movl	$3, -156(%ebp)
	call	__Z8dbg_stopv
L1763:
	movl	-108(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$LC175, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1764
	movl	$3, -156(%ebp)
	call	__Z8dbg_stopv
L1764:
	leal	-60(%ebp), %eax
	movl	$11, 4(%esp)
	movl	$LC176, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	movl	$5, -156(%ebp)
	call	__Z18bb_audio_LoadSound6String
	movl	-108(%ebp), %edx
	addl	$48, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_SoundS0_EvRPT_PT0_
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC177, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1765
	movl	$3, -156(%ebp)
	call	__Z8dbg_stopv
L1765:
	leal	-56(%ebp), %eax
	movl	$10, 4(%esp)
	movl	$LC178, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	movl	$6, -156(%ebp)
	call	__Z18bb_audio_LoadSound6String
	movl	-108(%ebp), %edx
	addl	$52, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_SoundS0_EvRPT_PT0_
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1766
L1754:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC179, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1767
	movl	$7, -156(%ebp)
	call	__Z8dbg_stopv
L1767:
	leal	-52(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC180, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-92(%ebp), %eax
	leal	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -176(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -176(%ebp)
	je	L1768
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC181, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1769
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1769:
	movl	$60, (%esp)
	movl	$8, -156(%ebp)
	call	__Z20bb_app_SetUpdateRatei
	movl	$LC182, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1770
	call	__Z8dbg_stopv
L1770:
	movl	-108(%ebp), %eax
	movl	$0, 44(%eax)
	movl	$LC183, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1771
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1771:
	movl	__ZN7c_Image14m_DefaultFlagsE, %eax
	movl	%eax, -176(%ebp)
	leal	-48(%ebp), %eax
	movl	$9, 4(%esp)
	movl	$LC184, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	movl	$9, -156(%ebp)
	call	__Z21bb_graphics_LoadImage6Stringii
	movl	-108(%ebp), %edx
	addl	$56, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC185, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1772
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1772:
	leal	-44(%ebp), %eax
	movl	$22, 4(%esp)
	movl	$LC186, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-108(%ebp), %eax
	leal	60(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC187, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1773
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1773:
	leal	-40(%ebp), %eax
	movl	$22, 4(%esp)
	movl	$LC188, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-108(%ebp), %eax
	leal	64(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC189, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1774
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1774:
	leal	-36(%ebp), %eax
	movl	$22, 4(%esp)
	movl	$LC190, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-108(%ebp), %eax
	leal	68(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC191, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1775
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1775:
	movl	$24, (%esp)
	movl	$8, -156(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -164(%ebp)
	movl	$10, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_ArenaC1Ev
	movl	$8, -156(%ebp)
	movl	-164(%ebp), %ecx
	call	__ZN7c_Arena5m_newEv
	movl	-108(%ebp), %edx
	addl	$84, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ArenaS0_EvRPT_PT0_
	movl	$LC192, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1776
	call	__Z8dbg_stopv
L1776:
	movl	-108(%ebp), %eax
	leal	60(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	-108(%ebp), %eax
	movl	84(%eax), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$11, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Arena6p_LoadE6String
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC193, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1777
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1777:
	movl	$120, (%esp)
	movl	$8, -156(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -168(%ebp)
	movl	$12, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_TestingDollC1Ev
	movl	$8, -156(%ebp)
	movl	-168(%ebp), %ecx
	call	__ZN13c_TestingDoll5m_newEv
	movl	-108(%ebp), %edx
	addl	$88, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI13c_TestingDollS0_EvRPT_PT0_
	movl	$LC194, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1778
	call	__Z8dbg_stopv
L1778:
	movl	$124, (%esp)
	movl	$8, -156(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -172(%ebp)
	movl	$13, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN8c_JennidC1Ev
	movl	$8, -156(%ebp)
	movl	-172(%ebp), %ecx
	call	__ZN8c_Jennid5m_newEv
	movl	-108(%ebp), %edx
	addl	$92, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI8c_JennidS0_EvRPT_PT0_
	movl	$LC195, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1779
	call	__Z8dbg_stopv
L1779:
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %eax
	movl	-108(%ebp), %edx
	movl	88(%edx), %edx
	movl	$8, -156(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	$LC196, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1780
	call	__Z8dbg_stopv
L1780:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %eax
	movl	-108(%ebp), %edx
	movl	92(%edx), %edx
	movl	$8, -156(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	$LC197, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1781
	call	__Z8dbg_stopv
L1781:
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	$65, 52(%eax)
	movl	$LC198, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1782
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1782:
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	$68, 56(%eax)
	movl	$LC199, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1783
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1783:
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	$87, 60(%eax)
	movl	$LC200, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1784
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1784:
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	$83, 64(%eax)
	movl	$LC201, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1785
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1785:
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	$32, 68(%eax)
	movl	$LC202, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1786
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1786:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	$37, 52(%eax)
	movl	$LC203, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1787
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1787:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	$39, 56(%eax)
	movl	$LC204, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1788
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1788:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	$38, 60(%eax)
	movl	$LC205, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1789
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1789:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	$40, 64(%eax)
	movl	$LC206, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1790
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1790:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	$16, 68(%eax)
	movl	$LC207, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1791
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L1791:
	leal	-28(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC180, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-108(%ebp), %eax
	leal	80(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1768:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1766:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L1821
L1809:
	movl	%eax, -164(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1793
L1810:
	movl	%eax, -164(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1793
L1811:
	movl	%eax, -164(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1793
L1808:
	movl	%eax, -164(%ebp)
L1793:
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1796
L1814:
	movl	%eax, -164(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1798
L1815:
	movl	%eax, -168(%ebp)
	movl	-164(%ebp), %esi
	movl	%esi, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-168(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1798
L1816:
	movl	%eax, -164(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1798
L1817:
	movl	%eax, -164(%ebp)
	movl	-168(%ebp), %edi
	movl	%edi, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1798
L1818:
	movl	%eax, -164(%ebp)
	movl	-172(%ebp), %ebx
	movl	%ebx, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1798
L1813:
	movl	%eax, -164(%ebp)
L1798:
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1803
L1812:
	movl	%eax, -164(%ebp)
L1803:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1796
L1807:
	movl	%eax, -164(%ebp)
L1796:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L1804
L1805:
	leal	24(%ebp), %ebp
	movl	-152(%ebp), %eax
	cmpl	$12, -156(%ebp)
	ja	L1819
	movl	-156(%ebp), %edx
	sall	$2, %edx
	addl	$L1820, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L1820:
	.long	L1806
	.long	L1807
	.long	L1808
	.long	L1809
	.long	L1810
	.long	L1811
	.long	L1812
	.long	L1813
	.long	L1814
	.long	L1815
	.long	L1816
	.long	L1817
	.long	L1818
	.text
L1819:
		.word	0x0b0f
L1806:
	movl	%eax, -164(%ebp)
L1804:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -156(%ebp)
	call	__Unwind_SjLj_Resume
L1821:
	leal	-160(%ebp), %eax
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
LLSDACSE1129:
	.text
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
LC208:
	.ascii "Game_app.MenuButtons\0"
LC209:
	.ascii "x\0"
LC210:
	.ascii "y\0"
	.align 4
LC211:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<443>\0"
	.align 4
LC212:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<445>\0"
	.align 4
LC213:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<447>\0"
	.align 4
LC214:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<449>\0"
	.align 4
LC215:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<450>\0"
	.align 4
LC216:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<453>\0"
	.align 4
LC217:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<454>\0"
	.align 4
LC218:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<459>\0"
	.align 4
LC219:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<461>\0"
	.align 4
LC220:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<463>\0"
	.align 4
LC221:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<464>\0"
	.align 4
LC222:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<468>\0"
	.align 4
LC223:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<469>\0"
	.align 4
LC224:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<479>\0"
	.align 4
LC225:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<481>\0"
	.align 4
LC226:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<483>\0"
	.align 4
LC227:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<484>\0"
	.align 4
LC228:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<487>\0"
	.align 4
LC229:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<488>\0"
	.align 4
LC230:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<493>\0"
	.align 4
LC231:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<495>\0"
	.align 4
LC232:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<497>\0"
	.align 4
LC233:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<498>\0"
	.align 4
LC234:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<502>\0"
	.align 4
LC235:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<503>\0"
	.align 4
LC236:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<510>\0"
	.align 4
LC237:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<511>\0"
	.align 4
LC238:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<514>\0"
	.align 4
LC239:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<515>\0"
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
	movl	$LLSDA1130, -148(%ebp)
	leal	-144(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1887, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-48(%ebp), %eax
	movl	$LC208, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC209, (%eax)
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
	movl	$LC210, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC211, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1824
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1824:
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
	movl	$LC212, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1825
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1825:
	movl	$38, (%esp)
	movl	$1, -172(%ebp)
	call	__Z16bb_input_KeyDowni
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1826
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC213, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1827
	movl	$3, -172(%ebp)
	call	__Z8dbg_stopv
L1827:
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
	je	L1828
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC214, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1829
	movl	$4, -172(%ebp)
	call	__Z8dbg_stopv
L1829:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$4, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	$LC215, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1830
	call	__Z8dbg_stopv
L1830:
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
	jmp	L1831
L1828:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC216, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1832
	movl	$5, -172(%ebp)
	call	__Z8dbg_stopv
L1832:
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
	movl	$LC217, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1833
	call	__Z8dbg_stopv
L1833:
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
L1831:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1826:
	movl	$LC218, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1834
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1834:
	movl	$40, (%esp)
	movl	$1, -172(%ebp)
	call	__Z16bb_input_KeyDowni
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1835
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC219, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1836
	movl	$6, -172(%ebp)
	call	__Z8dbg_stopv
L1836:
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
	je	L1837
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC220, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1838
	movl	$7, -172(%ebp)
	call	__Z8dbg_stopv
L1838:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$1, (%esp)
	movl	$7, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC221, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1839
	call	__Z8dbg_stopv
L1839:
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
	jmp	L1840
L1837:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC222, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1841
	movl	$8, -172(%ebp)
	call	__Z8dbg_stopv
L1841:
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
	movl	$LC223, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1842
	call	__Z8dbg_stopv
L1842:
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
L1840:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1835:
	movl	$LC224, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1843
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1843:
	movl	$37, (%esp)
	movl	$1, -172(%ebp)
	call	__Z16bb_input_KeyDowni
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1844
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC225, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1845
	movl	$9, -172(%ebp)
	call	__Z8dbg_stopv
L1845:
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
	je	L1846
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC226, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1847
	movl	$10, -172(%ebp)
	call	__Z8dbg_stopv
L1847:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$10, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	$LC227, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1848
	call	__Z8dbg_stopv
L1848:
	movl	-124(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1849
L1846:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC228, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1850
	movl	$11, -172(%ebp)
	call	__Z8dbg_stopv
L1850:
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
	movl	$LC229, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1851
	call	__Z8dbg_stopv
L1851:
	movl	-124(%ebp), %eax
	movl	32(%eax), %eax
	leal	-1(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1849:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1844:
	movl	$LC230, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1852
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1852:
	movl	$39, (%esp)
	movl	$1, -172(%ebp)
	call	__Z16bb_input_KeyDowni
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1853
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC231, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1854
	movl	$12, -172(%ebp)
	call	__Z8dbg_stopv
L1854:
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
	je	L1855
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC232, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1856
	movl	$13, -172(%ebp)
	call	__Z8dbg_stopv
L1856:
	movl	-124(%ebp), %eax
	addl	$40, %eax
	movl	$0, (%esp)
	movl	$13, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	$0, (%eax)
	movl	$LC233, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1857
	call	__Z8dbg_stopv
L1857:
	movl	-124(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1858
L1855:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC234, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1859
	movl	$14, -172(%ebp)
	call	__Z8dbg_stopv
L1859:
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
	movl	$LC235, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1860
	call	__Z8dbg_stopv
L1860:
	movl	-124(%ebp), %eax
	movl	32(%eax), %eax
	leal	1(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1858:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1853:
	movl	$LC236, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1861
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1861:
	movl	$39, (%esp)
	movl	$1, -172(%ebp)
	call	__Z16bb_input_KeyDowni
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1862
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
L1862:
	movl	$LC237, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1863
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1863:
	movl	$37, (%esp)
	movl	$1, -172(%ebp)
	call	__Z16bb_input_KeyDowni
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L1864
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
L1864:
	movl	$LC238, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1865
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1865:
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
	je	L1866
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
L1866:
	movl	$LC239, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1867
	movl	$1, -172(%ebp)
	call	__Z8dbg_stopv
L1867:
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
	je	L1868
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
L1868:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L1908
L1889:
	movl	%eax, -180(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1870
L1891:
	movl	%eax, -180(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1872
L1892:
	movl	%eax, -180(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1872
L1890:
	movl	%eax, -180(%ebp)
L1872:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1870
L1894:
	movl	%eax, -180(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1875
L1895:
	movl	%eax, -180(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1875
L1893:
	movl	%eax, -180(%ebp)
L1875:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1870
L1897:
	movl	%eax, -180(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1878
L1898:
	movl	%eax, -180(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1878
L1896:
	movl	%eax, -180(%ebp)
L1878:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1870
L1900:
	movl	%eax, -180(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1881
L1901:
	movl	%eax, -180(%ebp)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1881
L1899:
	movl	%eax, -180(%ebp)
L1881:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1870
L1902:
	movl	%eax, -180(%ebp)
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1870
L1903:
	movl	%eax, -180(%ebp)
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1870
L1904:
	movl	%eax, -180(%ebp)
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1870
L1905:
	movl	%eax, -180(%ebp)
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L1870
L1887:
	leal	24(%ebp), %ebp
	movl	-168(%ebp), %eax
	cmpl	$17, -172(%ebp)
	ja	L1906
	movl	-172(%ebp), %edx
	sall	$2, %edx
	addl	$L1907, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L1907:
	.long	L1888
	.long	L1889
	.long	L1890
	.long	L1891
	.long	L1892
	.long	L1893
	.long	L1894
	.long	L1895
	.long	L1896
	.long	L1897
	.long	L1898
	.long	L1899
	.long	L1900
	.long	L1901
	.long	L1902
	.long	L1903
	.long	L1904
	.long	L1905
	.text
L1906:
		.word	0x0b0f
L1888:
	movl	%eax, -180(%ebp)
L1870:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -172(%ebp)
	call	__Unwind_SjLj_Resume
L1908:
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
LLSDA1130:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1130-LLSDACSB1130
LLSDACSB1130:
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
LLSDACSE1130:
	.text
	.section .rdata,"dr"
LC240:
	.ascii "Game_app.Menus\0"
LC241:
	.ascii "A\0"
	.align 4
LC242:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<392>\0"
LC243:
	.ascii "6\0"
	.align 4
LC244:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<393>\0"
	.align 4
LC245:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<395>\0"
LC246:
	.ascii "7\0"
	.align 4
LC247:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<397>\0"
	.align 4
LC248:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<398>\0"
	.align 4
LC249:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<399>\0"
	.align 4
LC250:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<400>\0"
	.align 4
LC251:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<402>\0"
	.align 4
LC252:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<403>\0"
	.align 4
LC253:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<406>\0"
	.align 4
LC254:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<407>\0"
	.align 4
LC255:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<410>\0"
	.align 4
LC256:
	.ascii "C\0h\0a\0r\0a\0c\0t\0e\0r\0S\0e\0l\0e\0c\0t\0\0\0"
	.align 4
LC257:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<412>\0"
LC258:
	.ascii "8\0"
	.align 4
LC259:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<413>\0"
	.align 4
LC260:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<416>\0"
	.align 4
LC261:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<418>\0"
	.align 4
LC262:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<423>\0"
	.align 2
LC263:
	.ascii "P\0a\0u\0s\0e\0\0\0"
	.align 4
LC264:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<425>\0"
LC265:
	.ascii "9\0"
	.align 4
LC266:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<426>\0"
	.align 4
LC267:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<428>\0"
	.align 4
LC268:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<429>\0"
	.align 4
LC269:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<431>\0"
	.align 4
LC270:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<432>\0"
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
	movl	$LLSDA1134, -196(%ebp)
	leal	-192(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L1972, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-224(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-68(%ebp), %eax
	movl	$LC240, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC241, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC242, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1910
	movl	$1, -220(%ebp)
	call	__Z8dbg_stopv
L1910:
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
	movl	$LC243, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC244, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1911
	movl	$2, -220(%ebp)
	call	__Z8dbg_stopv
L1911:
	leal	-56(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC157, (%esp)
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
	je	L1912
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC245, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1913
	movl	$3, -220(%ebp)
	call	__Z8dbg_stopv
L1913:
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
	movl	$LC246, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC247, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1914
	movl	$3, -220(%ebp)
	call	__Z8dbg_stopv
L1914:
	movl	-84(%ebp), %eax
	testl	%eax, %eax
	jne	L1915
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC248, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1916
	movl	$4, -220(%ebp)
	call	__Z8dbg_stopv
L1916:
	leal	-52(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC180, (%esp)
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
	movl	$LC249, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1917
	movl	$4, -220(%ebp)
	call	__Z8dbg_stopv
L1917:
	leal	-48(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC159, (%esp)
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
	jmp	L1918
L1915:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC250, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1919
	movl	$5, -220(%ebp)
	call	__Z8dbg_stopv
L1919:
	movl	-84(%ebp), %eax
	cmpl	$1, %eax
	jne	L1920
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC251, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1921
	movl	$6, -220(%ebp)
	call	__Z8dbg_stopv
L1921:
	leal	-44(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC180, (%esp)
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
	movl	$LC252, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1922
	movl	$6, -220(%ebp)
	call	__Z8dbg_stopv
L1922:
	leal	-40(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC159, (%esp)
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
	jmp	L1923
L1920:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC253, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1924
	movl	$7, -220(%ebp)
	call	__Z8dbg_stopv
L1924:
	movl	-84(%ebp), %eax
	cmpl	$2, %eax
	jne	L1925
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC254, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1926
	movl	$8, -220(%ebp)
	call	__Z8dbg_stopv
L1926:
	movl	$8, -220(%ebp)
	call	__Z13bb_app_EndAppv
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1925:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1923:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1918:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1927
L1912:
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC255, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1928
	movl	$9, -220(%ebp)
	call	__Z8dbg_stopv
L1928:
	leal	-36(%ebp), %eax
	movl	$15, 4(%esp)
	movl	$LC256, (%esp)
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
	je	L1929
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC257, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1930
	movl	$10, -220(%ebp)
	call	__Z8dbg_stopv
L1930:
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
	movl	$LC258, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC259, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1931
	movl	$10, -220(%ebp)
	call	__Z8dbg_stopv
L1931:
	movl	-116(%ebp), %eax
	testl	%eax, %eax
	jne	L1932
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1933
L1932:
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC260, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1934
	movl	$11, -220(%ebp)
	call	__Z8dbg_stopv
L1934:
	movl	-116(%ebp), %eax
	cmpl	$10, %eax
	jne	L1935
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1936
L1935:
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC261, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1937
	movl	$12, -220(%ebp)
	call	__Z8dbg_stopv
L1937:
	movl	-116(%ebp), %eax
	cmpl	$1, %eax
	jne	L1938
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1938:
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1936:
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1933:
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1939
L1929:
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC262, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1940
	movl	$13, -220(%ebp)
	call	__Z8dbg_stopv
L1940:
	leal	-32(%ebp), %eax
	movl	$5, 4(%esp)
	movl	$LC263, (%esp)
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
	je	L1941
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC264, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1942
	movl	$14, -220(%ebp)
	call	__Z8dbg_stopv
L1942:
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
	movl	$LC265, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC266, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1943
	movl	$14, -220(%ebp)
	call	__Z8dbg_stopv
L1943:
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	jne	L1944
	leal	-152(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC267, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1945
	movl	$15, -220(%ebp)
	call	__Z8dbg_stopv
L1945:
	leal	-28(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC157, (%esp)
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
	jmp	L1946
L1944:
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC268, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1947
	movl	$16, -220(%ebp)
	call	__Z8dbg_stopv
L1947:
	movl	-148(%ebp), %eax
	cmpl	$10, %eax
	jne	L1948
	leal	-160(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-160(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L1949
L1948:
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC269, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1950
	movl	$17, -220(%ebp)
	call	__Z8dbg_stopv
L1950:
	movl	-148(%ebp), %eax
	cmpl	$20, %eax
	jne	L1951
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC270, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1952
	movl	$18, -220(%ebp)
	call	__Z8dbg_stopv
L1952:
	movl	$18, -220(%ebp)
	call	__Z13bb_app_EndAppv
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1951:
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1949:
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1946:
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1941:
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1939:
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L1927:
	movl	$0, -228(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1993
L1976:
	movl	%eax, -228(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1955
L1978:
	movl	%eax, -228(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1957
L1980:
	movl	%eax, -228(%ebp)
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1959
L1979:
	movl	%eax, -228(%ebp)
L1959:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1957
L1977:
	movl	%eax, -228(%ebp)
L1957:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1955
L1975:
	movl	%eax, -228(%ebp)
L1955:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1960
L1984:
	movl	%eax, -228(%ebp)
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1962
L1983:
	movl	%eax, -228(%ebp)
L1962:
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1963
L1982:
	movl	%eax, -228(%ebp)
L1963:
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1964
L1987:
	movl	%eax, -228(%ebp)
	leal	-152(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1966
L1990:
	movl	%eax, -228(%ebp)
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1968
L1989:
	movl	%eax, -228(%ebp)
L1968:
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1969
L1988:
	movl	%eax, -228(%ebp)
L1969:
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1966
L1986:
	movl	%eax, -228(%ebp)
L1966:
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1970
L1985:
	movl	%eax, -228(%ebp)
L1970:
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1964
L1981:
	movl	%eax, -228(%ebp)
L1964:
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1960
L1974:
	movl	%eax, -228(%ebp)
L1960:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	L1971
L1972:
	leal	24(%ebp), %ebp
	movl	-216(%ebp), %eax
	cmpl	$17, -220(%ebp)
	ja	L1991
	movl	-220(%ebp), %edx
	sall	$2, %edx
	addl	$L1992, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L1992:
	.long	L1973
	.long	L1974
	.long	L1975
	.long	L1976
	.long	L1977
	.long	L1978
	.long	L1979
	.long	L1980
	.long	L1981
	.long	L1982
	.long	L1983
	.long	L1984
	.long	L1985
	.long	L1986
	.long	L1987
	.long	L1988
	.long	L1989
	.long	L1990
	.text
L1991:
		.word	0x0b0f
L1973:
	movl	%eax, -228(%ebp)
L1971:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -220(%ebp)
	call	__Unwind_SjLj_Resume
L1993:
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
LC271:
	.ascii "Game_app.OnUpdate\0"
	.align 4
LC272:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<92>\0"
LC273:
	.ascii "1\0"
	.align 4
LC274:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<95>\0"
	.align 4
LC275:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<98>\0"
	.align 4
LC276:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<101>\0"
	.align 4
LC277:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<102>\0"
	.align 4
LC278:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<105>\0"
	.align 4
LC279:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<108>\0"
LC280:
	.ascii "2\0"
	.align 4
LC281:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<110>\0"
	.align 4
LC282:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<114>\0"
	.align 4
LC283:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<115>\0"
	.align 4
LC284:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<116>\0"
	.align 4
LC285:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<126>\0"
	.align 4
LC286:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<131>\0"
	.align 4
LC287:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<135>\0"
	.align 4
LC288:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<136>\0"
	.align 4
LC289:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<137>\0"
	.align 4
LC290:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<138>\0"
	.align 2
LC291:
	.ascii "B\0a\0c\0k\0M\0.\0w\0a\0v\0\0\0"
	.align 4
LC292:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<139>\0"
	.align 4
LC293:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<142>\0"
	.align 4
LC294:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<143>\0"
	.align 4
LC295:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<149>\0"
	.align 4
LC296:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<155>\0"
	.align 4
LC297:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<157>\0"
	.align 4
LC298:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<158>\0"
	.align 4
LC299:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<163>\0"
	.align 4
LC300:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<167>\0"
	.align 4
LC301:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<170>\0"
	.align 4
LC302:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<174>\0"
	.align 4
LC303:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<177>\0"
	.align 4
LC304:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<178>\0"
	.align 4
LC305:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<187>\0"
	.align 4
LC306:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<189>\0"
	.align 4
LC307:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<190>\0"
	.align 4
LC308:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<191>\0"
	.align 4
LC309:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<196>\0"
	.align 4
LC310:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<197>\0"
	.align 4
LC311:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<198>\0"
	.align 4
LC312:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<201>\0"
	.align 4
LC313:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<202>\0"
	.align 4
LC314:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<203>\0"
	.align 4
LC315:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<221>\0"
	.align 4
LC316:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<225>\0"
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
	movl	$LLSDA1135, -212(%ebp)
	leal	-208(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2088, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-72(%ebp), %eax
	movl	$LC271, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	$LC272, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1996
	movl	$1, -236(%ebp)
	call	__Z8dbg_stopv
L1996:
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
	movl	$LC273, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC274, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1997
	movl	$2, -236(%ebp)
	call	__Z8dbg_stopv
L1997:
	leal	-60(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC159, (%esp)
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
	je	L1998
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC275, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L1999
	movl	$3, -236(%ebp)
	call	__Z8dbg_stopv
L1999:
	leal	-56(%ebp), %eax
	movl	$3, 4(%esp)
	movl	$LC130, (%esp)
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
	movl	$LC276, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2000
	movl	$3, -236(%ebp)
	call	__Z8dbg_stopv
L2000:
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
	movl	$LC277, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2001
	movl	$3, -236(%ebp)
	call	__Z8dbg_stopv
L2001:
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
	jmp	L2002
L1998:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC278, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2003
	movl	$6, -236(%ebp)
	call	__Z8dbg_stopv
L2003:
	leal	-48(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC157, (%esp)
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
	je	L2004
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC279, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2005
	movl	$7, -236(%ebp)
	call	__Z8dbg_stopv
L2005:
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
	movl	$LC280, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	$LC281, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2006
	movl	$7, -236(%ebp)
	call	__Z8dbg_stopv
L2006:
	movl	-188(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	cmpl	%eax, %edx
	jne	L2007
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC282, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2008
	movl	$8, -236(%ebp)
	call	__Z8dbg_stopv
L2008:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$8, %eax
	jne	L2009
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC283, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2010
	movl	$9, -236(%ebp)
	call	__Z8dbg_stopv
L2010:
	movl	-188(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$LC284, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2011
	movl	$9, -236(%ebp)
	call	__Z8dbg_stopv
L2011:
	movl	-188(%ebp), %eax
	movl	20(%eax), %eax
	movl	-188(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2012
L2009:
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC285, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2013
	movl	$10, -236(%ebp)
	call	__Z8dbg_stopv
L2013:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	leal	1(%eax), %edx
	movl	-188(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2012:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2014
L2007:
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC286, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2015
	movl	$11, -236(%ebp)
	call	__Z8dbg_stopv
L2015:
	movl	-188(%ebp), %eax
	movl	20(%eax), %edx
	movl	-96(%ebp), %eax
	cmpl	%eax, %edx
	jne	L2016
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC287, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2017
	movl	$12, -236(%ebp)
	call	__Z8dbg_stopv
L2017:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$8, %eax
	jne	L2018
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC288, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2019
	movl	$13, -236(%ebp)
	call	__Z8dbg_stopv
L2019:
	movl	-188(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$LC289, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2020
	movl	$13, -236(%ebp)
	call	__Z8dbg_stopv
L2020:
	movl	-188(%ebp), %eax
	movl	24(%eax), %eax
	movl	-188(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC290, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2021
	movl	$13, -236(%ebp)
	call	__Z8dbg_stopv
L2021:
	leal	-44(%ebp), %eax
	movl	$9, 4(%esp)
	movl	$LC291, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	$1, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	$14, -236(%ebp)
	call	__Z18bb_audio_PlayMusic6Stringi
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	$LC292, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2022
	movl	$13, -236(%ebp)
	call	__Z8dbg_stopv
L2022:
	movl	LC64, %eax
	movl	%eax, (%esp)
	movl	$13, -236(%ebp)
	call	__Z23bb_audio_SetMusicVolumef
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2023
L2018:
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC293, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2024
	movl	$15, -236(%ebp)
	call	__Z8dbg_stopv
L2024:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$3, %eax
	jne	L2025
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	-188(%ebp), %eax
	movl	48(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	$16, -236(%ebp)
	call	__Z18bb_audio_PlaySoundP7c_Soundii
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2025:
	movl	$LC294, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2026
	movl	$15, -236(%ebp)
	call	__Z8dbg_stopv
L2026:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	leal	1(%eax), %edx
	movl	-188(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2023:
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2027
L2016:
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC295, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2028
	movl	$17, -236(%ebp)
	call	__Z8dbg_stopv
L2028:
	movl	-188(%ebp), %eax
	movl	24(%eax), %edx
	movl	-96(%ebp), %eax
	cmpl	%eax, %edx
	jne	L2029
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC296, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2030
	movl	$18, -236(%ebp)
	call	__Z8dbg_stopv
L2030:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$8, %eax
	jne	L2031
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC297, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2032
	movl	$19, -236(%ebp)
	call	__Z8dbg_stopv
L2032:
	movl	-188(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$LC298, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2033
	movl	$19, -236(%ebp)
	call	__Z8dbg_stopv
L2033:
	movl	-188(%ebp), %eax
	movl	28(%eax), %eax
	movl	-188(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2034
L2031:
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC299, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2035
	movl	$20, -236(%ebp)
	call	__Z8dbg_stopv
L2035:
	movl	-188(%ebp), %eax
	movl	32(%eax), %eax
	leal	1(%eax), %edx
	movl	-188(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2034:
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2036
L2029:
	leal	-148(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC300, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2037
	movl	$21, -236(%ebp)
	call	__Z8dbg_stopv
L2037:
	movl	-188(%ebp), %eax
	movl	28(%eax), %edx
	movl	-96(%ebp), %eax
	cmpl	%eax, %edx
	jne	L2038
	leal	-152(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC301, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2039
	movl	$22, -236(%ebp)
	call	__Z8dbg_stopv
L2039:
	movl	-188(%ebp), %eax
	movl	$2, 4(%esp)
	movl	$0, (%esp)
	movl	$22, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app13p_MenuButtonsEii
	subl	$8, %esp
	movl	$LC302, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2040
	call	__Z8dbg_stopv
L2040:
	movl	$13, (%esp)
	movl	$22, -236(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L2041
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC303, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2042
	movl	$23, -236(%ebp)
	call	__Z8dbg_stopv
L2042:
	movl	-188(%ebp), %eax
	addl	$40, %eax
	movl	$2, (%esp)
	movl	$23, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIiE2AtEi
	subl	$4, %esp
	movl	(%eax), %edx
	movl	-188(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app7p_MenusEi
	subl	$4, %esp
	movl	$LC304, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2043
	call	__Z8dbg_stopv
L2043:
	leal	-40(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC148, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	movl	-188(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	$24, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN10c_Game_app16p_FlushVariablesE6String
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2041:
	leal	-152(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2038:
	leal	-148(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2036:
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2027:
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2014:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2044
L2004:
	leal	-160(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC305, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2045
	movl	$25, -236(%ebp)
	call	__Z8dbg_stopv
L2045:
	leal	-36(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC180, (%esp)
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
	je	L2046
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC306, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2047
	movl	$26, -236(%ebp)
	call	__Z8dbg_stopv
L2047:
	movl	$27, (%esp)
	movl	$26, -236(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L2048
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC307, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2049
	movl	$27, -236(%ebp)
	call	__Z8dbg_stopv
L2049:
	leal	-32(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC157, (%esp)
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
	movl	$LC308, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2050
	movl	$27, -236(%ebp)
	call	__Z8dbg_stopv
L2050:
	leal	-28(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC159, (%esp)
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
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2048:
	movl	$LC309, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2051
	movl	$26, -236(%ebp)
	call	__Z8dbg_stopv
L2051:
	movl	-188(%ebp), %eax
	movl	88(%eax), %eax
	movl	$26, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters22p_PlayerCollisionCheckEv
	movl	$LC310, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2052
	call	__Z8dbg_stopv
L2052:
	movl	-188(%ebp), %eax
	movl	88(%eax), %eax
	movl	$5, (%esp)
	movl	$26, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters9p_GravityEi
	subl	$4, %esp
	movl	$LC311, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2053
	call	__Z8dbg_stopv
L2053:
	movl	-188(%ebp), %eax
	movl	88(%eax), %eax
	movl	$26, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters10p_KeyBindsEv
	movl	$LC312, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2054
	call	__Z8dbg_stopv
L2054:
	movl	-188(%ebp), %eax
	movl	92(%eax), %eax
	movl	$26, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters22p_PlayerCollisionCheckEv
	movl	$LC313, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2055
	call	__Z8dbg_stopv
L2055:
	movl	-188(%ebp), %eax
	movl	92(%eax), %eax
	movl	$5, (%esp)
	movl	$26, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters9p_GravityEi
	subl	$4, %esp
	movl	$LC314, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2056
	call	__Z8dbg_stopv
L2056:
	movl	-188(%ebp), %eax
	movl	92(%eax), %eax
	movl	$26, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN16c_BaseCharacters10p_KeyBindsEv
	movl	$LC315, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2057
	call	__Z8dbg_stopv
L2057:
	movl	$112, (%esp)
	movl	$26, -236(%ebp)
	call	__Z15bb_input_KeyHiti
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	L2058
	leal	-172(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	-188(%ebp), %eax
	movzbl	96(%eax), %eax
	xorl	$1, %eax
	movl	%eax, %edx
	movl	-188(%ebp), %eax
	movb	%dl, 96(%eax)
	leal	-172(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2058:
	movl	$LC316, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2059
	movl	$26, -236(%ebp)
	call	__Z8dbg_stopv
L2059:
	movl	-188(%ebp), %eax
	movl	88(%eax), %eax
	movl	$26, -236(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_TestingDoll16p_AnimationCycleEv
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2046:
	leal	-160(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2044:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2002:
	movl	$0, -244(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2118
L2092:
	movl	%eax, -244(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2062
L2093:
	movl	%eax, -244(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2062
L2091:
	movl	%eax, -244(%ebp)
L2062:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2064
L2097:
	movl	%eax, -244(%ebp)
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2066
L2098:
	movl	%eax, -244(%ebp)
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2066
L2096:
	movl	%eax, -244(%ebp)
L2066:
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2068
L2102:
	movl	%eax, -244(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2070
L2101:
	movl	%eax, -244(%ebp)
L2070:
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2071
L2104:
	movl	%eax, -244(%ebp)
	leal	-128(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2073
L2103:
	movl	%eax, -244(%ebp)
L2073:
	leal	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2071
L2100:
	movl	%eax, -244(%ebp)
L2071:
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2074
L2107:
	movl	%eax, -244(%ebp)
	leal	-140(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2076
L2108:
	movl	%eax, -244(%ebp)
	leal	-144(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2076
L2106:
	movl	%eax, -244(%ebp)
L2076:
	leal	-136(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2078
L2112:
	movl	%eax, -244(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2080
L2111:
	movl	%eax, -244(%ebp)
L2080:
	leal	-156(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2081
L2110:
	movl	%eax, -244(%ebp)
L2081:
	leal	-152(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2082
L2109:
	movl	%eax, -244(%ebp)
L2082:
	leal	-148(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2078
L2105:
	movl	%eax, -244(%ebp)
L2078:
	leal	-132(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2074
L2099:
	movl	%eax, -244(%ebp)
L2074:
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2068
L2095:
	movl	%eax, -244(%ebp)
L2068:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2083
L2115:
	movl	%eax, -244(%ebp)
	leal	-168(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2085
L2114:
	movl	%eax, -244(%ebp)
L2085:
	leal	-164(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2086
L2113:
	movl	%eax, -244(%ebp)
L2086:
	leal	-160(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2083
L2094:
	movl	%eax, -244(%ebp)
L2083:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2064
L2090:
	movl	%eax, -244(%ebp)
L2064:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp	L2087
L2088:
	leal	24(%ebp), %ebp
	movl	-232(%ebp), %eax
	cmpl	$26, -236(%ebp)
	ja	L2116
	movl	-236(%ebp), %edx
	sall	$2, %edx
	addl	$L2117, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2117:
	.long	L2089
	.long	L2090
	.long	L2091
	.long	L2092
	.long	L2093
	.long	L2094
	.long	L2095
	.long	L2096
	.long	L2097
	.long	L2098
	.long	L2099
	.long	L2100
	.long	L2101
	.long	L2102
	.long	L2103
	.long	L2104
	.long	L2105
	.long	L2106
	.long	L2107
	.long	L2108
	.long	L2109
	.long	L2110
	.long	L2111
	.long	L2112
	.long	L2113
	.long	L2114
	.long	L2115
	.text
L2116:
		.word	0x0b0f
L2089:
	movl	%eax, -244(%ebp)
L2087:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-244(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -236(%ebp)
	call	__Unwind_SjLj_Resume
L2118:
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
LLSDACSE1135:
	.text
	.section .rdata,"dr"
LC317:
	.ascii "Game_app.OnRender\0"
	.align 4
LC318:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<230>\0"
LC319:
	.ascii "3\0"
	.align 4
LC320:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<232>\0"
	.align 4
LC321:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<234>\0"
	.align 4
LC322:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<237>\0"
	.align 4
LC323:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<239>\0"
	.align 4
LC324:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<241>\0"
	.align 4
LC325:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<243>\0"
	.align 4
LC326:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<245>\0"
	.align 4
LC327:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<253>\0"
	.align 4
LC328:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<254>\0"
	.align 4
LC329:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<257>\0"
	.align 4
LC330:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<259>\0"
	.align 4
LC331:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<260>\0"
	.align 4
LC333:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<261>\0"
	.align 4
LC334:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<262>\0"
	.align 4
LC335:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<263>\0"
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
	subl	$172, %esp
	movl	%ecx, -108(%ebp)
	movl	$___gxx_personality_sj0, -136(%ebp)
	movl	$LLSDA1139, -132(%ebp)
	leal	-128(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2154, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-52(%ebp), %eax
	movl	$LC317, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_Game_appE4infoE, (%eax)
	movl	$LC318, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2120
	movl	$1, -156(%ebp)
	call	__Z8dbg_stopv
L2120:
	movl	-108(%ebp), %eax
	leal	80(%eax), %edx
	leal	-60(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1ERKS_
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-60(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC319, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC320, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2121
	movl	$2, -156(%ebp)
	call	__Z8dbg_stopv
L2121:
	leal	-40(%ebp), %eax
	movl	$8, 4(%esp)
	movl	$LC157, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-60(%ebp), %eax
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
	je	L2122
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC321, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2123
	movl	$3, -156(%ebp)
	call	__Z8dbg_stopv
L2123:
	movl	-108(%ebp), %eax
	movl	32(%eax), %eax
	movl	-108(%ebp), %edx
	movl	36(%edx), %edx
	movl	%eax, 12(%esp)
	movl	LC45, %eax
	movl	%eax, 8(%esp)
	movl	LC45, %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$3, -156(%ebp)
	call	__Z21bb_graphics_DrawImageP7c_Imageffi
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2124
L2122:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC322, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2125
	movl	$4, -156(%ebp)
	call	__Z8dbg_stopv
L2125:
	leal	-36(%ebp), %eax
	movl	$7, 4(%esp)
	movl	$LC159, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-60(%ebp), %eax
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
	je	L2126
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC323, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2127
	movl	$5, -156(%ebp)
	call	__Z8dbg_stopv
L2127:
	movl	-108(%ebp), %eax
	movl	72(%eax), %edx
	movl	$0, 12(%esp)
	movl	LC45, %eax
	movl	%eax, 8(%esp)
	movl	LC45, %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$5, -156(%ebp)
	call	__Z21bb_graphics_DrawImageP7c_Imageffi
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2128
L2126:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC324, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2129
	movl	$6, -156(%ebp)
	call	__Z8dbg_stopv
L2129:
	leal	-32(%ebp), %eax
	movl	$15, 4(%esp)
	movl	$LC256, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-60(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -168(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -168(%ebp)
	je	L2130
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2131
L2130:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC325, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2132
	movl	$7, -156(%ebp)
	call	__Z8dbg_stopv
L2132:
	leal	-28(%ebp), %eax
	movl	$4, 4(%esp)
	movl	$LC180, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1EPKwi
	subl	$8, %esp
	leal	-60(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringeqERKS_
	subl	$4, %esp
	movb	%al, -168(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	cmpb	$0, -168(%ebp)
	je	L2133
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC326, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2134
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L2134:
	movl	-108(%ebp), %eax
	movl	56(%eax), %edx
	movl	$0, 12(%esp)
	movl	LC45, %eax
	movl	%eax, 8(%esp)
	movl	LC45, %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	$8, -156(%ebp)
	call	__Z21bb_graphics_DrawImageP7c_Imageffi
	movl	$LC327, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2135
	call	__Z8dbg_stopv
L2135:
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	$8, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_TestingDoll12p_DrawPlayerEv
	movl	$LC328, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2136
	call	__Z8dbg_stopv
L2136:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	80(%eax), %edx
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	72(%eax), %eax
	movl	-108(%ebp), %ecx
	movl	92(%ecx), %ecx
	movl	120(%ecx), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	movl	$8, -156(%ebp)
	call	__Z21bb_graphics_DrawImageP7c_Imageffi
	movl	$LC329, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2137
	call	__Z8dbg_stopv
L2137:
	movl	-108(%ebp), %eax
	movzbl	96(%eax), %eax
	testb	%al, %al
	je	L2138
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC330, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2139
	movl	$9, -156(%ebp)
	call	__Z8dbg_stopv
L2139:
	movl	-108(%ebp), %eax
	movl	84(%eax), %eax
	movl	$9, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Arena6p_DrawEv
	movl	$LC331, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2140
	call	__Z8dbg_stopv
L2140:
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	92(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	fxch	%st(1)
	movl	LC332, %eax
	movl	%eax, 12(%esp)
	movl	LC332, %eax
	movl	%eax, 8(%esp)
	fstps	4(%esp)
	fstps	(%esp)
	movl	$9, -156(%ebp)
	call	__Z20bb_graphics_DrawRectffff
	movl	$LC333, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2141
	call	__Z8dbg_stopv
L2141:
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	92(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	movl	-108(%ebp), %eax
	movl	88(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	fxch	%st(1)
	movl	LC332, %eax
	movl	%eax, 12(%esp)
	movl	LC332, %eax
	movl	%eax, 8(%esp)
	fstps	4(%esp)
	fstps	(%esp)
	movl	$9, -156(%ebp)
	call	__Z20bb_graphics_DrawRectffff
	movl	$LC334, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2142
	call	__Z8dbg_stopv
L2142:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	92(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	fxch	%st(1)
	movl	LC332, %eax
	movl	%eax, 12(%esp)
	movl	LC332, %eax
	movl	%eax, 8(%esp)
	fstps	4(%esp)
	fstps	(%esp)
	movl	$9, -156(%ebp)
	call	__Z20bb_graphics_DrawRectffff
	movl	$LC335, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2143
	call	__Z8dbg_stopv
L2143:
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	92(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	movl	-108(%ebp), %eax
	movl	92(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -164(%ebp)
	fildl	-164(%ebp)
	fxch	%st(1)
	movl	LC332, %eax
	movl	%eax, 12(%esp)
	movl	LC332, %eax
	movl	%eax, 8(%esp)
	fstps	4(%esp)
	fstps	(%esp)
	movl	$9, -156(%ebp)
	call	__Z20bb_graphics_DrawRectffff
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2138:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2133:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2131:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2128:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2124:
	movl	$0, -168(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2166
L2157:
	movl	%eax, -168(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2146
L2159:
	movl	%eax, -168(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2148
L2163:
	movl	%eax, -168(%ebp)
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2150
L2162:
	movl	%eax, -168(%ebp)
L2150:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2151
L2161:
	movl	%eax, -168(%ebp)
L2151:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2152
L2160:
	movl	%eax, -168(%ebp)
L2152:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2148
L2158:
	movl	%eax, -168(%ebp)
L2148:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2146
L2156:
	movl	%eax, -168(%ebp)
L2146:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	L2153
L2154:
	leal	24(%ebp), %ebp
	movl	-152(%ebp), %eax
	cmpl	$8, -156(%ebp)
	ja	L2164
	movl	-156(%ebp), %edx
	sall	$2, %edx
	addl	$L2165, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2165:
	.long	L2155
	.long	L2156
	.long	L2157
	.long	L2158
	.long	L2159
	.long	L2160
	.long	L2161
	.long	L2162
	.long	L2163
	.text
L2164:
		.word	0x0b0f
L2155:
	movl	%eax, -168(%ebp)
L2153:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -156(%ebp)
	call	__Unwind_SjLj_Resume
L2166:
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
LLSDA1139:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1139-LLSDACSB1139
LLSDACSB1139:
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
LLSDACSE1139:
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
	movl	$LLSDA1140, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2169, %edx
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
	movl	84(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI7c_ArenaEvPT_
	movl	-44(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI13c_TestingDollEvPT_
	movl	-44(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, (%esp)
	call	__Z9gc_mark_qI8c_JennidEvPT_
	jmp	L2171
L2169:
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
L2171:
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
LLSDA1140:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1140-LLSDACSB1140
LLSDACSB1140:
	.uleb128 0
	.uleb128 0
LLSDACSE1140:
	.text
	.section .rdata,"dr"
LC336:
	.ascii "(Game_app)\12\0"
LC337:
	.ascii "ToState\0"
LC338:
	.ascii "Set1\0"
LC339:
	.ascii "Set2\0"
LC340:
	.ascii "Set3\0"
LC341:
	.ascii "Set4\0"
LC342:
	.ascii "CurrentFrame\0"
LC343:
	.ascii "GrabSet\0"
LC344:
	.ascii "GameState\0"
LC345:
	.ascii "MenuPointer\0"
LC346:
	.ascii "AnimationSheet\0"
LC347:
	.ascii "Welcome\0"
LC348:
	.ascii "Nbidia\0"
LC349:
	.ascii "ArenaB\0"
LC350:
	.ascii "BattleGround\0"
LC351:
	.ascii "Map1\0"
LC352:
	.ascii "Map2\0"
LC353:
	.ascii "Map3\0"
LC354:
	.ascii "P1\0"
LC355:
	.ascii "P2\0"
LC356:
	.ascii "DeveloperMode\0"
LC357:
	.ascii "LoadingB\0"
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
	subl	$188, %esp
	movl	%ecx, -124(%ebp)
	movl	$___gxx_personality_sj0, -152(%ebp)
	movl	$LLSDA1141, -148(%ebp)
	leal	-144(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2196, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-124(%ebp), %eax
	movl	$LC336, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %edx
	leal	-112(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN5c_App5debugEv
	subl	$4, %esp
	leal	-116(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-112(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6StringplERKS_
	subl	$8, %esp
	movl	-124(%ebp), %eax
	leal	-116(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringaSERKS_
	subl	$4, %esp
	leal	-116(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	76(%eax), %edx
	leal	-108(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC337, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declI6StringES0_PKcPT_
	movl	-124(%ebp), %eax
	leal	-108(%ebp), %edx
	movl	%edx, (%esp)
	movl	$2, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-104(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC338, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-104(%ebp), %edx
	movl	%edx, (%esp)
	movl	$3, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-100(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC339, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-100(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	24(%eax), %edx
	leal	-96(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC340, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-96(%ebp), %edx
	movl	%edx, (%esp)
	movl	$5, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	28(%eax), %edx
	leal	-92(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC341, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-92(%ebp), %edx
	movl	%edx, (%esp)
	movl	$6, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	leal	-88(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC342, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIiE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-88(%ebp), %edx
	movl	%edx, (%esp)
	movl	$7, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	36(%eax), %edx
	leal	-84(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC343, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-84(%ebp), %edx
	movl	%edx, (%esp)
	movl	$8, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	80(%eax), %edx
	leal	-80(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC344, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declI6StringES0_PKcPT_
	movl	-124(%ebp), %eax
	leal	-80(%ebp), %edx
	movl	%edx, (%esp)
	movl	$9, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	40(%eax), %edx
	leal	-76(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC345, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declI5ArrayIiEE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-76(%ebp), %edx
	movl	%edx, (%esp)
	movl	$10, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	44(%eax), %edx
	leal	-72(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC346, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-72(%ebp), %edx
	movl	%edx, (%esp)
	movl	$11, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	48(%eax), %edx
	leal	-68(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC347, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_SoundE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-68(%ebp), %edx
	movl	%edx, (%esp)
	movl	$12, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	52(%eax), %edx
	leal	-64(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC348, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_SoundE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-64(%ebp), %edx
	movl	%edx, (%esp)
	movl	$13, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	56(%eax), %edx
	leal	-60(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC349, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-60(%ebp), %edx
	movl	%edx, (%esp)
	movl	$14, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	84(%eax), %edx
	leal	-56(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC350, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_ArenaE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-56(%ebp), %edx
	movl	%edx, (%esp)
	movl	$15, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	60(%eax), %edx
	leal	-52(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC351, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declI6StringES0_PKcPT_
	movl	-124(%ebp), %eax
	leal	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	$16, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	64(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC352, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declI6StringES0_PKcPT_
	movl	-124(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	$17, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	68(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC353, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declI6StringES0_PKcPT_
	movl	-124(%ebp), %eax
	leal	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	$18, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	88(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC354, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP13c_TestingDollE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	$19, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	92(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC355, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP8c_JennidE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	$20, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	96(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC356, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIbE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, (%esp)
	movl	$21, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	8(%ebp), %eax
	leal	72(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC357, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -172(%ebp)
	call	__Z8dbg_declIP7c_ImageE6StringPKcPT_
	movl	-124(%ebp), %eax
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	$22, -172(%ebp)
	movl	%eax, %ecx
	call	__ZN6StringpLERKS_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	jmp	L2221
L2198:
	movl	%eax, -180(%ebp)
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2199:
	movl	%eax, -180(%ebp)
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2200:
	movl	%eax, -180(%ebp)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2201:
	movl	%eax, -180(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2202:
	movl	%eax, -180(%ebp)
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2203:
	movl	%eax, -180(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2204:
	movl	%eax, -180(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2205:
	movl	%eax, -180(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2206:
	movl	%eax, -180(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2207:
	movl	%eax, -180(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2208:
	movl	%eax, -180(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2209:
	movl	%eax, -180(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2210:
	movl	%eax, -180(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2211:
	movl	%eax, -180(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2212:
	movl	%eax, -180(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2213:
	movl	%eax, -180(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2214:
	movl	%eax, -180(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2215:
	movl	%eax, -180(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2216:
	movl	%eax, -180(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2217:
	movl	%eax, -180(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2218:
	movl	%eax, -180(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2175
L2196:
	leal	24(%ebp), %ebp
	movl	-168(%ebp), %eax
	cmpl	$21, -172(%ebp)
	ja	L2219
	movl	-172(%ebp), %edx
	sall	$2, %edx
	addl	$L2220, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2220:
	.long	L2197
	.long	L2198
	.long	L2199
	.long	L2200
	.long	L2201
	.long	L2202
	.long	L2203
	.long	L2204
	.long	L2205
	.long	L2206
	.long	L2207
	.long	L2208
	.long	L2209
	.long	L2210
	.long	L2211
	.long	L2212
	.long	L2213
	.long	L2214
	.long	L2215
	.long	L2216
	.long	L2217
	.long	L2218
	.text
L2219:
		.word	0x0b0f
L2197:
	movl	%eax, -180(%ebp)
L2175:
	movl	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -172(%ebp)
	call	__Unwind_SjLj_Resume
L2221:
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
LLSDACSE1141:
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
	je	L2223
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L2223:
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
	je	L2226
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L2226:
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
LC358:
	.ascii "GameDelegate.new\0"
	.align 4
LC359:
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
	movl	$LLSDA1152, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2237, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC358, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC359, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2234
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2234:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2239
L2237:
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
L2239:
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
LLSDA1152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1152-LLSDACSB1152
LLSDACSB1152:
	.uleb128 0
	.uleb128 0
LLSDACSE1152:
	.text
	.section .rdata,"dr"
LC360:
	.ascii "GameDelegate.StartGame\0"
	.align 4
LC361:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<75>\0"
	.align 4
LC362:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<76>\0"
	.align 4
LC363:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<77>\0"
	.align 4
LC364:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<79>\0"
	.align 4
LC365:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<80>\0"
	.align 4
LC366:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<82>\0"
	.align 4
LC367:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<83>\0"
	.align 4
LC368:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<85>\0"
	.align 4
LC369:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<87>\0"
	.align 4
LC370:
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
	movl	$LLSDA1156, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2255, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC360, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC361, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2241
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2241:
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
	movl	$LC362, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2242
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2242:
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z29bb_graphics_SetGraphicsDeviceP12gxtkGraphics
	movl	$LC363, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2243
	call	__Z8dbg_stopv
L2243:
	movl	$32, 4(%esp)
	movl	$0, (%esp)
	movl	$1, -92(%ebp)
	call	__Z19bb_graphics_SetFontP7c_Imagei
	movl	$LC364, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2244
	call	__Z8dbg_stopv
L2244:
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
	movl	$LC365, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2245
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2245:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z23bb_audio_SetAudioDeviceP9gxtkAudio
	movl	$LC366, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2246
	call	__Z8dbg_stopv
L2246:
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
	movl	$LC367, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2247
	call	__Z8dbg_stopv
L2247:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	$1, -92(%ebp)
	call	__Z23bb_input_SetInputDeviceP13c_InputDevice
	movl	$LC368, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2248
	call	__Z8dbg_stopv
L2248:
	movl	$0, (%esp)
	movl	$1, -92(%ebp)
	call	__Z27bb_app_ValidateDeviceWindowb
	movl	$LC369, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2249
	call	__Z8dbg_stopv
L2249:
	movl	$1, -92(%ebp)
	call	__Z23bb_app_EnumDisplayModesv
	movl	$LC370, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2250
	call	__Z8dbg_stopv
L2250:
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
	jmp	L2260
L2257:
	movl	%edx, -104(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-104(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2252
L2258:
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2252
L2259:
	movl	%edx, -100(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2252
L2255:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L2256
	subl	$1, %eax
	testl	%eax, %eax
	je	L2257
	subl	$1, %eax
	testl	%eax, %eax
	je	L2258
	subl	$1, %eax
	testl	%eax, %eax
	je	L2259
	subl	$1, %eax
		.word	0x0b0f
L2256:
	movl	%edx, -100(%ebp)
L2252:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2260:
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
LLSDA1156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1156-LLSDACSB1156
LLSDACSB1156:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1156:
	.text
	.section .rdata,"dr"
LC371:
	.ascii "GameDelegate.SuspendGame\0"
	.align 4
LC372:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<93>\0"
	.align 4
LC373:
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
	movl	$LLSDA1157, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2265, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC371, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC372, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2262
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2262:
	movl	_bb_app__app, %eax
	movl	%eax, %ecx
	call	__ZN5c_App11p_OnSuspendEv
	movl	$LC373, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2263
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2263:
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
	jmp	L2267
L2265:
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
L2267:
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
LLSDA1157:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1157-LLSDACSB1157
LLSDACSB1157:
	.uleb128 0
	.uleb128 0
LLSDACSE1157:
	.text
	.section .rdata,"dr"
LC374:
	.ascii "GameDelegate.ResumeGame\0"
	.align 4
LC375:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<98>\0"
	.align 4
LC376:
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
	movl	$LLSDA1158, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2272, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC374, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC375, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2269
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2269:
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
	movl	$LC376, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2270
	call	__Z8dbg_stopv
L2270:
	movl	_bb_app__app, %eax
	movl	%eax, %ecx
	call	__ZN5c_App10p_OnResumeEv
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2274
L2272:
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
L2274:
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
LLSDACSE1158:
	.text
	.section .rdata,"dr"
LC377:
	.ascii "GameDelegate.UpdateGame\0"
	.align 4
LC378:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<103>\0"
	.align 4
LC379:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<104>\0"
	.align 4
LC380:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<105>\0"
	.align 4
LC381:
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
	movl	$LLSDA1159, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2281, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC377, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC378, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2276
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2276:
	movl	$1, (%esp)
	movl	$1, -92(%ebp)
	call	__Z27bb_app_ValidateDeviceWindowb
	movl	$LC379, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2277
	call	__Z8dbg_stopv
L2277:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice13p_BeginUpdateEv
	movl	$LC380, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2278
	call	__Z8dbg_stopv
L2278:
	movl	_bb_app__app, %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	_bb_app__app, %edx
	movl	$1, -92(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	$LC381, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2279
	call	__Z8dbg_stopv
L2279:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, -92(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice11p_EndUpdateEv
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2283
L2281:
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
L2283:
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
LC382:
	.ascii "GameDelegate.RenderGame\0"
	.align 4
LC383:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<110>\0"
	.align 4
LC384:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<111>\0"
LC385:
	.ascii "mode\0"
	.align 4
LC386:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<112>\0"
	.align 4
LC387:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<113>\0"
	.align 4
LC388:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<114>\0"
	.align 4
LC389:
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
	movl	$LLSDA1160, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2299, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC382, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC383, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2285
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2285:
	movl	$1, (%esp)
	movl	$1, -124(%ebp)
	call	__Z27bb_app_ValidateDeviceWindowb
	movl	$LC384, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2286
	call	__Z8dbg_stopv
L2286:
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
	movl	$LC385, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC386, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2287
	call	__Z8dbg_stopv
L2287:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	L2288
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$2, -124(%ebp)
	call	__Z23bb_graphics_BeginRenderv
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2288:
	movl	$LC387, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2289
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2289:
	movl	-44(%ebp), %eax
	cmpl	$2, %eax
	jne	L2290
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	_bb_app__app, %eax
	movl	%eax, %ecx
	call	__ZN5c_App11p_OnLoadingEv
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2291
L2290:
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
L2291:
	movl	$LC388, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2292
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2292:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	L2293
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$4, -124(%ebp)
	call	__Z21bb_graphics_EndRenderv
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2293:
	movl	$LC389, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2294
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2294:
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
	jmp	L2304
L2301:
	movl	%edx, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2296
L2302:
	movl	%edx, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2296
L2303:
	movl	%edx, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2296
L2299:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L2300
	subl	$1, %eax
	testl	%eax, %eax
	je	L2301
	subl	$1, %eax
	testl	%eax, %eax
	je	L2302
	subl	$1, %eax
	testl	%eax, %eax
	je	L2303
	subl	$1, %eax
		.word	0x0b0f
L2300:
	movl	%edx, -132(%ebp)
L2296:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L2304:
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
LLSDA1160:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1160-LLSDACSB1160
LLSDACSB1160:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1160:
	.text
	.section .rdata,"dr"
LC390:
	.ascii "GameDelegate.KeyEvent\0"
LC391:
	.ascii "event\0"
	.align 4
LC392:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<119>\0"
	.align 4
LC393:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<120>\0"
	.align 4
LC394:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<121>\0"
	.align 4
LC395:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<122>\0"
	.align 4
LC396:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<123>\0"
	.align 4
LC397:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<124>\0"
	.align 4
LC398:
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
	movl	$LLSDA1161, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2325, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC390, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC391, (%eax)
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
	movl	$LC41, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC392, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2306
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2306:
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
	movl	$LC393, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2307
	call	__Z8dbg_stopv
L2307:
	movl	8(%ebp), %eax
	cmpl	$1, %eax
	je	L2308
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -132(%ebp)
	jmp	L2309
L2308:
	movl	$LC394, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2310
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2310:
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
	movl	$LC273, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC395, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2311
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2311:
	movl	-44(%ebp), %eax
	cmpl	$432, %eax
	jne	L2312
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC396, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2313
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L2313:
	movl	_bb_app__app, %eax
	movl	$2, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_App9p_OnCloseEv
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2314
L2312:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC397, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2315
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L2315:
	movl	-44(%ebp), %eax
	cmpl	$416, %eax
	jne	L2316
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC398, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2317
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L2317:
	movl	_bb_app__app, %eax
	movl	$4, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_App8p_OnBackEv
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2316:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2314:
	movl	$1, -132(%ebp)
L2309:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -132(%ebp)
	je	L2331
	jmp	L2305
L2331:
	nop
	jmp	L2305
L2327:
	movl	%edx, -132(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2322
L2329:
	movl	%edx, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2324
L2328:
	movl	%edx, -132(%ebp)
L2324:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2322
L2325:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L2326
	subl	$1, %eax
	testl	%eax, %eax
	je	L2327
	subl	$1, %eax
	testl	%eax, %eax
	je	L2328
	subl	$1, %eax
	testl	%eax, %eax
	je	L2329
	subl	$1, %eax
		.word	0x0b0f
L2326:
	movl	%edx, -132(%ebp)
L2322:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L2305:
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
LLSDA1161:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1161-LLSDACSB1161
LLSDACSB1161:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1161:
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
LC399:
	.ascii "GameDelegate.MouseEvent\0"
	.align 4
LC400:
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
	movl	$LLSDA1162, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %edi
	movl	%edi, (%eax)
	movl	$L2336, %edx
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
	movl	$LC105, (%eax)
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
	movl	$LC391, (%eax)
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
	movl	$LC41, (%eax)
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
	movl	$LC209, (%eax)
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
	movl	$LC210, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC400, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2334
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2334:
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
	jmp	L2338
L2336:
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
L2338:
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
LLSDA1162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1162-LLSDACSB1162
LLSDACSB1162:
	.uleb128 0
	.uleb128 0
LLSDACSE1162:
	.text
	.section .rdata,"dr"
LC401:
	.ascii "GameDelegate.TouchEvent\0"
	.align 4
LC402:
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
	movl	$LLSDA1166, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %edi
	movl	%edi, (%eax)
	movl	$L2342, %edx
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
	movl	$LC105, (%eax)
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
	movl	$LC391, (%eax)
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
	movl	$LC41, (%eax)
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
	movl	$LC209, (%eax)
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
	movl	$LC210, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC402, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2340
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2340:
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
	jmp	L2344
L2342:
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
L2344:
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
LLSDA1166:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1166-LLSDACSB1166
LLSDACSB1166:
	.uleb128 0
	.uleb128 0
LLSDACSE1166:
	.text
	.section .rdata,"dr"
LC403:
	.ascii "GameDelegate.MotionEvent\0"
LC404:
	.ascii "z\0"
	.align 4
LC405:
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
	movl	$LLSDA1167, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L2348, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC403, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC391, (%eax)
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
	movl	$LC41, (%eax)
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
	movl	$LC209, (%eax)
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
	movl	$LC210, (%eax)
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
	movl	$LC404, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC405, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2346
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2346:
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
	jmp	L2350
L2348:
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
L2350:
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
LLSDA1167:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1167-LLSDACSB1167
LLSDACSB1167:
	.uleb128 0
	.uleb128 0
LLSDACSE1167:
	.text
	.section .rdata,"dr"
LC406:
	.ascii "GameDelegate.DiscardGraphics\0"
	.align 4
LC407:
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
	movl	$LLSDA1168, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2354, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC406, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP14c_GameDelegateE4infoE, (%eax)
	movl	$LC407, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2352
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2352:
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
	jmp	L2356
L2354:
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
L2356:
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
LC408:
	.ascii "(GameDelegate)\12\0"
LC409:
	.ascii "_graphics\0"
LC410:
	.ascii "_audio\0"
LC411:
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
	movl	$LLSDA1170, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2364, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC408, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC409, 4(%esp)
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
	movl	$LC410, 4(%esp)
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
	movl	$LC411, 4(%esp)
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
	jmp	L2369
L2366:
	movl	%edx, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2361
L2367:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2361
L2368:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2361
L2364:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L2365
	subl	$1, %eax
	testl	%eax, %eax
	je	L2366
	subl	$1, %eax
	testl	%eax, %eax
	je	L2367
	subl	$1, %eax
	testl	%eax, %eax
	je	L2368
	subl	$1, %eax
		.word	0x0b0f
L2365:
	movl	%edx, -100(%ebp)
L2361:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2369:
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
LLSDA1170:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1170-LLSDACSB1170
LLSDACSB1170:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1170:
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
LC412:
	.ascii "Main\0"
	.align 4
LC413:
	.ascii "C:/Users/N/Desktop/Current Version/Test.monkey<15>\0"
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
	movl	$LLSDA1171, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2375, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC412, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	$LC413, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2371
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L2371:
	movl	$100, (%esp)
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
	jmp	L2378
L2377:
	movl	%edx, -100(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-100(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L2374
L2375:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %edx
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	L2376
	subl	$1, %eax
	testl	%eax, %eax
	je	L2377
	subl	$1, %eax
		.word	0x0b0f
L2376:
	movl	%edx, -96(%ebp)
L2374:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L2378:
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
LLSDA1171:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1171-LLSDACSB1171
LLSDACSB1171:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1171:
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
LC414:
	.ascii "SetGraphicsDevice\0"
LC415:
	.ascii "dev\0"
	.align 4
LC416:
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
	movl	$LLSDA1172, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2384, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC414, (%esp)
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
	movl	$LC415, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP12gxtkGraphicsE4infoE, (%eax)
	movl	$LC416, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2381
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L2381:
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
	jmp	L2386
L2384:
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
L2386:
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
LLSDA1172:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1172-LLSDACSB1172
LLSDACSB1172:
	.uleb128 0
	.uleb128 0
LLSDACSE1172:
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
	movl	LC45, %eax
	movl	%eax, 36(%edx)
	movl	-28(%ebp), %edx
	movl	LC45, %eax
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
LC417:
	.ascii "Image.new\0"
	.align 4
LC418:
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
	movl	$LLSDA1179, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2392, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC417, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	$LC418, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2389
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2389:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2394
L2392:
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
L2394:
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
LLSDA1179:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1179-LLSDACSB1179
LLSDACSB1179:
	.uleb128 0
	.uleb128 0
LLSDACSE1179:
	.text
	.section .rdata,"dr"
LC419:
	.ascii "Image.SetHandle\0"
LC420:
	.ascii "tx\0"
LC421:
	.ascii "ty\0"
	.align 4
LC422:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<114>\0"
	.align 4
LC423:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<115>\0"
	.align 4
LC424:
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
	movl	$LLSDA1180, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2401, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC419, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC420, (%eax)
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
	movl	$LC421, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC422, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2396
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2396:
	movl	8(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 36(%edx)
	movl	$LC423, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2397
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2397:
	movl	12(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 40(%edx)
	movl	$LC424, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2398
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2398:
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
	jmp	L2403
L2401:
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
L2403:
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
LLSDA1180:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1180-LLSDACSB1180
LLSDACSB1180:
	.uleb128 0
	.uleb128 0
LLSDACSE1180:
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
LC425:
	.ascii "Image.ApplyFlags\0"
LC426:
	.ascii "iflags\0"
	.align 4
LC427:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<197>\0"
	.align 4
LC428:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<199>\0"
	.align 4
LC429:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<200>\0"
LC430:
	.ascii "f\0"
	.align 4
LC431:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<201>\0"
	.align 4
LC432:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<203>\0"
	.align 4
LC433:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<206>\0"
	.align 4
LC434:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<207>\0"
	.align 4
LC435:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<208>\0"
	.align 4
LC436:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<210>\0"
	.align 4
LC437:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<213>\0"
	.align 4
LC438:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<214>\0"
	.align 4
LC439:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<217>\0"
	.align 4
LC440:
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
	movl	$LLSDA1181, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2439, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-44(%ebp), %eax
	movl	$LC425, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC426, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC427, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2406
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2406:
	movl	8(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	$LC428, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2407
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2407:
	movl	-92(%ebp), %eax
	movl	32(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L2408
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC429, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2409
	movl	$2, -140(%ebp)
	call	__Z8dbg_stopv
L2409:
	movl	-92(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	$0, -28(%ebp)
	jmp	L2410
L2412:
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
	movl	$LC430, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_FrameE4infoE, (%eax)
	movl	$LC431, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2411
	call	__Z8dbg_stopv
L2411:
	movl	-64(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	16(%edx), %edx
	addl	$1, %edx
	movl	%edx, 16(%eax)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2410:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIP7c_FrameE6LengthEv
	cmpl	-28(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	L2412
	movl	$LC432, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2413
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L2413:
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
L2408:
	movl	$LC433, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2414
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2414:
	movl	-92(%ebp), %eax
	movl	32(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	L2415
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC434, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2416
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L2416:
	movl	-92(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	$0, -32(%ebp)
	jmp	L2417
L2419:
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
	movl	$LC430, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_FrameE4infoE, (%eax)
	movl	$LC435, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2418
	call	__Z8dbg_stopv
L2418:
	movl	-80(%ebp), %eax
	movl	-80(%ebp), %edx
	movl	20(%edx), %edx
	addl	$1, %edx
	movl	%edx, 20(%eax)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2417:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIP7c_FrameE6LengthEv
	cmpl	-32(%ebp), %eax
	setg	%al
	testb	%al, %al
	jne	L2419
	movl	$LC436, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2420
	movl	$7, -140(%ebp)
	call	__Z8dbg_stopv
L2420:
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
L2415:
	movl	$LC437, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2421
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2421:
	movl	-92(%ebp), %eax
	movl	32(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L2422
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC438, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2423
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L2423:
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -148(%ebp)
	fildl	-148(%ebp)
	flds	LC47
	fdivrp	%st, %st(1)
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -148(%ebp)
	fildl	-148(%ebp)
	flds	LC47
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
L2422:
	movl	$LC439, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2424
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2424:
	movl	-92(%ebp), %eax
	addl	$28, %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIP7c_FrameE6LengthEv
	cmpl	$1, %eax
	jne	L2425
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
	jne	L2425
	movl	-92(%ebp), %eax
	addl	$28, %eax
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L2425
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
	jne	L2425
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
	jne	L2425
	movl	$1, %eax
	jmp	L2426
L2425:
	movl	$0, %eax
L2426:
	testb	%al, %al
	je	L2427
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC440, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2428
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L2428:
	movl	-92(%ebp), %eax
	movl	32(%eax), %eax
	orl	$65536, %eax
	movl	%eax, %edx
	movl	-92(%ebp), %eax
	movl	%edx, 32(%eax)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2427:
	movl	$0, -152(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2451
L2442:
	movl	%eax, -152(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2431
L2443:
	movl	%eax, -152(%ebp)
L2431:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2432
L2441:
	movl	%eax, -152(%ebp)
L2432:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2433
L2445:
	movl	%eax, -152(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2435
L2446:
	movl	%eax, -152(%ebp)
L2435:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2436
L2444:
	movl	%eax, -152(%ebp)
L2436:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2433
L2447:
	movl	%eax, -152(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2433
L2448:
	movl	%eax, -152(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L2433
L2439:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %eax
	cmpl	$8, -140(%ebp)
	ja	L2449
	movl	-140(%ebp), %edx
	sall	$2, %edx
	addl	$L2450, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2450:
	.long	L2440
	.long	L2441
	.long	L2442
	.long	L2443
	.long	L2444
	.long	L2445
	.long	L2446
	.long	L2447
	.long	L2448
	.text
L2449:
		.word	0x0b0f
L2440:
	movl	%eax, -152(%ebp)
L2433:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L2451:
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
LLSDA1181:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1181-LLSDACSB1181
LLSDACSB1181:
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
LLSDACSE1181:
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
LC441:
	.ascii "Image.Init\0"
LC442:
	.ascii "surf\0"
LC443:
	.ascii "nframes\0"
	.align 4
LC444:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<143>\0"
	.align 4
LC445:
	.ascii "I\0m\0a\0g\0e\0 \0a\0l\0r\0e\0a\0d\0y\0 \0i\0n\0i\0t\0i\0a\0l\0i\0z\0e\0d\0\0\0"
	.align 4
LC446:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<144>\0"
	.align 4
LC447:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<146>\0"
	.align 4
LC448:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<147>\0"
	.align 4
LC449:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<149>\0"
	.align 4
LC450:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<150>\0"
LC451:
	.ascii "i\0"
	.align 4
LC452:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<151>\0"
	.align 4
LC453:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<154>\0"
	.align 4
LC454:
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
	movl	$LLSDA1185, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2472, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-44(%ebp), %eax
	movl	$LC441, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC442, (%eax)
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
	movl	$LC443, (%eax)
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
	movl	$LC426, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC444, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2454
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2454:
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L2455
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-32(%ebp), %eax
	movl	$25, 4(%esp)
	movl	$LC445, (%esp)
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
L2455:
	movl	$LC446, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2456
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2456:
	movl	8(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI11gxtkSurfaceS0_EvRPT_PT0_
	movl	$LC447, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2457
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2457:
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
	movl	$LC448, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2458
	call	__Z8dbg_stopv
L2458:
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
	movl	$LC449, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2459
	call	__Z8dbg_stopv
L2459:
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
	movl	$LC450, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2460
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2460:
	movl	$0, -56(%ebp)
	jmp	L2461
L2463:
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
	movl	$LC451, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC452, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2462
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L2462:
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
L2461:
	movl	-56(%ebp), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	jl	L2463
	movl	$LC453, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2464
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2464:
	movl	16(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -124(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image12p_ApplyFlagsEi
	subl	$4, %esp
	movl	$LC454, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2465
	call	__Z8dbg_stopv
L2465:
	movl	-76(%ebp), %eax
	movl	%eax, -132(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2478
L2474:
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
	jmp	L2468
L2475:
	movl	%edx, -132(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2468
L2477:
	movl	%edx, -136(%ebp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-136(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2471
L2476:
	movl	%edx, -132(%ebp)
L2471:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2468
L2472:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L2473
	subl	$1, %eax
	testl	%eax, %eax
	je	L2474
	subl	$1, %eax
	testl	%eax, %eax
	je	L2475
	subl	$1, %eax
	testl	%eax, %eax
	je	L2476
	subl	$1, %eax
	testl	%eax, %eax
	je	L2477
	subl	$1, %eax
		.word	0x0b0f
L2473:
	movl	%edx, -132(%ebp)
L2468:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L2478:
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
LLSDA1185:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1185-LLSDACSB1185
LLSDACSB1185:
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
LLSDACSE1185:
	.text
	.section .rdata,"dr"
LC455:
	.ascii "iwidth\0"
LC456:
	.ascii "iheight\0"
LC457:
	.ascii "src\0"
LC458:
	.ascii "srcx\0"
LC459:
	.ascii "srcy\0"
LC460:
	.ascii "srcw\0"
LC461:
	.ascii "srch\0"
	.align 4
LC462:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<159>\0"
	.align 4
LC463:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<160>\0"
	.align 4
LC464:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<161>\0"
	.align 4
LC465:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<163>\0"
	.align 4
LC466:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<164>\0"
	.align 4
LC467:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<166>\0"
	.align 4
LC468:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<168>\0"
LC469:
	.ascii "ix\0"
LC470:
	.ascii "iy\0"
	.align 4
LC471:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<170>\0"
	.align 4
LC472:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<171>\0"
	.align 4
LC473:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<172>\0"
	.align 4
LC474:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<173>\0"
	.align 4
LC475:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<175>\0"
	.align 4
LC476:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<176>\0"
	.align 4
LC477:
	.ascii "I\0m\0a\0g\0e\0 \0f\0r\0a\0m\0e\0 \0o\0u\0t\0s\0i\0d\0e\0 \0s\0u\0r\0f\0a\0c\0e\0\0\0"
	.align 4
LC478:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<178>\0"
	.align 4
LC479:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<179>\0"
	.align 4
LC480:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<182>\0"
	.align 4
LC481:
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
	movl	$LLSDA1189, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2512, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-48(%ebp), %eax
	movl	$LC441, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC442, (%eax)
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
	movl	$LC209, (%eax)
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
	movl	$LC210, (%eax)
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
	movl	$LC455, (%eax)
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
	movl	$LC456, (%eax)
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
	movl	$LC443, (%eax)
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
	movl	$LC426, (%eax)
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
	movl	$LC457, (%eax)
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
	movl	$LC458, (%eax)
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
	movl	$LC459, (%eax)
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
	movl	$LC460, (%eax)
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
	movl	$LC461, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC462, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2480
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2480:
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L2481
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-36(%ebp), %eax
	movl	$25, 4(%esp)
	movl	$LC445, (%esp)
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
L2481:
	movl	$LC463, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2482
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2482:
	movl	8(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI11gxtkSurfaceS0_EvRPT_PT0_
	movl	$LC464, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2483
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2483:
	movl	36(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	$44, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC465, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2484
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2484:
	movl	20(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	$LC466, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2485
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2485:
	movl	24(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	$LC467, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2486
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2486:
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
	movl	$LC468, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2487
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2487:
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
	movl	$LC469, (%eax)
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
	movl	$LC470, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC471, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2488
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2488:
	movl	$0, -68(%ebp)
	jmp	L2489
L2500:
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
	movl	$LC451, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC472, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2490
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L2490:
	movl	-92(%ebp), %eax
	movl	20(%eax), %edx
	movl	-56(%ebp), %eax
	addl	%eax, %edx
	movl	48(%ebp), %eax
	cmpl	%eax, %edx
	jle	L2491
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC473, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2492
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L2492:
	movl	$0, -56(%ebp)
	movl	$LC474, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2493
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L2493:
	movl	-92(%ebp), %eax
	movl	24(%eax), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2491:
	movl	$LC475, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2494
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L2494:
	movl	-92(%ebp), %eax
	movl	20(%eax), %edx
	movl	-56(%ebp), %eax
	addl	%eax, %edx
	movl	48(%ebp), %eax
	cmpl	%eax, %edx
	jg	L2495
	movl	-92(%ebp), %eax
	movl	24(%eax), %edx
	movl	-60(%ebp), %eax
	addl	%eax, %edx
	movl	52(%ebp), %eax
	cmpl	%eax, %edx
	jle	L2496
L2495:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC476, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2497
	movl	$6, -140(%ebp)
	call	__Z8dbg_stopv
L2497:
	leal	-28(%ebp), %eax
	movl	$27, 4(%esp)
	movl	$LC477, (%esp)
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
L2496:
	movl	$LC478, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2498
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L2498:
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
	movl	$LC479, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2499
	call	__Z8dbg_stopv
L2499:
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
L2489:
	movl	-68(%ebp), %edx
	movl	28(%ebp), %eax
	cmpl	%eax, %edx
	jl	L2500
	movl	$LC480, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2501
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L2501:
	movl	32(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%edx, (%esp)
	movl	$1, -140(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Image12p_ApplyFlagsEi
	subl	$4, %esp
	movl	$LC481, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2502
	call	__Z8dbg_stopv
L2502:
	movl	-92(%ebp), %eax
	movl	%eax, -148(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2523
L2514:
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
	jmp	L2505
L2515:
	movl	%eax, -148(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP7c_FrameED1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2505
L2517:
	movl	%eax, -148(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2508
L2519:
	movl	%eax, -148(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2510
L2518:
	movl	%eax, -148(%ebp)
L2510:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2508
L2520:
	movl	%eax, -152(%ebp)
	movl	-148(%ebp), %ebx
	movl	%ebx, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-152(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2508
L2516:
	movl	%eax, -148(%ebp)
L2508:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L2505
L2512:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %eax
	cmpl	$7, -140(%ebp)
	ja	L2521
	movl	-140(%ebp), %edx
	sall	$2, %edx
	addl	$L2522, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2522:
	.long	L2513
	.long	L2514
	.long	L2515
	.long	L2516
	.long	L2517
	.long	L2518
	.long	L2519
	.long	L2520
	.text
L2521:
		.word	0x0b0f
L2513:
	movl	%eax, -148(%ebp)
L2505:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L2523:
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
LLSDA1189:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1189-LLSDACSB1189
LLSDACSB1189:
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
LLSDACSE1189:
	.text
	.section .rdata,"dr"
LC482:
	.ascii "Image.GrabImage\0"
LC483:
	.ascii "width\0"
LC484:
	.ascii "height\0"
LC485:
	.ascii "flags\0"
	.align 4
LC486:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<109>\0"
	.align 4
LC487:
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
	movl	$LLSDA1190, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2531, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC482, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC209, (%eax)
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
	movl	$LC210, (%eax)
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
	movl	$LC483, (%eax)
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
	movl	$LC484, (%eax)
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
	movl	$LC443, (%eax)
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
	movl	$LC485, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC486, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2525
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2525:
	movl	-60(%ebp), %eax
	addl	$28, %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIP7c_FrameE6LengthEv
	cmpl	$1, %eax
	setne	%al
	testb	%al, %al
	je	L2526
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$0, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2527
L2526:
	movl	$LC487, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2528
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2528:
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
L2527:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2533
L2531:
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
L2533:
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
LLSDA1190:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1190-LLSDACSB1190
LLSDACSB1190:
	.uleb128 0
	.uleb128 0
LLSDACSE1190:
	.text
	.section .rdata,"dr"
LC488:
	.ascii "Image.Frames\0"
	.align 4
LC489:
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
	movl	$LLSDA1191, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2538, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC488, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_ImageE4infoE, (%eax)
	movl	$LC489, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2535
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2535:
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
	jmp	L2540
L2538:
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
L2540:
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
LLSDA1191:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1191-LLSDACSB1191
LLSDACSB1191:
	.uleb128 0
	.uleb128 0
LLSDACSE1191:
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
	movl	$LLSDA1192, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2543, %edx
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
	jmp	L2545
L2543:
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
L2545:
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
LC490:
	.ascii "(Image)\12\0"
LC491:
	.ascii "DefaultFlags\0"
LC492:
	.ascii "source\0"
LC493:
	.ascii "surface\0"
LC494:
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
	movl	$LLSDA1193, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2558, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-76(%ebp), %eax
	movl	$LC490, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	leal	-60(%ebp), %eax
	movl	$__ZN7c_Image14m_DefaultFlagsE, 8(%esp)
	movl	$LC491, 4(%esp)
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
	movl	$LC492, 4(%esp)
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
	movl	$LC493, 4(%esp)
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
	movl	$LC483, 4(%esp)
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
	movl	$LC484, 4(%esp)
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
	movl	$LC485, 4(%esp)
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
	movl	$LC494, 4(%esp)
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
	movl	$LC420, 4(%esp)
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
	movl	$LC421, 4(%esp)
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
	jmp	L2571
L2560:
	movl	%eax, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2549
L2561:
	movl	%eax, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2549
L2562:
	movl	%eax, -132(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2549
L2563:
	movl	%eax, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2549
L2564:
	movl	%eax, -132(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2549
L2565:
	movl	%eax, -132(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2549
L2566:
	movl	%eax, -132(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2549
L2567:
	movl	%eax, -132(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2549
L2568:
	movl	%eax, -132(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2549
L2558:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
	cmpl	$9, -124(%ebp)
	ja	L2569
	movl	-124(%ebp), %edx
	sall	$2, %edx
	addl	$L2570, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2570:
	.long	L2559
	.long	L2560
	.long	L2561
	.long	L2562
	.long	L2563
	.long	L2564
	.long	L2565
	.long	L2566
	.long	L2567
	.long	L2568
	.text
L2569:
		.word	0x0b0f
L2559:
	movl	%eax, -132(%ebp)
L2549:
	movl	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L2571:
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
LLSDA1193:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1193-LLSDACSB1193
LLSDACSB1193:
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
LLSDACSE1193:
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
	movl	$LLSDA1195, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2574, %edx
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
	movl	LC46, %eax
	movl	%eax, 32(%edx)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 36(%edx)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 40(%edx)
	movl	-44(%ebp), %edx
	movl	LC46, %eax
	movl	%eax, 44(%edx)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 48(%edx)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 52(%edx)
	movl	-44(%ebp), %eax
	movl	$0, 56(%eax)
	movl	-44(%ebp), %eax
	movl	$0, 60(%eax)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 64(%edx)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 68(%edx)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 72(%edx)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 76(%edx)
	movl	-44(%ebp), %eax
	movl	$0, 80(%eax)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 84(%edx)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 88(%edx)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 92(%edx)
	movl	-44(%ebp), %edx
	movl	LC45, %eax
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
	jmp	L2576
L2574:
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
L2576:
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
LC495:
	.ascii "GraphicsContext.new\0"
	.align 4
LC496:
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
	movl	$LLSDA1197, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2582, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC495, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP17c_GraphicsContextE4infoE, (%eax)
	movl	$LC496, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2579
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2579:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2584
L2582:
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
L2584:
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
LLSDA1197:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1197-LLSDACSB1197
LLSDACSB1197:
	.uleb128 0
	.uleb128 0
LLSDACSE1197:
	.text
	.section .rdata,"dr"
LC497:
	.ascii "GraphicsContext.Validate\0"
	.align 4
LC498:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<40>\0"
	.align 4
LC499:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<41>\0"
	.align 4
LC500:
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
	movl	$LLSDA1201, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2593, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC497, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP17c_GraphicsContextE4infoE, (%eax)
	movl	$LC498, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2586
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2586:
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L2587
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC499, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2588
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L2588:
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
	movl	$LC500, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2589
	call	__Z8dbg_stopv
L2589:
	movl	-60(%ebp), %eax
	movl	$0, 60(%eax)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2587:
	movl	$0, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2596
L2595:
	movl	%edx, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2592
L2593:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L2594
	subl	$1, %eax
	testl	%eax, %eax
	je	L2595
	subl	$1, %eax
		.word	0x0b0f
L2594:
	movl	%edx, -116(%ebp)
L2592:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L2596:
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
LLSDA1201:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1201-LLSDACSB1201
LLSDACSB1201:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1201:
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
	movl	$LLSDA1202, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2599, %edx
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
	jmp	L2601
L2599:
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
L2601:
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
LLSDA1202:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1202-LLSDACSB1202
LLSDACSB1202:
	.uleb128 0
	.uleb128 0
LLSDACSE1202:
	.text
	.section .rdata,"dr"
LC501:
	.ascii "(GraphicsContext)\12\0"
LC502:
	.ascii "color_r\0"
LC503:
	.ascii "color_g\0"
LC504:
	.ascii "color_b\0"
LC505:
	.ascii "alpha\0"
LC506:
	.ascii "blend\0"
LC507:
	.ascii "jx\0"
LC508:
	.ascii "jy\0"
LC509:
	.ascii "tformed\0"
LC510:
	.ascii "matDirty\0"
LC511:
	.ascii "scissor_x\0"
LC512:
	.ascii "scissor_y\0"
LC513:
	.ascii "scissor_width\0"
LC514:
	.ascii "scissor_height\0"
LC515:
	.ascii "matrixStack\0"
LC516:
	.ascii "matrixSp\0"
LC517:
	.ascii "font\0"
LC518:
	.ascii "firstChar\0"
LC519:
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
	movl	$LLSDA1203, -148(%ebp)
	leal	-144(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2627, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-124(%ebp), %eax
	movl	$LC501, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	64(%eax), %edx
	leal	-112(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC502, 4(%esp)
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
	movl	$LC503, 4(%esp)
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
	movl	$LC504, 4(%esp)
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
	movl	$LC505, 4(%esp)
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
	movl	$LC506, 4(%esp)
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
	movl	$LC469, 4(%esp)
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
	movl	$LC470, 4(%esp)
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
	movl	$LC507, 4(%esp)
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
	movl	$LC508, 4(%esp)
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
	movl	$LC420, 4(%esp)
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
	movl	$LC421, 4(%esp)
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
	movl	$LC509, 4(%esp)
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
	movl	$LC510, 4(%esp)
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
	movl	$LC511, 4(%esp)
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
	movl	$LC512, 4(%esp)
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
	movl	$LC513, 4(%esp)
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
	movl	$LC514, 4(%esp)
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
	movl	$LC515, 4(%esp)
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
	movl	$LC516, 4(%esp)
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
	movl	$LC517, 4(%esp)
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
	movl	$LC518, 4(%esp)
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
	movl	$LC519, 4(%esp)
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
	jmp	L2653
L2629:
	movl	%eax, -180(%ebp)
	leal	-112(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2630:
	movl	%eax, -180(%ebp)
	leal	-108(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2631:
	movl	%eax, -180(%ebp)
	leal	-104(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2632:
	movl	%eax, -180(%ebp)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2633:
	movl	%eax, -180(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2634:
	movl	%eax, -180(%ebp)
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2635:
	movl	%eax, -180(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2636:
	movl	%eax, -180(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2637:
	movl	%eax, -180(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2638:
	movl	%eax, -180(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2639:
	movl	%eax, -180(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2640:
	movl	%eax, -180(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2641:
	movl	%eax, -180(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2642:
	movl	%eax, -180(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2643:
	movl	%eax, -180(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2644:
	movl	%eax, -180(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2645:
	movl	%eax, -180(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2646:
	movl	%eax, -180(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2647:
	movl	%eax, -180(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2648:
	movl	%eax, -180(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2649:
	movl	%eax, -180(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2650:
	movl	%eax, -180(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	L2605
L2627:
	leal	24(%ebp), %ebp
	movl	-168(%ebp), %eax
	cmpl	$22, -172(%ebp)
	ja	L2651
	movl	-172(%ebp), %edx
	sall	$2, %edx
	addl	$L2652, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2652:
	.long	L2628
	.long	L2629
	.long	L2630
	.long	L2631
	.long	L2632
	.long	L2633
	.long	L2634
	.long	L2635
	.long	L2636
	.long	L2637
	.long	L2638
	.long	L2639
	.long	L2640
	.long	L2641
	.long	L2642
	.long	L2643
	.long	L2644
	.long	L2645
	.long	L2646
	.long	L2647
	.long	L2648
	.long	L2649
	.long	L2650
	.text
L2651:
		.word	0x0b0f
L2628:
	movl	%eax, -180(%ebp)
L2605:
	movl	-124(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -172(%ebp)
	call	__Unwind_SjLj_Resume
L2653:
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
LLSDA1203:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1203-LLSDACSB1203
LLSDACSB1203:
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
LLSDACSE1203:
	.text
	.globl	_bb_graphics_context
	.bss
	.align 4
_bb_graphics_context:
	.space 4
	.section .rdata,"dr"
LC520:
	.ascii "FixDataPath\0"
LC521:
	.ascii "path\0"
	.align 4
LC522:
	.ascii "C:/MonkeyXFree84f/modules/mojo/data.monkey<7>\0"
	.align 2
LC523:
	.ascii ":\0/\0\0\0"
	.align 4
LC524:
	.ascii "C:/MonkeyXFree84f/modules/mojo/data.monkey<8>\0"
	.align 2
LC525:
	.ascii "/\0\0\0"
	.align 4
LC526:
	.ascii "C:/MonkeyXFree84f/modules/mojo/data.monkey<9>\0"
	.align 2
LC527:
	.ascii ".\0/\0\0\0"
	.align 4
LC528:
	.ascii "C:/MonkeyXFree84f/modules/mojo/data.monkey<10>\0"
	.align 2
LC529:
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
	movl	$LLSDA1204, -96(%ebp)
	leal	-92(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2672, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-56(%ebp), %eax
	movl	$LC520, (%esp)
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
	movl	$LC521, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI6StringE4infoE, (%eax)
	movl	$LC522, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2655
	movl	$1, -120(%ebp)
	call	__Z8dbg_stopv
L2655:
	leal	-44(%ebp), %eax
	movl	$2, 4(%esp)
	movl	$LC523, (%esp)
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
	movl	$LC451, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC524, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2656
	movl	$1, -120(%ebp)
	call	__Z8dbg_stopv
L2656:
	movb	$0, -128(%ebp)
	movl	-60(%ebp), %eax
	cmpl	$-1, %eax
	je	L2657
	leal	-40(%ebp), %eax
	movl	$1, 4(%esp)
	movl	$LC525, (%esp)
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
	jne	L2657
	movl	$1, %eax
	jmp	L2658
L2657:
	movl	$0, %eax
L2658:
	movb	%al, -129(%ebp)
	cmpb	$0, -128(%ebp)
	je	L2659
	nop
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L2659:
	cmpb	$0, -129(%ebp)
	je	L2660
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
	jmp	L2661
L2660:
	movl	$LC526, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2662
	movl	$1, -120(%ebp)
	call	__Z8dbg_stopv
L2662:
	movb	$0, -128(%ebp)
	leal	-36(%ebp), %eax
	movl	$2, 4(%esp)
	movl	$LC527, (%esp)
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
	jne	L2663
	leal	-32(%ebp), %eax
	movl	$1, 4(%esp)
	movl	$LC525, (%esp)
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
	je	L2664
L2663:
	movl	$1, %eax
	jmp	L2665
L2664:
	movl	$0, %eax
L2665:
	movb	%al, -130(%ebp)
	cmpb	$0, -128(%ebp)
	je	L2666
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L2666:
	cmpb	$0, -129(%ebp)
	je	L2667
	nop
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
L2667:
	cmpb	$0, -130(%ebp)
	je	L2668
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
	jmp	L2661
L2668:
	movl	$LC528, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2669
	movl	$1, -120(%ebp)
	call	__Z8dbg_stopv
L2669:
	leal	-28(%ebp), %eax
	movl	$14, 4(%esp)
	movl	$LC529, (%esp)
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
L2661:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2674
L2672:
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
L2674:
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
LLSDA1204:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1204-LLSDACSB1204
LLSDACSB1204:
	.uleb128 0
	.uleb128 0
LLSDACSE1204:
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
LC530:
	.ascii "Frame.new\0"
	.align 4
LC531:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<23>\0"
	.align 4
LC532:
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
	movl	$LLSDA1208, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2681, %edx
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
	movl	$LC105, (%eax)
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
	movl	$LC209, (%eax)
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
	movl	$LC210, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC531, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2677
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2677:
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	$LC532, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2678
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2678:
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
	jmp	L2683
L2681:
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
L2683:
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
	.section .rdata,"dr"
	.align 4
LC533:
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
	movl	$LLSDA1209, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2688, %edx
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_FrameE4infoE, (%eax)
	movl	$LC533, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2685
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L2685:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2690
L2688:
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
L2690:
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
LLSDA1209:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1209-LLSDACSB1209
LLSDACSB1209:
	.uleb128 0
	.uleb128 0
LLSDACSE1209:
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
LC534:
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
	movl	$LLSDA1211, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2697, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC534, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC209, 4(%esp)
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
	movl	$LC210, 4(%esp)
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
	jmp	L2701
L2699:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2695
L2700:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2695
L2697:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L2698
	subl	$1, %eax
	testl	%eax, %eax
	je	L2699
	subl	$1, %eax
	testl	%eax, %eax
	je	L2700
	subl	$1, %eax
		.word	0x0b0f
L2698:
	movl	%edx, -100(%ebp)
L2695:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L2701:
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
LLSDA1211:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1211-LLSDACSB1211
LLSDACSB1211:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1211:
	.text
	.section .rdata,"dr"
LC535:
	.ascii "LoadImage\0"
LC536:
	.ascii "frameCount\0"
	.align 4
LC537:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<239>\0"
	.align 4
LC538:
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
	movl	$LLSDA1212, -80(%ebp)
	leal	-76(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2712, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-48(%ebp), %eax
	movl	$LC535, (%esp)
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
	movl	$LC521, (%eax)
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
	movl	$LC536, (%eax)
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
	movl	$LC485, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC537, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2703
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2703:
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
	movl	$LC442, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP11gxtkSurfaceE4infoE, (%eax)
	movl	$LC538, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2704
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2704:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	L2705
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
	jmp	L2706
L2705:
	movl	$0, -112(%ebp)
L2706:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2717
L2715:
	movl	%edx, -112(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2709
L2714:
	movl	%edx, -112(%ebp)
L2709:
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2710
L2716:
	movl	%edx, -112(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2710
L2712:
	leal	24(%ebp), %ebp
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	je	L2713
	subl	$1, %eax
	testl	%eax, %eax
	je	L2714
	subl	$1, %eax
	testl	%eax, %eax
	je	L2715
	subl	$1, %eax
	testl	%eax, %eax
	je	L2716
	subl	$1, %eax
		.word	0x0b0f
L2713:
	movl	%edx, -112(%ebp)
L2710:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -104(%ebp)
	call	__Unwind_SjLj_Resume
L2717:
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
LLSDA1212:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1212-LLSDACSB1212
LLSDACSB1212:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1212:
	.text
	.section .rdata,"dr"
LC539:
	.ascii "frameWidth\0"
LC540:
	.ascii "frameHeight\0"
	.align 4
LC541:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<244>\0"
	.align 4
LC542:
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
	movl	$LLSDA1213, -80(%ebp)
	leal	-76(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2728, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-48(%ebp), %eax
	movl	$LC535, (%esp)
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
	movl	$LC521, (%eax)
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
	movl	$LC539, (%eax)
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
	movl	$LC540, (%eax)
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
	movl	$LC536, (%eax)
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
	movl	$LC485, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC541, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2719
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2719:
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
	movl	$LC442, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP11gxtkSurfaceE4infoE, (%eax)
	movl	$LC542, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2720
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2720:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	L2721
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
	jmp	L2722
L2721:
	movl	$0, -112(%ebp)
L2722:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2733
L2731:
	movl	%edx, -112(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2725
L2730:
	movl	%edx, -112(%ebp)
L2725:
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2726
L2732:
	movl	%edx, -112(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2726
L2728:
	leal	24(%ebp), %ebp
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	je	L2729
	subl	$1, %eax
	testl	%eax, %eax
	je	L2730
	subl	$1, %eax
	testl	%eax, %eax
	je	L2731
	subl	$1, %eax
	testl	%eax, %eax
	je	L2732
	subl	$1, %eax
		.word	0x0b0f
L2729:
	movl	%edx, -112(%ebp)
L2726:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -104(%ebp)
	call	__Unwind_SjLj_Resume
L2733:
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
LLSDA1213:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1213-LLSDACSB1213
LLSDACSB1213:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1213:
	.text
	.section .rdata,"dr"
LC543:
	.ascii "SetFont\0"
	.align 4
LC544:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<548>\0"
	.align 4
LC545:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<549>\0"
	.align 4
LC546:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<550>\0"
	.align 2
LC547:
	.ascii "m\0o\0j\0o\0_\0f\0o\0n\0t\0.\0p\0n\0g\0\0\0"
	.align 4
LC548:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<552>\0"
	.align 4
LC549:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<553>\0"
	.align 4
LC550:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<555>\0"
	.align 4
LC551:
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
	movl	$LLSDA1214, -80(%ebp)
	leal	-76(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2749, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC543, (%esp)
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
	movl	$LC517, (%eax)
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
	movl	$LC518, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC544, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2735
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2735:
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jne	L2736
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC545, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2737
	movl	$2, -104(%ebp)
	call	__Z8dbg_stopv
L2737:
	movl	_bb_graphics_context, %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L2738
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC546, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2739
	movl	$3, -104(%ebp)
	call	__Z8dbg_stopv
L2739:
	leal	-28(%ebp), %eax
	movl	$13, 4(%esp)
	movl	$LC547, (%esp)
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
L2738:
	movl	$LC548, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2740
	movl	$2, -104(%ebp)
	call	__Z8dbg_stopv
L2740:
	movl	_bb_graphics_context, %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	$LC549, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2741
	movl	$2, -104(%ebp)
	call	__Z8dbg_stopv
L2741:
	movl	$32, 12(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2736:
	movl	$LC550, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2742
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2742:
	movl	8(%ebp), %eax
	movl	_bb_graphics_context, %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI7c_ImageS0_EvRPT_PT0_
	movl	$LC551, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2743
	movl	$1, -104(%ebp)
	call	__Z8dbg_stopv
L2743:
	movl	_bb_graphics_context, %eax
	movl	12(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	$0, -112(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2754
L2753:
	movl	%edx, -112(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2746
L2752:
	movl	%edx, -112(%ebp)
L2746:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2747
L2751:
	movl	%edx, -112(%ebp)
L2747:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	L2748
L2749:
	leal	24(%ebp), %ebp
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	je	L2750
	subl	$1, %eax
	testl	%eax, %eax
	je	L2751
	subl	$1, %eax
	testl	%eax, %eax
	je	L2752
	subl	$1, %eax
	testl	%eax, %eax
	je	L2753
	subl	$1, %eax
		.word	0x0b0f
L2750:
	movl	%edx, -112(%ebp)
L2748:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -104(%ebp)
	call	__Unwind_SjLj_Resume
L2754:
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
LLSDA1214:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1214-LLSDACSB1214
LLSDACSB1214:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1214:
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
LC552:
	.ascii "SetAudioDevice\0"
	.align 4
LC553:
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
	movl	$LLSDA1215, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2760, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC552, (%esp)
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
	movl	$LC415, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP9gxtkAudioE4infoE, (%eax)
	movl	$LC553, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2757
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L2757:
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
	jmp	L2762
L2760:
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
L2762:
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
LLSDA1215:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1215-LLSDACSB1215
LLSDACSB1215:
	.uleb128 0
	.uleb128 0
LLSDACSE1215:
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
	movl	$LLSDA1220, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2765, %edx
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
	movl	LC45, %eax
	movl	%eax, 48(%edx)
	movl	-60(%ebp), %edx
	movl	LC45, %eax
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
	movl	LC45, %eax
	movl	%eax, 64(%edx)
	movl	-60(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 68(%edx)
	movl	-60(%ebp), %edx
	movl	LC45, %eax
	movl	%eax, 72(%edx)
	jmp	L2767
L2765:
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
L2767:
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
LLSDA1220:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1220-LLSDACSB1220
LLSDACSB1220:
	.uleb128 0
	.uleb128 0
LLSDACSE1220:
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
LC554:
	.ascii "InputDevice.new\0"
	.align 4
LC555:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<26>\0"
	.align 4
LC556:
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
	movl	$LLSDA1222, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2778, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC554, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	$LC555, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2770
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2770:
	movl	$0, -44(%ebp)
	jmp	L2771
L2773:
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
	movl	$LC451, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC556, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2772
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L2772:
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
L2771:
	movl	-44(%ebp), %eax
	cmpl	$3, %eax
	jle	L2773
	movl	-60(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2782
L2781:
	movl	%edx, -120(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-120(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2776
L2780:
	movl	%edx, -116(%ebp)
L2776:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2777
L2778:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L2779
	subl	$1, %eax
	testl	%eax, %eax
	je	L2780
	subl	$1, %eax
	testl	%eax, %eax
	je	L2781
	subl	$1, %eax
		.word	0x0b0f
L2779:
	movl	%edx, -116(%ebp)
L2777:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L2782:
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
LLSDA1222:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1222-LLSDACSB1222
LLSDACSB1222:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1222:
	.text
	.section .rdata,"dr"
LC557:
	.ascii "InputDevice.PutKeyHit\0"
LC558:
	.ascii "key\0"
	.align 4
LC559:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<237>\0"
	.align 4
LC560:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<238>\0"
	.align 4
LC561:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<239>\0"
	.align 4
LC562:
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
	movl	$LLSDA1226, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2794, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC557, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC558, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC559, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2784
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2784:
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
	je	L2785
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -116(%ebp)
	jmp	L2786
L2785:
	movl	$LC560, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2787
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2787:
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
	movl	$LC561, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2788
	call	__Z8dbg_stopv
L2788:
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
	movl	$LC562, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2789
	call	__Z8dbg_stopv
L2789:
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	leal	1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	$1, -116(%ebp)
L2786:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -116(%ebp)
	je	L2797
	jmp	L2783
L2797:
	nop
	jmp	L2783
L2794:
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
L2783:
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
LLSDA1226:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1226-LLSDACSB1226
LLSDACSB1226:
	.uleb128 0
	.uleb128 0
LLSDACSE1226:
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
LC563:
	.ascii "InputDevice.BeginUpdate\0"
	.align 4
LC564:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<189>\0"
	.align 4
LC565:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<190>\0"
LC566:
	.ascii "state\0"
	.align 4
LC567:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<191>\0"
	.align 4
LC568:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<192>\0"
LC569:
	.ascii "j\0"
	.align 4
LC570:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<193>\0"
	.align 4
LC571:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<194>\0"
	.align 4
LC572:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<195>\0"
	.align 4
LC573:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<196>\0"
	.align 4
LC574:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<197>\0"
	.align 4
LC575:
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
	movl	$LLSDA1227, -132(%ebp)
	leal	-128(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L2829, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-52(%ebp), %eax
	movl	$LC563, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	$LC564, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2800
	movl	$1, -156(%ebp)
	call	__Z8dbg_stopv
L2800:
	movl	$0, -60(%ebp)
	jmp	L2801
L2821:
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
	movl	$LC451, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC565, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2802
	movl	$2, -156(%ebp)
	call	__Z8dbg_stopv
L2802:
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
	movl	$LC566, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_JoyStateE4infoE, (%eax)
	movl	$LC567, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2803
	call	__Z8dbg_stopv
L2803:
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
	je	L2804
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -164(%ebp)
	jmp	L2805
L2804:
	movl	$LC568, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2806
	movl	$2, -156(%ebp)
	call	__Z8dbg_stopv
L2806:
	movl	$0, -76(%ebp)
	jmp	L2807
L2817:
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
	movl	$LC569, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC570, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2808
	movl	$4, -156(%ebp)
	call	__Z8dbg_stopv
L2808:
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
	movl	$LC558, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC571, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2809
	movl	$4, -156(%ebp)
	call	__Z8dbg_stopv
L2809:
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
	je	L2810
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC572, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2811
	movl	$5, -156(%ebp)
	call	__Z8dbg_stopv
L2811:
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
	je	L2812
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC573, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2813
	movl	$6, -156(%ebp)
	call	__Z8dbg_stopv
L2813:
	movl	-84(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$20, %edx
	movl	%eax, (%esp)
	movl	$6, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$1, (%eax)
	movl	$LC574, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2814
	call	__Z8dbg_stopv
L2814:
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
L2812:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2815
L2810:
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC575, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2816
	movl	$7, -156(%ebp)
	call	__Z8dbg_stopv
L2816:
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
L2815:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-76(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -76(%ebp)
L2807:
	movl	-76(%ebp), %eax
	cmpl	$31, %eax
	jle	L2817
	movl	$1, -164(%ebp)
L2805:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -164(%ebp)
	jne	L2820
	nop
	movl	-60(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -60(%ebp)
L2801:
	movl	-60(%ebp), %eax
	cmpl	$3, %eax
	jle	L2821
L2820:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2840
L2832:
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
	jmp	L2823
L2835:
	movl	%eax, -164(%ebp)
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2825
L2834:
	movl	%eax, -164(%ebp)
L2825:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2826
L2836:
	movl	%eax, -164(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2826
L2833:
	movl	%eax, -164(%ebp)
L2826:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2823
L2831:
	movl	%eax, -164(%ebp)
L2823:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2828
L2829:
	leal	24(%ebp), %ebp
	movl	-152(%ebp), %eax
	cmpl	$6, -156(%ebp)
	ja	L2837
	movl	-156(%ebp), %edx
	sall	$2, %edx
	addl	$L2838, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2838:
	.long	L2830
	.long	L2831
	.long	L2832
	.long	L2833
	.long	L2834
	.long	L2835
	.long	L2836
	.text
L2837:
		.word	0x0b0f
L2830:
	movl	%eax, -164(%ebp)
L2828:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -156(%ebp)
	call	__Unwind_SjLj_Resume
L2840:
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
LLSDA1227:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1227-LLSDACSB1227
LLSDACSB1227:
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
LLSDACSE1227:
	.text
	.section .rdata,"dr"
LC576:
	.ascii "InputDevice.EndUpdate\0"
	.align 4
LC577:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<207>\0"
	.align 4
LC578:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<208>\0"
	.align 4
LC579:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<210>\0"
	.align 4
LC580:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<211>\0"
	.align 4
LC581:
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
	movl	$LLSDA1231, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2851, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC576, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	$LC577, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2842
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2842:
	movl	$0, -44(%ebp)
	jmp	L2843
L2845:
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
	movl	$LC451, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC578, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2844
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L2844:
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
L2843:
	movl	-60(%ebp), %eax
	movl	24(%eax), %edx
	movl	-44(%ebp), %eax
	cmpl	%eax, %edx
	jg	L2845
	movl	$LC579, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2846
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2846:
	movl	-60(%ebp), %eax
	movl	$0, 24(%eax)
	movl	$LC580, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2847
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2847:
	movl	-60(%ebp), %eax
	movl	$0, 36(%eax)
	movl	$LC581, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2848
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L2848:
	movl	-60(%ebp), %eax
	movl	$0, 40(%eax)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2854
L2853:
	movl	%edx, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L2850
L2851:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L2852
	subl	$1, %eax
	testl	%eax, %eax
	je	L2853
	subl	$1, %eax
		.word	0x0b0f
L2852:
	movl	%edx, -116(%ebp)
L2850:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L2854:
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
LLSDACSE1231:
	.text
	.section .rdata,"dr"
LC582:
	.ascii "InputDevice.KeyEvent\0"
	.align 4
LC583:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<111>\0"
	.align 4
LC584:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<112>\0"
	.align 4
LC585:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<113>\0"
	.align 4
LC586:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<114>\0"
	.align 4
LC587:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<115>\0"
	.align 4
LC588:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<116>\0"
	.align 4
LC589:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<117>\0"
	.align 4
LC590:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<118>\0"
	.align 4
LC591:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<119>\0"
	.align 4
LC592:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<120>\0"
	.align 4
LC593:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<121>\0"
	.align 4
LC594:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<124>\0"
	.align 4
LC595:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<125>\0"
	.align 4
LC596:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<126>\0"
	.align 4
LC597:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<127>\0"
	.align 4
LC598:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<128>\0"
	.align 4
LC599:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<129>\0"
	.align 4
LC600:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<130>\0"
	.align 4
LC601:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<133>\0"
	.align 4
LC602:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<134>\0"
	.align 4
LC603:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<135>\0"
	.align 4
LC604:
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
	movl	$LLSDA1232, -132(%ebp)
	leal	-128(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2907, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC582, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC391, (%eax)
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
	movl	$LC41, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC583, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2856
	movl	$1, -156(%ebp)
	call	__Z8dbg_stopv
L2856:
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
	movl	$LC273, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC584, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2857
	movl	$1, -156(%ebp)
	call	__Z8dbg_stopv
L2857:
	movl	-44(%ebp), %eax
	cmpl	$1, %eax
	jne	L2858
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC585, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2859
	movl	$2, -156(%ebp)
	call	__Z8dbg_stopv
L2859:
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
	je	L2860
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC586, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2861
	movl	$3, -156(%ebp)
	call	__Z8dbg_stopv
L2861:
	movl	12(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$20, %edx
	movl	%eax, (%esp)
	movl	$3, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$1, (%eax)
	movl	$LC587, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2862
	call	__Z8dbg_stopv
L2862:
	movl	12(%ebp), %edx
	movl	-108(%ebp), %eax
	movl	%edx, (%esp)
	movl	$3, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice11p_PutKeyHitEi
	subl	$4, %esp
	movl	$LC588, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2863
	call	__Z8dbg_stopv
L2863:
	movl	12(%ebp), %eax
	cmpl	$1, %eax
	jne	L2864
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC589, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2865
	movl	$4, -156(%ebp)
	call	__Z8dbg_stopv
L2865:
	movl	-108(%ebp), %eax
	addl	$20, %eax
	movl	$384, (%esp)
	movl	$4, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$1, (%eax)
	movl	$LC590, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2866
	call	__Z8dbg_stopv
L2866:
	movl	-108(%ebp), %eax
	movl	$384, (%esp)
	movl	$4, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice11p_PutKeyHitEi
	subl	$4, %esp
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2867
L2864:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC591, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2868
	movl	$5, -156(%ebp)
	call	__Z8dbg_stopv
L2868:
	movl	12(%ebp), %eax
	cmpl	$384, %eax
	jne	L2869
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC592, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2870
	movl	$6, -156(%ebp)
	call	__Z8dbg_stopv
L2870:
	movl	-108(%ebp), %eax
	addl	$20, %eax
	movl	$1, (%esp)
	movl	$6, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$1, (%eax)
	movl	$LC593, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2871
	call	__Z8dbg_stopv
L2871:
	movl	-108(%ebp), %eax
	movl	$1, (%esp)
	movl	$6, -156(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_InputDevice11p_PutKeyHitEi
	subl	$4, %esp
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2869:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2867:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2860:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2872
L2858:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC594, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2873
	movl	$7, -156(%ebp)
	call	__Z8dbg_stopv
L2873:
	movl	-44(%ebp), %eax
	cmpl	$2, %eax
	jne	L2874
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC595, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2875
	movl	$8, -156(%ebp)
	call	__Z8dbg_stopv
L2875:
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
	je	L2876
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC596, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2877
	movl	$9, -156(%ebp)
	call	__Z8dbg_stopv
L2877:
	movl	12(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$20, %edx
	movl	%eax, (%esp)
	movl	$9, -156(%ebp)
	movl	%edx, %ecx
	call	__ZN5ArrayIbE2AtEi
	subl	$4, %esp
	movb	$0, (%eax)
	movl	$LC597, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2878
	call	__Z8dbg_stopv
L2878:
	movl	12(%ebp), %eax
	cmpl	$1, %eax
	jne	L2879
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC598, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2880
	movl	$10, -156(%ebp)
	call	__Z8dbg_stopv
L2880:
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
	jmp	L2881
L2879:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC599, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2882
	movl	$11, -156(%ebp)
	call	__Z8dbg_stopv
L2882:
	movl	12(%ebp), %eax
	cmpl	$384, %eax
	jne	L2883
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC600, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2884
	movl	$12, -156(%ebp)
	call	__Z8dbg_stopv
L2884:
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
L2883:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2881:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2876:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L2885
L2874:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC601, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2886
	movl	$13, -156(%ebp)
	call	__Z8dbg_stopv
L2886:
	movl	-44(%ebp), %eax
	cmpl	$3, %eax
	jne	L2887
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC602, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2888
	movl	$14, -156(%ebp)
	call	__Z8dbg_stopv
L2888:
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
	je	L2889
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC603, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2890
	movl	$15, -156(%ebp)
	call	__Z8dbg_stopv
L2890:
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
	movl	$LC604, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2891
	call	__Z8dbg_stopv
L2891:
	movl	-108(%ebp), %eax
	movl	40(%eax), %eax
	leal	1(%eax), %edx
	movl	-108(%ebp), %eax
	movl	%edx, 40(%eax)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2889:
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2887:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2885:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2872:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L2925
L2911:
	movl	%eax, -164(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2893
L2913:
	movl	%eax, -164(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2895
L2912:
	movl	%eax, -164(%ebp)
L2895:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2893
L2910:
	movl	%eax, -164(%ebp)
L2893:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2896
L2909:
	movl	%eax, -164(%ebp)
L2896:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2897
L2917:
	movl	%eax, -164(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2899
L2919:
	movl	%eax, -164(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2901
L2918:
	movl	%eax, -164(%ebp)
L2901:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2899
L2916:
	movl	%eax, -164(%ebp)
L2899:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2902
L2915:
	movl	%eax, -164(%ebp)
L2902:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2903
L2922:
	movl	%eax, -164(%ebp)
	leal	-100(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2905
L2921:
	movl	%eax, -164(%ebp)
L2905:
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2906
L2920:
	movl	%eax, -164(%ebp)
L2906:
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2903
L2914:
	movl	%eax, -164(%ebp)
L2903:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	L2897
L2907:
	leal	24(%ebp), %ebp
	movl	-152(%ebp), %eax
	cmpl	$14, -156(%ebp)
	ja	L2923
	movl	-156(%ebp), %edx
	sall	$2, %edx
	addl	$L2924, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L2924:
	.long	L2908
	.long	L2909
	.long	L2910
	.long	L2911
	.long	L2912
	.long	L2913
	.long	L2914
	.long	L2915
	.long	L2916
	.long	L2917
	.long	L2918
	.long	L2919
	.long	L2920
	.long	L2921
	.long	L2922
	.text
L2923:
		.word	0x0b0f
L2908:
	movl	%eax, -164(%ebp)
L2897:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -156(%ebp)
	call	__Unwind_SjLj_Resume
L2925:
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
LLSDA1232:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1232-LLSDACSB1232
LLSDACSB1232:
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
LLSDACSE1232:
	.text
	.section .rdata,"dr"
LC605:
	.ascii "InputDevice.MouseEvent\0"
	.align 4
LC606:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<142>\0"
	.align 4
LC607:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<143>\0"
	.align 4
LC608:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<144>\0"
	.align 4
LC609:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<145>\0"
	.align 4
LC610:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<146>\0"
	.align 4
LC611:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<148>\0"
	.align 4
LC612:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<152>\0"
	.align 4
LC613:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<153>\0"
	.align 4
LC614:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<154>\0"
	.align 4
LC615:
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
	movl	$LLSDA1233, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L2957, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC605, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC391, (%eax)
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
	movl	$LC41, (%eax)
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
	movl	$LC209, (%eax)
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
	movl	$LC210, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC606, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2927
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2927:
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
	movl	$LC280, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC607, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2928
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2928:
	movl	-44(%ebp), %eax
	cmpl	$4, %eax
	jne	L2929
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC608, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2930
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L2930:
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
	jmp	L2931
L2929:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC609, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2932
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L2932:
	movl	-44(%ebp), %eax
	cmpl	$5, %eax
	jne	L2933
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC610, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2934
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L2934:
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
	jmp	L2935
L2933:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC611, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2936
	movl	$5, -124(%ebp)
	call	__Z8dbg_stopv
L2936:
	movl	-44(%ebp), %eax
	cmpl	$6, %eax
	jne	L2937
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$1, -132(%ebp)
	jmp	L2939
L2937:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -132(%ebp)
L2939:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -132(%ebp)
	jne	L2966
	nop
	movl	$1, -132(%ebp)
	jmp	L2935
L2966:
	movl	$0, -132(%ebp)
L2935:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -132(%ebp)
	jne	L2967
	nop
	jmp	L2931
L2967:
	movl	$0, -132(%ebp)
	jmp	L2944
L2931:
	movl	$LC612, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2945
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2945:
	movl	16(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 48(%edx)
	movl	$LC613, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2946
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2946:
	movl	20(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 52(%edx)
	movl	$LC614, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2947
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2947:
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
	movl	$LC615, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2948
	call	__Z8dbg_stopv
L2948:
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
L2944:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -132(%ebp)
	jne	L2926
	nop
	jmp	L2926
L2959:
	movl	%edx, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2953
L2961:
	movl	%edx, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2955
L2962:
	movl	%edx, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2955
L2960:
	movl	%edx, -132(%ebp)
L2955:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2953
L2957:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	L2958
	subl	$1, %eax
	testl	%eax, %eax
	je	L2959
	subl	$1, %eax
	testl	%eax, %eax
	je	L2960
	subl	$1, %eax
	testl	%eax, %eax
	je	L2961
	subl	$1, %eax
	testl	%eax, %eax
	je	L2962
	subl	$1, %eax
		.word	0x0b0f
L2958:
	movl	%edx, -132(%ebp)
L2953:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L2926:
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
LLSDA1233:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1233-LLSDACSB1233
LLSDACSB1233:
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
LLSDACSE1233:
	.text
	.section .rdata,"dr"
LC616:
	.ascii "InputDevice.TouchEvent\0"
	.align 4
LC617:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<159>\0"
	.align 4
LC618:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<160>\0"
	.align 4
LC619:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<161>\0"
	.align 4
LC620:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<162>\0"
	.align 4
LC621:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<163>\0"
	.align 4
LC622:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<165>\0"
	.align 4
LC623:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<169>\0"
	.align 4
LC624:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<170>\0"
	.align 4
LC625:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<171>\0"
	.align 4
LC626:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<172>\0"
	.align 4
LC627:
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
	movl	$LLSDA1234, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3002, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC616, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC391, (%eax)
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
	movl	$LC41, (%eax)
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
	movl	$LC209, (%eax)
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
	movl	$LC210, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC617, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2969
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2969:
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
	movl	$LC319, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC618, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2970
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2970:
	movl	-44(%ebp), %eax
	cmpl	$7, %eax
	jne	L2971
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC619, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2972
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L2972:
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
	jmp	L2973
L2971:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC620, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2974
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L2974:
	movl	-44(%ebp), %eax
	cmpl	$8, %eax
	jne	L2975
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC621, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2976
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L2976:
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
	jmp	L2977
L2975:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC622, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2978
	movl	$5, -124(%ebp)
	call	__Z8dbg_stopv
L2978:
	movl	-44(%ebp), %eax
	cmpl	$9, %eax
	jne	L2979
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$1, -132(%ebp)
	jmp	L2981
L2979:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -132(%ebp)
L2981:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -132(%ebp)
	jne	L3014
	nop
	movl	$1, -132(%ebp)
	jmp	L2977
L3014:
	movl	$0, -132(%ebp)
L2977:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -132(%ebp)
	jne	L3015
	nop
	jmp	L2973
L3015:
	movl	$0, -132(%ebp)
	jmp	L2986
L2973:
	movl	$LC623, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2987
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L2987:
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
	movl	$LC624, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2988
	call	__Z8dbg_stopv
L2988:
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
	movl	$LC625, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2989
	call	__Z8dbg_stopv
L2989:
	movl	12(%ebp), %eax
	testl	%eax, %eax
	jne	L2990
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC626, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2991
	movl	$6, -124(%ebp)
	call	__Z8dbg_stopv
L2991:
	movl	16(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 48(%edx)
	movl	$LC627, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L2992
	movl	$6, -124(%ebp)
	call	__Z8dbg_stopv
L2992:
	movl	20(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 52(%edx)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L2990:
	movl	$1, -132(%ebp)
L2986:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -132(%ebp)
	jne	L2968
	nop
	jmp	L2968
L3004:
	movl	%eax, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2997
L3006:
	movl	%eax, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2999
L3007:
	movl	%eax, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2999
L3005:
	movl	%eax, -132(%ebp)
L2999:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2997
L3008:
	movl	%eax, -132(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L2997
L3002:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
	cmpl	$5, -124(%ebp)
	ja	L3009
	movl	-124(%ebp), %edx
	sall	$2, %edx
	addl	$L3010, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3010:
	.long	L3003
	.long	L3004
	.long	L3005
	.long	L3006
	.long	L3007
	.long	L3008
	.text
L3009:
		.word	0x0b0f
L3003:
	movl	%eax, -132(%ebp)
L2997:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L2968:
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
LLSDA1234:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1234-LLSDACSB1234
LLSDACSB1234:
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
LLSDACSE1234:
	.text
	.section .rdata,"dr"
LC628:
	.ascii "InputDevice.MotionEvent\0"
	.align 4
LC629:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<178>\0"
	.align 4
LC630:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<179>\0"
	.align 4
LC631:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<183>\0"
	.align 4
LC632:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<184>\0"
	.align 4
LC633:
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
	movl	$LLSDA1235, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3029, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC628, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC391, (%eax)
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
	movl	$LC41, (%eax)
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
	movl	$LC209, (%eax)
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
	movl	$LC210, (%eax)
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
	movl	$LC404, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC629, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3017
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3017:
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
	movl	$LC163, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC630, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3018
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3018:
	movl	-44(%ebp), %eax
	cmpl	$10, %eax
	jne	L3019
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$LC631, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3022
	jmp	L3032
L3019:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -116(%ebp)
	jmp	L3021
L3032:
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3022:
	movl	16(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 64(%edx)
	movl	$LC632, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3023
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3023:
	movl	20(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 68(%edx)
	movl	$LC633, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3024
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3024:
	movl	24(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 72(%edx)
	movl	$1, -116(%ebp)
L3021:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -116(%ebp)
	je	L3033
	jmp	L3016
L3033:
	nop
	jmp	L3016
L3029:
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
L3016:
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
LLSDA1235:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1235-LLSDACSB1235
LLSDACSB1235:
	.uleb128 0
	.uleb128 0
LLSDACSE1235:
	.text
	.section .rdata,"dr"
LC634:
	.ascii "InputDevice.KeyDown\0"
	.align 4
LC635:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<47>\0"
	.align 4
LC636:
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
	movl	$LLSDA1236, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3042, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC634, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC558, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC635, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3035
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3035:
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jle	L3036
	movl	8(%ebp), %eax
	cmpl	$511, %eax
	jg	L3036
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
	jmp	L3037
L3036:
	movl	$LC636, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3038
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3038:
	movb	$0, -116(%ebp)
L3037:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movzbl	-116(%ebp), %eax
	movb	%al, -116(%ebp)
	jmp	L3045
L3044:
	movl	%edx, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3041
L3042:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3043
	subl	$1, %eax
	testl	%eax, %eax
	je	L3044
	subl	$1, %eax
		.word	0x0b0f
L3043:
	movl	%edx, -116(%ebp)
L3041:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3045:
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
LLSDACSE1236:
	.text
	.section .rdata,"dr"
LC637:
	.ascii "InputDevice.KeyHit\0"
	.align 4
LC638:
	.ascii "C:/MonkeyXFree84f/modules/mojo/inputdevice.monkey<52>\0"
	.align 4
LC639:
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
	movl	$LLSDA1237, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3054, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC637, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC558, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC638, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3047
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3047:
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jle	L3048
	movl	8(%ebp), %eax
	cmpl	$511, %eax
	jg	L3048
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
	jmp	L3049
L3048:
	movl	$LC639, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3050
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3050:
	movl	$0, -116(%ebp)
L3049:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3057
L3056:
	movl	%edx, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3053
L3054:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3055
	subl	$1, %eax
	testl	%eax, %eax
	je	L3056
	subl	$1, %eax
		.word	0x0b0f
L3055:
	movl	%edx, -116(%ebp)
L3053:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3057:
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
LLSDACSE1237:
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
	movl	$LLSDA1238, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3066, %edx
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
	jmp	L3076
L3066:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	cmpl	$6, -108(%ebp)
	ja	L3074
	movl	-108(%ebp), %edx
	sall	$2, %edx
	addl	$L3075, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3075:
	.long	L3067
	.long	L3068
	.long	L3069
	.long	L3070
	.long	L3071
	.long	L3072
	.long	L3073
	.text
L3074:
		.word	0x0b0f
L3067:
	movl	%eax, -116(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP10c_JoyStateED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3068:
	movl	%eax, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3069:
	movl	%eax, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3070:
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3071:
	movl	%eax, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIiED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3072:
	movl	%eax, -116(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3073:
	movl	%eax, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3076:
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
	.uleb128 0x6
	.uleb128 0
LLSDACSE1238:
	.text
	.section .rdata,"dr"
LC640:
	.ascii "(InputDevice)\12\0"
LC641:
	.ascii "_keyDown\0"
LC642:
	.ascii "_keyHit\0"
LC643:
	.ascii "_keyHitQueue\0"
LC644:
	.ascii "_keyHitPut\0"
LC645:
	.ascii "_charQueue\0"
LC646:
	.ascii "_charPut\0"
LC647:
	.ascii "_charGet\0"
LC648:
	.ascii "_mouseX\0"
LC649:
	.ascii "_mouseY\0"
LC650:
	.ascii "_touchX\0"
LC651:
	.ascii "_touchY\0"
LC652:
	.ascii "_accelX\0"
LC653:
	.ascii "_accelY\0"
LC654:
	.ascii "_accelZ\0"
LC655:
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
	movl	$LLSDA1239, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3095, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-92(%ebp), %eax
	movl	$LC640, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	20(%eax), %edx
	leal	-84(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC641, 4(%esp)
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
	movl	$LC642, 4(%esp)
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
	movl	$LC643, 4(%esp)
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
	movl	$LC644, 4(%esp)
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
	movl	$LC645, 4(%esp)
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
	movl	$LC646, 4(%esp)
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
	movl	$LC647, 4(%esp)
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
	movl	$LC648, 4(%esp)
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
	movl	$LC649, 4(%esp)
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
	movl	$LC650, 4(%esp)
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
	movl	$LC651, 4(%esp)
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
	movl	$LC652, 4(%esp)
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
	movl	$LC653, 4(%esp)
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
	movl	$LC654, 4(%esp)
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
	movl	$LC655, 4(%esp)
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
	jmp	L3114
L3097:
	movl	%eax, -148(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3098:
	movl	%eax, -148(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3099:
	movl	%eax, -148(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3100:
	movl	%eax, -148(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3101:
	movl	%eax, -148(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3102:
	movl	%eax, -148(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3103:
	movl	%eax, -148(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3104:
	movl	%eax, -148(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3105:
	movl	%eax, -148(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3106:
	movl	%eax, -148(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3107:
	movl	%eax, -148(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3108:
	movl	%eax, -148(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3109:
	movl	%eax, -148(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3110:
	movl	%eax, -148(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3111:
	movl	%eax, -148(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3080
L3095:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %eax
	cmpl	$15, -140(%ebp)
	ja	L3112
	movl	-140(%ebp), %edx
	sall	$2, %edx
	addl	$L3113, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3113:
	.long	L3096
	.long	L3097
	.long	L3098
	.long	L3099
	.long	L3100
	.long	L3101
	.long	L3102
	.long	L3103
	.long	L3104
	.long	L3105
	.long	L3106
	.long	L3107
	.long	L3108
	.long	L3109
	.long	L3110
	.long	L3111
	.text
L3112:
		.word	0x0b0f
L3096:
	movl	%eax, -148(%ebp)
L3080:
	movl	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L3114:
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
LLSDA1239:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1239-LLSDACSB1239
LLSDACSB1239:
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
LLSDACSE1239:
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
	movl	$LLSDA1241, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3117, %edx
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
	jmp	L3119
L3117:
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
L3119:
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
LLSDA1241:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1241-LLSDACSB1241
LLSDACSB1241:
	.uleb128 0
	.uleb128 0
LLSDACSE1241:
	.text
	.globl	__ZN10c_JoyStateC1Ev
	.def	__ZN10c_JoyStateC1Ev;	.scl	2;	.type	32;	.endef
	.set	__ZN10c_JoyStateC1Ev,__ZN10c_JoyStateC2Ev
	.section .rdata,"dr"
LC656:
	.ascii "JoyState.new\0"
	.align 4
LC657:
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
	movl	$LLSDA1243, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3124, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC656, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP10c_JoyStateE4infoE, (%eax)
	movl	$LC657, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3121
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3121:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3126
L3124:
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
L3126:
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
LLSDA1243:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1243-LLSDACSB1243
LLSDACSB1243:
	.uleb128 0
	.uleb128 0
LLSDACSE1243:
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
	movl	$LLSDA1244, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3132, %edx
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
	jmp	L3137
L3132:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L3133
	subl	$1, %eax
	testl	%eax, %eax
	je	L3134
	subl	$1, %eax
	testl	%eax, %eax
	je	L3135
	subl	$1, %eax
	testl	%eax, %eax
	je	L3136
	subl	$1, %eax
		.word	0x0b0f
L3133:
	movl	%edx, -100(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3134:
	movl	%edx, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3135:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIfED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3136:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIbED1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3137:
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
LLSDA1244:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1244-LLSDACSB1244
LLSDACSB1244:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
	.uleb128 0x3
	.uleb128 0
LLSDACSE1244:
	.text
	.section .rdata,"dr"
LC658:
	.ascii "(JoyState)\12\0"
LC659:
	.ascii "joyx\0"
LC660:
	.ascii "joyy\0"
LC661:
	.ascii "joyz\0"
LC662:
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
	movl	$LLSDA1245, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3145, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC658, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC659, 4(%esp)
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
	movl	$LC660, 4(%esp)
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
	movl	$LC661, 4(%esp)
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
	movl	$LC662, 4(%esp)
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
	jmp	L3151
L3147:
	movl	%edx, -100(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3141
L3148:
	movl	%edx, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3141
L3149:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3141
L3150:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3141
L3145:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L3146
	subl	$1, %eax
	testl	%eax, %eax
	je	L3147
	subl	$1, %eax
	testl	%eax, %eax
	je	L3148
	subl	$1, %eax
	testl	%eax, %eax
	je	L3149
	subl	$1, %eax
	testl	%eax, %eax
	je	L3150
	subl	$1, %eax
		.word	0x0b0f
L3146:
	movl	%edx, -100(%ebp)
L3141:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3151:
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
LLSDA1245:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1245-LLSDACSB1245
LLSDACSB1245:
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
LLSDACSE1245:
	.text
	.globl	_bb_input_device
	.bss
	.align 4
_bb_input_device:
	.space 4
	.section .rdata,"dr"
LC663:
	.ascii "SetInputDevice\0"
	.align 4
LC664:
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
	movl	$LLSDA1246, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3156, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC663, (%esp)
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
	movl	$LC415, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_InputDeviceE4infoE, (%eax)
	movl	$LC664, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3153
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3153:
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
	jmp	L3158
L3156:
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
L3158:
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
LLSDA1246:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1246-LLSDACSB1246
LLSDACSB1246:
	.uleb128 0
	.uleb128 0
LLSDACSE1246:
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
LC665:
	.ascii "ValidateDeviceWindow\0"
LC666:
	.ascii "notifyApp\0"
	.align 4
LC667:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<57>\0"
	.align 4
LC668:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<58>\0"
LC669:
	.ascii "h\0"
	.align 4
LC670:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<59>\0"
	.align 4
LC671:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<60>\0"
	.align 4
LC672:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<61>\0"
	.align 4
LC673:
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
	movl	$LLSDA1247, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3174, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC665, (%esp)
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
	movl	$LC666, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIbE4infoE, (%eax)
	movl	$LC667, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3161
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3161:
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
	movl	$LC73, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC668, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3162
	call	__Z8dbg_stopv
L3162:
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
	movl	$LC669, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC670, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3163
	call	__Z8dbg_stopv
L3163:
	movl	-40(%ebp), %edx
	movl	_bb_app__devWidth, %eax
	cmpl	%eax, %edx
	jne	L3164
	movl	-44(%ebp), %edx
	movl	_bb_app__devHeight, %eax
	cmpl	%eax, %edx
	jne	L3164
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	nop
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -116(%ebp)
	jmp	L3165
L3164:
	movl	$LC671, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3166
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3166:
	movl	-40(%ebp), %eax
	movl	%eax, _bb_app__devWidth
	movl	$LC672, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3167
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3167:
	movl	-44(%ebp), %eax
	movl	%eax, _bb_app__devHeight
	movl	$LC673, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3168
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3168:
	movzbl	-60(%ebp), %eax
	testb	%al, %al
	je	L3169
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	_bb_app__app, %eax
	movl	%eax, %ecx
	call	__ZN5c_App10p_OnResizeEv
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3169:
	movl	$1, -116(%ebp)
L3165:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	cmpl	$1, -116(%ebp)
	je	L3177
	jmp	L3160
L3177:
	nop
	jmp	L3160
L3174:
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
L3160:
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
LC674:
	.ascii "DisplayMode.new\0"
	.align 4
LC675:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<192>\0"
	.align 4
LC676:
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
	movl	$LLSDA1254, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3185, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC674, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC483, (%eax)
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
	movl	$LC484, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC675, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3181
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3181:
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	$LC676, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3182
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3182:
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
	jmp	L3187
L3185:
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
L3187:
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
LLSDA1254:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1254-LLSDACSB1254
LLSDACSB1254:
	.uleb128 0
	.uleb128 0
LLSDACSE1254:
	.text
	.section .rdata,"dr"
	.align 4
LC677:
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
	movl	$LLSDA1258, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3192, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC674, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	$LC677, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3189
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3189:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3194
L3192:
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
L3194:
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
LC678:
	.ascii "(DisplayMode)\12\0"
LC679:
	.ascii "_width\0"
LC680:
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
	movl	$LLSDA1260, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3201, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC678, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC679, 4(%esp)
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
	movl	$LC680, 4(%esp)
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
	jmp	L3205
L3203:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3199
L3204:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3199
L3201:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L3202
	subl	$1, %eax
	testl	%eax, %eax
	je	L3203
	subl	$1, %eax
	testl	%eax, %eax
	je	L3204
	subl	$1, %eax
		.word	0x0b0f
L3202:
	movl	%edx, -100(%ebp)
L3199:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3205:
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
LLSDA1260:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1260-LLSDACSB1260
LLSDACSB1260:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1260:
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
LC681:
	.ascii "Map.new\0"
	.align 4
LC682:
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
	movl	$LLSDA1264, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3212, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC681, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP5c_MapE4infoE, (%eax)
	movl	$LC682, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3209
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3209:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3214
L3212:
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
L3214:
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
LLSDA1264:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1264-LLSDACSB1264
LLSDACSB1264:
	.uleb128 0
	.uleb128 0
LLSDACSE1264:
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
LC683:
	.ascii "Map.FindNode\0"
	.align 4
LC684:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<157>\0"
LC685:
	.ascii "node\0"
	.align 4
LC686:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<159>\0"
	.align 4
LC687:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<160>\0"
LC688:
	.ascii "cmp\0"
	.align 4
LC689:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<161>\0"
	.align 4
LC690:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<162>\0"
	.align 4
LC691:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<163>\0"
	.align 4
LC692:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<164>\0"
	.align 4
LC693:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<166>\0"
	.align 4
LC694:
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
	movl	$LLSDA1268, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L3246, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC683, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC558, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC684, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3217
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3217:
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
	movl	$LC685, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC686, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3218
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3218:
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3219
L3237:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC687, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3220
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L3220:
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
	movl	$LC688, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC689, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3221
	call	__Z8dbg_stopv
L3221:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jle	L3222
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC690, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3223
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L3223:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3224
L3222:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC691, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3225
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L3225:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jns	L3226
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC692, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3227
	movl	$5, -124(%ebp)
	call	__Z8dbg_stopv
L3227:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$1, -136(%ebp)
	jmp	L3230
L3226:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC693, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3229
	movl	$6, -124(%ebp)
	call	__Z8dbg_stopv
L3229:
	movl	-44(%ebp), %eax
	movl	%eax, -132(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -136(%ebp)
L3230:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -136(%ebp)
	jne	L3257
	nop
	jmp	L3224
L3257:
	movl	$0, -136(%ebp)
	jmp	L3233
L3224:
	movl	$1, -136(%ebp)
L3233:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -136(%ebp)
	jne	L3236
	nop
L3219:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	L3237
	movl	$LC694, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3238
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3238:
	movl	-44(%ebp), %eax
	movl	%eax, -132(%ebp)
L3236:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3258
L3249:
	movl	%eax, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3241
L3251:
	movl	%eax, -132(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3243
L3252:
	movl	%eax, -132(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3243
L3250:
	movl	%eax, -132(%ebp)
L3243:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3241
L3248:
	movl	%eax, -132(%ebp)
L3241:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3245
L3246:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
	cmpl	$5, -124(%ebp)
	ja	L3253
	movl	-124(%ebp), %edx
	sall	$2, %edx
	addl	$L3254, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3254:
	.long	L3247
	.long	L3248
	.long	L3249
	.long	L3250
	.long	L3251
	.long	L3252
	.text
L3253:
		.word	0x0b0f
L3247:
	movl	%eax, -132(%ebp)
L3245:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L3258:
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
LLSDA1268:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1268-LLSDACSB1268
LLSDACSB1268:
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
LLSDACSE1268:
	.text
	.section .rdata,"dr"
LC695:
	.ascii "Map.Contains\0"
	.align 4
LC696:
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
	movl	$LLSDA1272, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3263, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC695, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC558, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC696, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3260
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3260:
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
	jmp	L3265
L3263:
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
L3265:
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
LLSDA1272:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1272-LLSDACSB1272
LLSDACSB1272:
	.uleb128 0
	.uleb128 0
LLSDACSE1272:
	.text
	.section .rdata,"dr"
LC697:
	.ascii "Map.RotateLeft\0"
	.align 4
LC698:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<251>\0"
LC699:
	.ascii "child\0"
	.align 4
LC700:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<252>\0"
	.align 4
LC701:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<253>\0"
	.align 4
LC702:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<254>\0"
	.align 4
LC703:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<256>\0"
	.align 4
LC704:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<257>\0"
	.align 4
LC705:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<258>\0"
	.align 4
LC706:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<259>\0"
	.align 4
LC707:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<261>\0"
	.align 4
LC708:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<264>\0"
	.align 4
LC709:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<266>\0"
	.align 4
LC710:
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
	movl	$LLSDA1273, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3291, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC697, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC685, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC698, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3267
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3267:
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
	movl	$LC699, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC700, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3268
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3268:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC701, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3269
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3269:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L3270
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC702, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3271
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L3271:
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
L3270:
	movl	$LC703, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3272
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3272:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-44(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC704, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3273
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3273:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L3274
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC705, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3275
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L3275:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	jne	L3276
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC706, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3277
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L3277:
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
	jmp	L3278
L3276:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC707, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3279
	movl	$5, -124(%ebp)
	call	__Z8dbg_stopv
L3279:
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
L3278:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3280
L3274:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC708, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3281
	movl	$6, -124(%ebp)
	call	__Z8dbg_stopv
L3281:
	movl	-44(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3280:
	movl	$LC709, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3282
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3282:
	movl	8(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC710, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3283
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3283:
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
	jmp	L3300
L3293:
	movl	%eax, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3286
L3295:
	movl	%eax, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3288
L3296:
	movl	%eax, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3288
L3294:
	movl	%eax, -132(%ebp)
L3288:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3286
L3297:
	movl	%eax, -132(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3286
L3291:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
	cmpl	$5, -124(%ebp)
	ja	L3298
	movl	-124(%ebp), %edx
	sall	$2, %edx
	addl	$L3299, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3299:
	.long	L3292
	.long	L3293
	.long	L3294
	.long	L3295
	.long	L3296
	.long	L3297
	.text
L3298:
		.word	0x0b0f
L3292:
	movl	%eax, -132(%ebp)
L3286:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L3300:
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
LLSDA1273:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1273-LLSDACSB1273
LLSDACSB1273:
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
LLSDACSE1273:
	.text
	.section .rdata,"dr"
LC711:
	.ascii "Map.RotateRight\0"
	.align 4
LC712:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<271>\0"
	.align 4
LC713:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<272>\0"
	.align 4
LC714:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<273>\0"
	.align 4
LC715:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<274>\0"
	.align 4
LC716:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<276>\0"
	.align 4
LC717:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<277>\0"
	.align 4
LC718:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<278>\0"
	.align 4
LC719:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<279>\0"
	.align 4
LC720:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<281>\0"
	.align 4
LC721:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<284>\0"
	.align 4
LC722:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<286>\0"
	.align 4
LC723:
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
	movl	$LLSDA1274, -100(%ebp)
	leal	-96(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3326, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC711, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC685, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC712, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3302
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3302:
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
	movl	$LC699, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC713, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3303
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3303:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	8(%ebp), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC714, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3304
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3304:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L3305
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC715, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3306
	movl	$2, -124(%ebp)
	call	__Z8dbg_stopv
L3306:
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
L3305:
	movl	$LC716, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3307
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3307:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-44(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC717, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3308
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3308:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L3309
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC718, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3310
	movl	$3, -124(%ebp)
	call	__Z8dbg_stopv
L3310:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	jne	L3311
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC719, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3312
	movl	$4, -124(%ebp)
	call	__Z8dbg_stopv
L3312:
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
	jmp	L3313
L3311:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC720, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3314
	movl	$5, -124(%ebp)
	call	__Z8dbg_stopv
L3314:
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
L3313:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3315
L3309:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC721, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3316
	movl	$6, -124(%ebp)
	call	__Z8dbg_stopv
L3316:
	movl	-44(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3315:
	movl	$LC722, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3317
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3317:
	movl	8(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	movl	$LC723, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3318
	movl	$1, -124(%ebp)
	call	__Z8dbg_stopv
L3318:
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
	jmp	L3335
L3328:
	movl	%eax, -132(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3321
L3330:
	movl	%eax, -132(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3323
L3331:
	movl	%eax, -132(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3323
L3329:
	movl	%eax, -132(%ebp)
L3323:
	leal	-52(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3321
L3332:
	movl	%eax, -132(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	L3321
L3326:
	leal	24(%ebp), %ebp
	movl	-120(%ebp), %eax
	cmpl	$5, -124(%ebp)
	ja	L3333
	movl	-124(%ebp), %edx
	sall	$2, %edx
	addl	$L3334, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3334:
	.long	L3327
	.long	L3328
	.long	L3329
	.long	L3330
	.long	L3331
	.long	L3332
	.text
L3333:
		.word	0x0b0f
L3327:
	movl	%eax, -132(%ebp)
L3321:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -124(%ebp)
	call	__Unwind_SjLj_Resume
L3335:
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
LLSDA1274:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1274-LLSDACSB1274
LLSDACSB1274:
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
LLSDACSE1274:
	.text
	.section .rdata,"dr"
LC724:
	.ascii "Map.InsertFixup\0"
	.align 4
LC725:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<212>\0"
	.align 4
LC726:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<213>\0"
	.align 4
LC727:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<214>\0"
LC728:
	.ascii "uncle\0"
	.align 4
LC729:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<215>\0"
	.align 4
LC730:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<216>\0"
	.align 4
LC731:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<217>\0"
	.align 4
LC732:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<218>\0"
	.align 4
LC733:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<219>\0"
	.align 4
LC734:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<221>\0"
	.align 4
LC735:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<222>\0"
	.align 4
LC736:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<223>\0"
	.align 4
LC737:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<225>\0"
	.align 4
LC738:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<226>\0"
	.align 4
LC739:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<227>\0"
	.align 4
LC740:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<230>\0"
	.align 4
LC741:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<231>\0"
	.align 4
LC742:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<232>\0"
	.align 4
LC743:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<233>\0"
	.align 4
LC744:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<234>\0"
	.align 4
LC745:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<235>\0"
	.align 4
LC746:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<237>\0"
	.align 4
LC747:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<238>\0"
	.align 4
LC748:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<239>\0"
	.align 4
LC749:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<241>\0"
	.align 4
LC750:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<242>\0"
	.align 4
LC751:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<243>\0"
	.align 4
LC752:
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
	movl	$LLSDA1275, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3386, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC724, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC685, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC725, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3337
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3337:
	jmp	L3338
L3373:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC726, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3339
	movl	$2, -140(%ebp)
	call	__Z8dbg_stopv
L3339:
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	L3340
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC727, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3341
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L3341:
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
	movl	$LC728, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC729, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3342
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L3342:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	L3343
	movl	-52(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$-1, %eax
	jne	L3343
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC730, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3344
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L3344:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$1, 32(%eax)
	movl	$LC731, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3345
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L3345:
	movl	-52(%ebp), %eax
	movl	$1, 32(%eax)
	movl	$LC732, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3346
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L3346:
	movl	-52(%ebp), %eax
	movl	36(%eax), %eax
	movl	$-1, 32(%eax)
	movl	$LC733, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3347
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L3347:
	movl	-52(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3348
L3343:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC734, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3349
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L3349:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	jne	L3350
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC735, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3351
	movl	$6, -140(%ebp)
	call	__Z8dbg_stopv
L3351:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	$LC736, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3352
	movl	$6, -140(%ebp)
	call	__Z8dbg_stopv
L3352:
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
L3350:
	movl	$LC737, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3353
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L3353:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$1, 32(%eax)
	movl	$LC738, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3354
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L3354:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %eax
	movl	$-1, 32(%eax)
	movl	$LC739, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3355
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L3355:
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
L3348:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3356
L3340:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC740, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3357
	movl	$7, -140(%ebp)
	call	__Z8dbg_stopv
L3357:
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
	movl	$LC728, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC741, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3358
	movl	$7, -140(%ebp)
	call	__Z8dbg_stopv
L3358:
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	je	L3359
	movl	-72(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$-1, %eax
	jne	L3359
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC742, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3360
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3360:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$1, 32(%eax)
	movl	$LC743, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3361
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3361:
	movl	-72(%ebp), %eax
	movl	$1, 32(%eax)
	movl	$LC744, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3362
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3362:
	movl	-72(%ebp), %eax
	movl	36(%eax), %eax
	movl	$-1, 32(%eax)
	movl	$LC745, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3363
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3363:
	movl	-72(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3364
L3359:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC746, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3365
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L3365:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	jne	L3366
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC747, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3367
	movl	$10, -140(%ebp)
	call	__Z8dbg_stopv
L3367:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	$LC748, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3368
	movl	$10, -140(%ebp)
	call	__Z8dbg_stopv
L3368:
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
L3366:
	movl	$LC749, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3369
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L3369:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$1, 32(%eax)
	movl	$LC750, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3370
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L3370:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %eax
	movl	$-1, 32(%eax)
	movl	$LC751, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3371
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L3371:
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
L3364:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3356:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3338:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	L3372
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	32(%eax), %eax
	cmpl	$-1, %eax
	jne	L3372
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	L3373
L3372:
	movl	$LC752, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3374
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3374:
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	movl	$1, 32(%eax)
	movl	$0, -148(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3399
L3390:
	movl	%eax, -148(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3377
L3392:
	movl	%eax, -148(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3379
L3391:
	movl	%eax, -148(%ebp)
L3379:
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3377
L3389:
	movl	%eax, -148(%ebp)
L3377:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3380
L3394:
	movl	%eax, -148(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3382
L3396:
	movl	%eax, -148(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3384
L3395:
	movl	%eax, -148(%ebp)
L3384:
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3382
L3393:
	movl	%eax, -148(%ebp)
L3382:
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3380
L3388:
	movl	%eax, -148(%ebp)
L3380:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3385
L3386:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %eax
	cmpl	$9, -140(%ebp)
	ja	L3397
	movl	-140(%ebp), %edx
	sall	$2, %edx
	addl	$L3398, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3398:
	.long	L3387
	.long	L3388
	.long	L3389
	.long	L3390
	.long	L3391
	.long	L3392
	.long	L3393
	.long	L3394
	.long	L3395
	.long	L3396
	.text
L3397:
		.word	0x0b0f
L3387:
	movl	%eax, -148(%ebp)
L3385:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L3399:
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
LLSDA1275:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1275-LLSDACSB1275
LLSDACSB1275:
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
LLSDACSE1275:
	.text
	.section .rdata,"dr"
LC753:
	.ascii "Map.Set\0"
LC754:
	.ascii "value\0"
	.align 4
LC755:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<29>\0"
	.align 4
LC756:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<30>\0"
LC757:
	.ascii "parent\0"
	.align 4
LC758:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<32>\0"
	.align 4
LC759:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<33>\0"
	.align 4
LC760:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<34>\0"
	.align 4
LC761:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<35>\0"
	.align 4
LC762:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<36>\0"
	.align 4
LC763:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<37>\0"
	.align 4
LC764:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<38>\0"
	.align 4
LC765:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<40>\0"
	.align 4
LC766:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<41>\0"
	.align 4
LC767:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<45>\0"
	.align 4
LC768:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<47>\0"
	.align 4
LC769:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<48>\0"
	.align 4
LC770:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<49>\0"
	.align 4
LC771:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<51>\0"
	.align 4
LC772:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<53>\0"
	.align 4
LC773:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<55>\0"
	.align 4
LC774:
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
	movl	$LLSDA1276, -116(%ebp)
	leal	-112(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L3449, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC753, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC558, (%eax)
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
	movl	$LC754, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	$LC755, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3401
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3401:
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
	movl	$LC685, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC756, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3402
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3402:
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
	movl	$LC757, (%eax)
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
	movl	$LC688, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC758, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3403
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3403:
	movzbl	-148(%ebp), %eax
	movb	%al, -148(%ebp)
	jmp	L3404
L3424:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC759, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3405
	movl	$2, -140(%ebp)
	call	__Z8dbg_stopv
L3405:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	$LC760, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3406
	movl	$2, -140(%ebp)
	call	__Z8dbg_stopv
L3406:
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
	movl	$LC761, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3407
	call	__Z8dbg_stopv
L3407:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jle	L3408
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC762, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3409
	movl	$3, -140(%ebp)
	call	__Z8dbg_stopv
L3409:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3410
L3408:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC763, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3411
	movl	$4, -140(%ebp)
	call	__Z8dbg_stopv
L3411:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jns	L3412
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC764, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3413
	movl	$5, -140(%ebp)
	call	__Z8dbg_stopv
L3413:
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$1, -152(%ebp)
	jmp	L3417
L3412:
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC765, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3415
	movl	$6, -140(%ebp)
	call	__Z8dbg_stopv
L3415:
	movl	12(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	$28, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI13c_DisplayModeS0_EvRPT_PT0_
	movl	$LC766, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3416
	movl	$6, -140(%ebp)
	call	__Z8dbg_stopv
L3416:
	movb	$0, -148(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	$0, -152(%ebp)
L3417:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -152(%ebp)
	jne	L3465
	nop
	jmp	L3410
L3465:
	movl	$0, -152(%ebp)
	jmp	L3420
L3410:
	movl	$1, -152(%ebp)
L3420:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	cmpl	$1, -152(%ebp)
	jne	L3423
	nop
L3404:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	L3424
	movl	$LC767, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3425
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3425:
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
	movl	$LC768, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3426
	call	__Z8dbg_stopv
L3426:
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	je	L3427
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC769, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3428
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3428:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jle	L3429
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC770, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3430
	movl	$9, -140(%ebp)
	call	__Z8dbg_stopv
L3430:
	movl	-44(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3431
L3429:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC771, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3432
	movl	$10, -140(%ebp)
	call	__Z8dbg_stopv
L3432:
	movl	-44(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3431:
	movl	$LC772, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3433
	movl	$8, -140(%ebp)
	call	__Z8dbg_stopv
L3433:
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
	jmp	L3434
L3427:
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC773, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3435
	movl	$11, -140(%ebp)
	call	__Z8dbg_stopv
L3435:
	movl	-44(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI6c_NodeS0_EvRPT_PT0_
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3434:
	movl	$LC774, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3436
	movl	$1, -140(%ebp)
	call	__Z8dbg_stopv
L3436:
	movb	$1, -148(%ebp)
L3423:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movzbl	-148(%ebp), %eax
	movb	%al, -148(%ebp)
	jmp	L3466
L3452:
	movl	%eax, -148(%ebp)
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3439
L3454:
	movl	%eax, -148(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3441
L3455:
	movl	%eax, -148(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3441
L3453:
	movl	%eax, -148(%ebp)
L3441:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3439
L3451:
	movl	%eax, -148(%ebp)
L3439:
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3443
L3456:
	movl	%eax, -148(%ebp)
	movl	-156(%ebp), %ebx
	movl	%ebx, (%esp)
	call	__ZN9gc_objectdlEPv
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3443
L3458:
	movl	%eax, -148(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3446
L3459:
	movl	%eax, -148(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3446
L3457:
	movl	%eax, -148(%ebp)
L3446:
	leal	-76(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3443
L3460:
	movl	%eax, -148(%ebp)
	leal	-88(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	L3443
L3449:
	leal	24(%ebp), %ebp
	movl	-136(%ebp), %eax
	cmpl	$10, -140(%ebp)
	ja	L3461
	movl	-140(%ebp), %edx
	sall	$2, %edx
	addl	$L3462, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3462:
	.long	L3450
	.long	L3451
	.long	L3452
	.long	L3453
	.long	L3454
	.long	L3455
	.long	L3456
	.long	L3457
	.long	L3458
	.long	L3459
	.long	L3460
	.text
L3461:
		.word	0x0b0f
L3450:
	movl	%eax, -148(%ebp)
L3443:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -140(%ebp)
	call	__Unwind_SjLj_Resume
L3466:
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
LLSDA1276:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1276-LLSDACSB1276
LLSDACSB1276:
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
LLSDACSE1276:
	.text
	.section .rdata,"dr"
LC775:
	.ascii "Map.Insert\0"
	.align 4
LC776:
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
	movl	$LLSDA1277, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3471, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC775, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC558, (%eax)
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
	movl	$LC754, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	$LC776, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3468
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3468:
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
	jmp	L3473
L3471:
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
L3473:
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
LLSDA1277:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1277-LLSDACSB1277
LLSDACSB1277:
	.uleb128 0
	.uleb128 0
LLSDACSE1277:
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
LC777:
	.ascii "(Map)\12\0"
LC778:
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
	movl	$LLSDA1279, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3479, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC777, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC778, 4(%esp)
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
	jmp	L3482
L3481:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3478
L3479:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L3480
	subl	$1, %eax
	testl	%eax, %eax
	je	L3481
	subl	$1, %eax
		.word	0x0b0f
L3480:
	movl	%edx, -100(%ebp)
L3478:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3482:
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
LLSDACSE1279:
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
	je	L3483
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L3483:
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
	je	L3486
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN9gc_objectdlEPv
L3486:
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
LC779:
	.ascii "IntMap.new\0"
	.align 4
LC780:
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
	movl	$LLSDA1287, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3497, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC779, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP8c_IntMapE4infoE, (%eax)
	movl	$LC780, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3494
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3494:
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
	jmp	L3499
L3497:
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
L3499:
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
LLSDA1287:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1287-LLSDACSB1287
LLSDACSB1287:
	.uleb128 0
	.uleb128 0
LLSDACSE1287:
	.text
	.section .rdata,"dr"
LC781:
	.ascii "IntMap.Compare\0"
LC782:
	.ascii "lhs\0"
LC783:
	.ascii "rhs\0"
	.align 4
LC784:
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
	movl	$LLSDA1291, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3504, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC781, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC782, (%eax)
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
	movl	$LC783, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC784, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3501
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3501:
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
	jmp	L3506
L3504:
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
L3506:
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
LC785:
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
	movl	$LLSDA1293, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3511, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC785, (%esp)
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
	jmp	L3513
L3511:
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
L3513:
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
LLSDA1293:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1293-LLSDACSB1293
LLSDACSB1293:
	.uleb128 0
	.uleb128 0
LLSDACSE1293:
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
LC786:
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
	movl	$LC786, (%esp)
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
	movl	$LC105, (%eax)
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
LC787:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<13>\0"
	.align 4
LC788:
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
	movl	$LLSDA1301, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3525, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC786, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC41, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI5ArrayIP13c_DisplayModeEE4infoE, (%eax)
	movl	$LC787, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3520
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3520:
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
	movl	$LC788, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3521
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3521:
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
	jmp	L3528
L3527:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3524
L3525:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3526
	subl	$1, %eax
	testl	%eax, %eax
	je	L3527
	subl	$1, %eax
		.word	0x0b0f
L3526:
	movl	%edx, -116(%ebp)
L3524:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3528:
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
LLSDA1301:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1301-LLSDACSB1301
LLSDACSB1301:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1301:
	.text
	.section .rdata,"dr"
LC789:
	.ascii "Stack.Push\0"
	.align 4
LC790:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<71>\0"
	.align 4
LC791:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<72>\0"
	.align 4
LC792:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<74>\0"
	.align 4
LC793:
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
	movl	$LLSDA1305, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3538, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC789, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC754, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	$LC790, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3530
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3530:
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
	je	L3531
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC791, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3532
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L3532:
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
L3531:
	movl	$LC792, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3533
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3533:
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
	movl	$LC793, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3534
	call	__Z8dbg_stopv
L3534:
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 20(%eax)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L3542
L3541:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3536
L3540:
	movl	%edx, -116(%ebp)
L3536:
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3537
L3538:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3539
	subl	$1, %eax
	testl	%eax, %eax
	je	L3540
	subl	$1, %eax
	testl	%eax, %eax
	je	L3541
	subl	$1, %eax
		.word	0x0b0f
L3539:
	movl	%edx, -116(%ebp)
L3537:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3542:
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
	.uleb128 0x2
	.uleb128 0
LLSDACSE1305:
	.text
	.section .rdata,"dr"
LC794:
	.ascii "values\0"
LC795:
	.ascii "offset\0"
LC796:
	.ascii "count\0"
	.align 4
LC797:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<83>\0"
	.align 4
LC798:
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
	movl	$LLSDA1306, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3550, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC789, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC794, (%eax)
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
	movl	$LC795, (%eax)
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
	movl	$LC796, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC797, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3544
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3544:
	movl	$0, -44(%ebp)
	jmp	L3545
L3547:
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
	movl	$LC451, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC798, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3546
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L3546:
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
L3545:
	movl	-44(%ebp), %edx
	movl	16(%ebp), %eax
	cmpl	%eax, %edx
	jl	L3547
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L3553
L3552:
	movl	%edx, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3549
L3550:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3551
	subl	$1, %eax
	testl	%eax, %eax
	je	L3552
	subl	$1, %eax
		.word	0x0b0f
L3551:
	movl	%edx, -116(%ebp)
L3549:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3553:
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
LLSDA1306:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1306-LLSDACSB1306
LLSDACSB1306:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1306:
	.text
	.section .rdata,"dr"
	.align 4
LC799:
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
	movl	$LLSDA1307, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3558, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC789, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC794, (%eax)
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
	movl	$LC795, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC799, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3555
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3555:
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
	jmp	L3561
L3560:
	movl	%edx, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3557
L3558:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3559
	subl	$1, %eax
	testl	%eax, %eax
	je	L3560
	subl	$1, %eax
		.word	0x0b0f
L3559:
	movl	%edx, -116(%ebp)
L3557:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3561:
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
LLSDA1307:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1307-LLSDACSB1307
LLSDACSB1307:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
LLSDACSE1307:
	.text
	.section .rdata,"dr"
LC800:
	.ascii "Stack.ToArray\0"
	.align 4
LC801:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<18>\0"
LC802:
	.ascii "t\0"
	.align 4
LC803:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<19>\0"
	.align 4
LC804:
	.ascii "C:/MonkeyXFree84f/modules/monkey/stack.monkey<20>\0"
	.align 4
LC805:
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
	movl	$LLSDA1308, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3573, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC800, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_StackE4infoE, (%eax)
	movl	$LC801, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3563
	movl	$1, -108(%ebp)
	call	__Z8dbg_stopv
L3563:
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
	movl	$LC802, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI5ArrayIP13c_DisplayModeEE4infoE, (%eax)
	movl	$LC803, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3564
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L3564:
	movl	$0, -44(%ebp)
	jmp	L3565
L3567:
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
	movl	$LC451, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC804, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3566
	movl	$3, -108(%ebp)
	call	__Z8dbg_stopv
L3566:
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
L3565:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	cmpl	%eax, %edx
	jg	L3567
	movl	$LC805, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3568
	movl	$2, -108(%ebp)
	call	__Z8dbg_stopv
L3568:
	nop
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L3577
L3576:
	movl	%edx, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3571
L3575:
	movl	%edx, -116(%ebp)
L3571:
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3572
L3573:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %edx
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L3574
	subl	$1, %eax
	testl	%eax, %eax
	je	L3575
	subl	$1, %eax
	testl	%eax, %eax
	je	L3576
	subl	$1, %eax
		.word	0x0b0f
L3574:
	movl	%edx, -116(%ebp)
L3572:
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3577:
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
LLSDA1308:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1308-LLSDACSB1308
LLSDACSB1308:
	.uleb128 0
	.uleb128 0
	.uleb128 0x1
	.uleb128 0
	.uleb128 0x2
	.uleb128 0
LLSDACSE1308:
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
	movl	$LLSDA1309, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3580, %edx
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
	jmp	L3582
L3580:
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
L3582:
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
LLSDA1309:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1309-LLSDACSB1309
LLSDACSB1309:
	.uleb128 0
	.uleb128 0
LLSDACSE1309:
	.text
	.section .rdata,"dr"
LC806:
	.ascii "(Stack)\12\0"
LC807:
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
	movl	$LLSDA1310, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3588, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-44(%ebp), %eax
	movl	$LC806, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC41, 4(%esp)
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
	movl	$LC807, 4(%esp)
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
	jmp	L3592
L3590:
	movl	%edx, -100(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3586
L3591:
	movl	%edx, -100(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3586
L3588:
	leal	24(%ebp), %ebp
	movl	-88(%ebp), %edx
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L3589
	subl	$1, %eax
	testl	%eax, %eax
	je	L3590
	subl	$1, %eax
	testl	%eax, %eax
	je	L3591
	subl	$1, %eax
		.word	0x0b0f
L3589:
	movl	%edx, -100(%ebp)
L3586:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -92(%ebp)
	call	__Unwind_SjLj_Resume
L3592:
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
	.uleb128 0x2
	.uleb128 0
LLSDACSE1310:
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
LC808:
	.ascii "Node.new\0"
LC809:
	.ascii "color\0"
	.align 4
LC810:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<364>\0"
	.align 4
LC811:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<365>\0"
	.align 4
LC812:
	.ascii "C:/MonkeyXFree84f/modules/monkey/map.monkey<366>\0"
	.align 4
LC813:
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
	movl	$LLSDA1314, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3601, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC808, (%esp)
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
	movl	$LC105, (%eax)
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
	movl	$LC558, (%eax)
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
	movl	$LC754, (%eax)
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
	movl	$LC809, (%eax)
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
	movl	$LC757, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC810, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3595
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3595:
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	$LC811, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3596
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3596:
	movl	12(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	$28, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9gc_assignI13c_DisplayModeS0_EvRPT_PT0_
	movl	$LC812, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3597
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3597:
	movl	16(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	$LC813, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3598
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3598:
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
	jmp	L3603
L3601:
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
L3603:
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
LLSDA1314:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1314-LLSDACSB1314
LLSDACSB1314:
	.uleb128 0
	.uleb128 0
LLSDACSE1314:
	.text
	.section .rdata,"dr"
	.align 4
LC814:
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
	movl	$LLSDA1315, -68(%ebp)
	leal	-64(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3608, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC808, (%esp)
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
	movl	$LC105, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP6c_NodeE4infoE, (%eax)
	movl	$LC814, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3605
	movl	$1, -92(%ebp)
	call	__Z8dbg_stopv
L3605:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L3610
L3608:
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
L3610:
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
LLSDA1315:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1315-LLSDACSB1315
LLSDACSB1315:
	.uleb128 0
	.uleb128 0
LLSDACSE1315:
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
LC815:
	.ascii "(Node)\12\0"
LC816:
	.ascii "left\0"
LC817:
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
	movl	$LLSDA1317, -84(%ebp)
	leal	-80(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3621, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	movl	-60(%ebp), %eax
	movl	$LC815, (%esp)
	movl	%eax, %ecx
	call	__ZN6StringC1IcEEPKT_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	$LC558, 4(%esp)
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
	movl	$LC754, 4(%esp)
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
	movl	$LC809, 4(%esp)
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
	movl	$LC757, 4(%esp)
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
	movl	$LC816, 4(%esp)
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
	movl	$LC817, 4(%esp)
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
	jmp	L3631
L3623:
	movl	%eax, -116(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3615
L3624:
	movl	%eax, -116(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3615
L3625:
	movl	%eax, -116(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3615
L3626:
	movl	%eax, -116(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3615
L3627:
	movl	%eax, -116(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3615
L3628:
	movl	%eax, -116(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	L3615
L3621:
	leal	24(%ebp), %ebp
	movl	-104(%ebp), %eax
	cmpl	$6, -108(%ebp)
	ja	L3629
	movl	-108(%ebp), %edx
	sall	$2, %edx
	addl	$L3630, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3630:
	.long	L3622
	.long	L3623
	.long	L3624
	.long	L3625
	.long	L3626
	.long	L3627
	.long	L3628
	.text
L3629:
		.word	0x0b0f
L3622:
	movl	%eax, -116(%ebp)
L3615:
	movl	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN6StringD1Ev
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -108(%ebp)
	call	__Unwind_SjLj_Resume
L3631:
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
LLSDA1317:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1317-LLSDACSB1317
LLSDACSB1317:
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
LLSDACSE1317:
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
LC818:
	.ascii "DeviceWidth\0"
	.align 4
LC819:
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
	movl	$LLSDA1318, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3636, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC818, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	$LC819, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3633
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3633:
	movl	_bb_app__devWidth, %eax
	movl	%eax, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L3638
L3636:
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
L3638:
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
LC820:
	.ascii "DeviceHeight\0"
	.align 4
LC821:
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
	movl	$LLSDA1319, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3643, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC820, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	$LC821, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3640
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3640:
	movl	_bb_app__devHeight, %eax
	movl	%eax, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L3645
L3643:
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
L3645:
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
LC822:
	.ascii "EnumDisplayModes\0"
	.align 4
LC823:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<33>\0"
LC824:
	.ascii "modes\0"
	.align 4
LC825:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<34>\0"
LC826:
	.ascii "mmap\0"
	.align 4
LC827:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<35>\0"
LC828:
	.ascii "mstack\0"
	.align 4
LC829:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<36>\0"
	.align 4
LC830:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<37>\0"
	.align 4
LC831:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<38>\0"
	.align 4
LC832:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<39>\0"
LC833:
	.ascii "size\0"
	.align 4
LC834:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<40>\0"
	.align 4
LC835:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<42>\0"
	.align 4
LC836:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<43>\0"
	.align 4
LC837:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<44>\0"
	.align 4
LC838:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<47>\0"
	.align 4
LC839:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<48>\0"
	.align 4
LC840:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<49>\0"
	.align 4
LC841:
	.ascii "C:/MonkeyXFree84f/modules/mojo/app.monkey<50>\0"
	.align 4
LC842:
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
	movl	$LLSDA1320, -128(%ebp)
	leal	-124(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L3678, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-40(%ebp), %eax
	movl	$LC822, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	$LC823, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3649
	movl	$1, -152(%ebp)
	call	__Z8dbg_stopv
L3649:
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
	movl	$LC824, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI5ArrayIP13BBDisplayModeEE4infoE, (%eax)
	movl	$LC825, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3650
	movl	$2, -152(%ebp)
	call	__Z8dbg_stopv
L3650:
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
	movl	$LC826, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP8c_IntMapE4infoE, (%eax)
	movl	$LC827, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3651
	call	__Z8dbg_stopv
L3651:
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
	movl	$LC828, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP7c_StackE4infoE, (%eax)
	movl	$LC829, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3652
	call	__Z8dbg_stopv
L3652:
	movl	$0, -60(%ebp)
	jmp	L3653
L3663:
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
	movl	$LC451, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC830, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3654
	movl	$3, -152(%ebp)
	call	__Z8dbg_stopv
L3654:
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
	movl	$LC73, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC831, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3655
	call	__Z8dbg_stopv
L3655:
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
	movl	$LC669, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC832, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3656
	call	__Z8dbg_stopv
L3656:
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
	movl	$LC833, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC834, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3657
	movl	$3, -152(%ebp)
	call	__Z8dbg_stopv
L3657:
	movl	-76(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%esp)
	movl	$3, -152(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map10p_ContainsEi
	subl	$4, %esp
	testb	%al, %al
	je	L3658
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	leal	-80(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3659
L3658:
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC835, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3660
	movl	$4, -152(%ebp)
	call	__Z8dbg_stopv
L3660:
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
	movl	$LC385, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13c_DisplayModeE4infoE, (%eax)
	movl	$LC836, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3661
	call	__Z8dbg_stopv
L3661:
	movl	-88(%ebp), %ecx
	movl	-76(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	$4, -152(%ebp)
	movl	%eax, %ecx
	call	__ZN5c_Map8p_InsertEiP13c_DisplayMode
	subl	$8, %esp
	movl	$LC837, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3662
	call	__Z8dbg_stopv
L3662:
	movl	-88(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%edx, (%esp)
	movl	$4, -152(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Stack6p_PushEP13c_DisplayMode
	subl	$4, %esp
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3659:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-60(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -60(%ebp)
L3653:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK5ArrayIP13BBDisplayModeE6LengthEv
	movl	-60(%ebp), %edx
	cmpl	%edx, %eax
	setg	%al
	testb	%al, %al
	jne	L3663
	movl	$LC838, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3664
	movl	$2, -152(%ebp)
	call	__Z8dbg_stopv
L3664:
	movl	-52(%ebp), %edx
	leal	-28(%ebp), %eax
	movl	%edx, (%esp)
	movl	$2, -152(%ebp)
	movl	%eax, %ecx
	call	__ZN7c_Stack9p_ToArrayEv
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_bb_app__displayModes, (%esp)
	movl	$5, -152(%ebp)
	call	__Z9gc_assignIP13c_DisplayModeEvR5ArrayIT_ES4_
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	$LC839, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3665
	movl	$2, -152(%ebp)
	call	__Z8dbg_stopv
L3665:
	movl	_bb_app__game, %eax
	movl	(%eax), %eax
	addl	$88, %eax
	movl	(%eax), %eax
	movl	_bb_app__game, %edx
	movl	$2, -152(%ebp)
	movl	%edx, %ecx
	call	*%eax
	movl	%eax, -56(%ebp)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	-56(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC385, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIP13BBDisplayModeE4infoE, (%eax)
	movl	$LC840, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3666
	call	__Z8dbg_stopv
L3666:
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	je	L3667
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC841, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3668
	movl	$6, -152(%ebp)
	call	__Z8dbg_stopv
L3668:
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -160(%ebp)
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -164(%ebp)
	movl	$24, (%esp)
	movl	$6, -152(%ebp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -168(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_DisplayModeC1Ev
	movl	-160(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	-164(%ebp), %edi
	movl	%edi, (%esp)
	movl	-168(%ebp), %ecx
	call	__ZN13c_DisplayMode5m_newEii
	subl	$8, %esp
	movl	%eax, 4(%esp)
	movl	$_bb_app__desktopMode, (%esp)
	call	__Z9gc_assignI13c_DisplayModeS0_EvRPT_PT0_
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	jmp	L3669
L3667:
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkC1Ev
	movl	$LC842, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3670
	movl	$7, -152(%ebp)
	call	__Z8dbg_stopv
L3670:
	movl	$7, -152(%ebp)
	call	__Z19bb_app_DeviceHeightv
	movl	%eax, -160(%ebp)
	call	__Z18bb_app_DeviceWidthv
	movl	%eax, -164(%ebp)
	movl	$24, (%esp)
	call	__ZN9gc_objectnwEj
	movl	%eax, -168(%ebp)
	movl	%eax, %ecx
	call	__ZN13c_DisplayModeC1Ev
	movl	-160(%ebp), %ebx
	movl	%ebx, 4(%esp)
	movl	-164(%ebp), %esi
	movl	%esi, (%esp)
	movl	-168(%ebp), %ecx
	call	__ZN13c_DisplayMode5m_newEii
	subl	$8, %esp
	movl	%eax, 4(%esp)
	movl	$_bb_app__desktopMode, (%esp)
	call	__Z9gc_assignI13c_DisplayModeS0_EvRPT_PT0_
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
L3669:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13BBDisplayModeED1Ev
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	jmp	L3688
L3682:
	movl	%eax, -160(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-160(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	L3672
L3681:
	movl	%eax, -160(%ebp)
L3672:
	leal	-64(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-160(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	L3673
L3683:
	movl	%eax, -160(%ebp)
	leal	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13c_DisplayModeED1Ev
	movl	-160(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	L3673
L3684:
	movl	%eax, -160(%ebp)
	leal	-92(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-160(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	L3673
L3685:
	movl	%eax, -160(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN7dbg_blkD1Ev
	movl	-160(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	L3673
L3680:
	movl	%eax, -160(%ebp)
L3673:
	leal	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN5ArrayIP13BBDisplayModeED1Ev
	movl	-160(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	L3677
L3678:
	leal	24(%ebp), %ebp
	movl	-148(%ebp), %eax
	cmpl	$6, -152(%ebp)
	ja	L3686
	movl	-152(%ebp), %edx
	sall	$2, %edx
	addl	$L3687, %edx
	movl	(%edx), %edx
	jmp	*%edx
	.section .rdata,"dr"
	.align 4
L3687:
	.long	L3679
	.long	L3680
	.long	L3681
	.long	L3682
	.long	L3683
	.long	L3684
	.long	L3685
	.text
L3686:
		.word	0x0b0f
L3679:
	movl	%eax, -160(%ebp)
L3677:
	leal	-40(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -152(%ebp)
	call	__Unwind_SjLj_Resume
L3688:
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
LLSDA1320:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1320-LLSDACSB1320
LLSDACSB1320:
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
LLSDACSE1320:
	.text
	.globl	_bb_graphics_renderDevice
	.bss
	.align 4
_bb_graphics_renderDevice:
	.space 4
	.section .rdata,"dr"
LC843:
	.ascii "SetMatrix\0"
	.align 4
LC844:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<312>\0"
	.align 4
LC845:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<313>\0"
	.align 4
LC846:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<314>\0"
	.align 4
LC847:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<315>\0"
	.align 4
LC848:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<316>\0"
	.align 4
LC849:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<317>\0"
	.align 4
LC850:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<318>\0"
	.align 4
LC851:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<319>\0"
	.text
	.globl	__Z21bb_graphics_SetMatrixffffff
	.def	__Z21bb_graphics_SetMatrixffffff;	.scl	2;	.type	32;	.endef
__Z21bb_graphics_SetMatrixffffff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1327, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3704, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC843, (%esp)
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
	movl	$LC469, (%eax)
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
	movl	$LC470, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC507, (%eax)
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
	movl	$LC508, (%eax)
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
	movl	$LC420, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	28(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC421, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC844, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3690
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3690:
	movl	_bb_graphics_context, %edx
	movl	8(%ebp), %eax
	movl	%eax, 32(%edx)
	movl	$LC845, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3691
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3691:
	movl	_bb_graphics_context, %edx
	movl	12(%ebp), %eax
	movl	%eax, 36(%edx)
	movl	$LC846, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3692
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3692:
	movl	_bb_graphics_context, %edx
	movl	16(%ebp), %eax
	movl	%eax, 40(%edx)
	movl	$LC847, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3693
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3693:
	movl	_bb_graphics_context, %edx
	movl	20(%ebp), %eax
	movl	%eax, 44(%edx)
	movl	$LC848, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3694
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3694:
	movl	_bb_graphics_context, %edx
	movl	24(%ebp), %eax
	movl	%eax, 48(%edx)
	movl	$LC849, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3695
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3695:
	movl	_bb_graphics_context, %edx
	movl	28(%ebp), %eax
	movl	%eax, 52(%edx)
	movl	$LC850, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3696
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3696:
	movl	_bb_graphics_context, %edx
	flds	8(%ebp)
	fld1
	fucomip	%st(1), %st
	jp	L3708
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L3697
	flds	12(%ebp)
	fldz
	fucomip	%st(1), %st
	jp	L3709
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L3697
	flds	16(%ebp)
	fldz
	fucomip	%st(1), %st
	jp	L3710
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L3697
	flds	20(%ebp)
	fld1
	fucomip	%st(1), %st
	jp	L3711
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L3697
	flds	24(%ebp)
	fldz
	fucomip	%st(1), %st
	jp	L3712
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L3697
	flds	28(%ebp)
	fldz
	fucomip	%st(1), %st
	jp	L3713
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L3706
	jmp	L3697
L3708:
	fstp	%st(0)
	jmp	L3697
L3709:
	fstp	%st(0)
	jmp	L3697
L3710:
	fstp	%st(0)
	jmp	L3697
L3711:
	fstp	%st(0)
	jmp	L3697
L3712:
	fstp	%st(0)
	jmp	L3697
L3713:
	fstp	%st(0)
L3697:
	movl	$1, %eax
	jmp	L3700
L3706:
	movl	$0, %eax
L3700:
	movl	%eax, 56(%edx)
	movl	$LC851, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3701
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3701:
	movl	_bb_graphics_context, %eax
	movl	$1, 60(%eax)
	movl	$0, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L3707
L3704:
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
L3707:
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
LLSDA1327:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1327-LLSDACSB1327
LLSDACSB1327:
	.uleb128 0
	.uleb128 0
LLSDACSE1327:
	.text
	.section	.text$_ZN14dbg_var_type_tI5ArrayIfEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN14dbg_var_type_tI5ArrayIfEEC1Ev
	.def	__ZN14dbg_var_type_tI5ArrayIfEEC1Ev;	.scl	2;	.type	32;	.endef
__ZN14dbg_var_type_tI5ArrayIfEEC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN12dbg_var_typeC2Ev
	movl	-4(%ebp), %eax
	movl	$__ZTV14dbg_var_type_tI5ArrayIfEE+8, (%eax)
	leave
	ret
	.section .rdata,"dr"
LC852:
	.ascii "m\0"
	.align 4
LC853:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<308>\0"
	.text
	.globl	__Z22bb_graphics_SetMatrix25ArrayIfE
	.def	__Z22bb_graphics_SetMatrix25ArrayIfE;	.scl	2;	.type	32;	.endef
__Z22bb_graphics_SetMatrix25ArrayIfE:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1328, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3719, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC843, (%esp)
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
	movl	$LC852, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tI5ArrayIfEE4infoE, (%eax)
	movl	$LC853, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3716
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3716:
	movl	$5, (%esp)
	movl	$1, -88(%ebp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfE2AtEi
	subl	$4, %esp
	flds	(%eax)
	fstps	-96(%ebp)
	movl	$4, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfE2AtEi
	subl	$4, %esp
	flds	(%eax)
	fstps	-100(%ebp)
	movl	$3, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfE2AtEi
	subl	$4, %esp
	flds	(%eax)
	fstps	-104(%ebp)
	movl	$2, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfE2AtEi
	subl	$4, %esp
	flds	(%eax)
	fstps	-108(%ebp)
	movl	$1, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfE2AtEi
	subl	$4, %esp
	flds	(%eax)
	fstps	-112(%ebp)
	movl	$0, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN5ArrayIfE2AtEi
	subl	$4, %esp
	movl	(%eax), %eax
	flds	-96(%ebp)
	fstps	20(%esp)
	flds	-100(%ebp)
	fstps	16(%esp)
	flds	-104(%ebp)
	fstps	12(%esp)
	flds	-108(%ebp)
	fstps	8(%esp)
	flds	-112(%ebp)
	fstps	4(%esp)
	movl	%eax, (%esp)
	call	__Z21bb_graphics_SetMatrixffffff
	movl	$0, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L3721
L3719:
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
L3721:
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
LLSDA1328:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1328-LLSDACSB1328
LLSDACSB1328:
	.uleb128 0
	.uleb128 0
LLSDACSE1328:
	.text
	.section .rdata,"dr"
LC854:
	.ascii "SetColor\0"
LC855:
	.ascii "g\0"
LC856:
	.ascii "b\0"
	.align 4
LC857:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<254>\0"
	.align 4
LC858:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<255>\0"
	.align 4
LC859:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<256>\0"
	.align 4
LC860:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<257>\0"
	.text
	.globl	__Z20bb_graphics_SetColorfff
	.def	__Z20bb_graphics_SetColorfff;	.scl	2;	.type	32;	.endef
__Z20bb_graphics_SetColorfff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1332, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %edi
	movl	%edi, (%eax)
	movl	$L3729, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC854, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC72, (%eax)
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
	movl	$LC855, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC856, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC857, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3723
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3723:
	movl	_bb_graphics_context, %edx
	movl	8(%ebp), %eax
	movl	%eax, 64(%edx)
	movl	$LC858, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3724
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3724:
	movl	_bb_graphics_context, %edx
	movl	12(%ebp), %eax
	movl	%eax, 68(%edx)
	movl	$LC859, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3725
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3725:
	movl	_bb_graphics_context, %edx
	movl	16(%ebp), %eax
	movl	%eax, 72(%edx)
	movl	$LC860, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3726
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3726:
	movl	_bb_graphics_renderDevice, %eax
	movl	(%eax), %eax
	addl	$64, %eax
	movl	(%eax), %esi
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	_bb_graphics_renderDevice, %ebx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, -88(%ebp)
	movl	%ebx, %ecx
	call	*%esi
	subl	$12, %esp
	movl	$0, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L3731
L3729:
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
L3731:
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
LLSDA1332:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1332-LLSDACSB1332
LLSDACSB1332:
	.uleb128 0
	.uleb128 0
LLSDACSE1332:
	.text
	.section .rdata,"dr"
LC861:
	.ascii "SetAlpha\0"
	.align 4
LC862:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<271>\0"
	.align 4
LC863:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<272>\0"
	.text
	.globl	__Z20bb_graphics_SetAlphaf
	.def	__Z20bb_graphics_SetAlphaf;	.scl	2;	.type	32;	.endef
__Z20bb_graphics_SetAlphaf:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1333, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L3737, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC861, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %edi
	movl	%edi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC505, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC862, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3733
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3733:
	movl	_bb_graphics_context, %edx
	movl	8(%ebp), %eax
	movl	%eax, 76(%edx)
	movl	$LC863, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3734
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3734:
	movl	_bb_graphics_renderDevice, %eax
	movl	(%eax), %eax
	addl	$60, %eax
	movl	(%eax), %ebx
	movl	8(%ebp), %eax
	movl	_bb_graphics_renderDevice, %edx
	movl	%eax, (%esp)
	movl	$1, -88(%ebp)
	movl	%edx, %ecx
	call	*%ebx
	subl	$4, %esp
	movl	$0, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L3739
L3737:
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
L3739:
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
LLSDA1333:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1333-LLSDACSB1333
LLSDACSB1333:
	.uleb128 0
	.uleb128 0
LLSDACSE1333:
	.text
	.section .rdata,"dr"
LC864:
	.ascii "SetBlend\0"
	.align 4
LC865:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<280>\0"
	.align 4
LC866:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<281>\0"
	.text
	.globl	__Z20bb_graphics_SetBlendi
	.def	__Z20bb_graphics_SetBlendi;	.scl	2;	.type	32;	.endef
__Z20bb_graphics_SetBlendi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1334, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %esi
	movl	%esi, (%eax)
	movl	$L3745, %edx
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
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	8(%ebp), %edi
	movl	%edi, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC506, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIiE4infoE, (%eax)
	movl	$LC865, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3741
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3741:
	movl	_bb_graphics_context, %eax
	movl	8(%ebp), %edx
	movl	%edx, 80(%eax)
	movl	$LC866, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3742
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3742:
	movl	_bb_graphics_renderDevice, %eax
	movl	(%eax), %eax
	addl	$68, %eax
	movl	(%eax), %ebx
	movl	8(%ebp), %edx
	movl	_bb_graphics_renderDevice, %eax
	movl	%edx, (%esp)
	movl	$1, -88(%ebp)
	movl	%eax, %ecx
	call	*%ebx
	subl	$4, %esp
	movl	$0, -96(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	L3747
L3745:
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
L3747:
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
LLSDA1334:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1334-LLSDACSB1334
LLSDACSB1334:
	.uleb128 0
	.uleb128 0
LLSDACSE1334:
	.text
	.section .rdata,"dr"
LC867:
	.ascii "SetScissor\0"
	.align 4
LC868:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<289>\0"
	.align 4
LC869:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<290>\0"
	.align 4
LC870:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<291>\0"
	.align 4
LC871:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<292>\0"
	.align 4
LC872:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<293>\0"
	.text
	.globl	__Z22bb_graphics_SetScissorffff
	.def	__Z22bb_graphics_SetScissorffff;	.scl	2;	.type	32;	.endef
__Z22bb_graphics_SetScissorffff:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1335, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3756, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC867, (%esp)
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
	movl	$LC209, (%eax)
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
	movl	$LC210, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	leal	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$LC483, (%eax)
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
	movl	$LC484, (%eax)
	movl	__ZL11dbg_var_ptr, %eax
	leal	4(%eax), %edx
	movl	%edx, __ZL11dbg_var_ptr
	movl	$__ZN14dbg_var_type_tIfE4infoE, (%eax)
	movl	$LC868, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3749
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3749:
	movl	_bb_graphics_context, %edx
	movl	8(%ebp), %eax
	movl	%eax, 84(%edx)
	movl	$LC869, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3750
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3750:
	movl	_bb_graphics_context, %edx
	movl	12(%ebp), %eax
	movl	%eax, 88(%edx)
	movl	$LC870, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3751
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3751:
	movl	_bb_graphics_context, %edx
	movl	16(%ebp), %eax
	movl	%eax, 92(%edx)
	movl	$LC871, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3752
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3752:
	movl	_bb_graphics_context, %edx
	movl	20(%ebp), %eax
	movl	%eax, 96(%edx)
	movl	$LC872, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3753
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3753:
	movl	_bb_graphics_renderDevice, %eax
	movl	(%eax), %eax
	addl	$72, %eax
	movl	(%eax), %edi
	flds	20(%ebp)
	fnstcw	-94(%ebp)
	movzwl	-94(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -96(%ebp)
	fldcw	-96(%ebp)
	fistpl	-100(%ebp)
	fldcw	-94(%ebp)
	movl	-100(%ebp), %esi
	flds	16(%ebp)
	fldcw	-96(%ebp)
	fistpl	-100(%ebp)
	fldcw	-94(%ebp)
	movl	-100(%ebp), %ebx
	flds	12(%ebp)
	fldcw	-96(%ebp)
	fistpl	-100(%ebp)
	fldcw	-94(%ebp)
	movl	-100(%ebp), %ecx
	flds	8(%ebp)
	fldcw	-96(%ebp)
	fistpl	-100(%ebp)
	fldcw	-94(%ebp)
	movl	-100(%ebp), %edx
	movl	_bb_graphics_renderDevice, %eax
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	$1, -88(%ebp)
	movl	%eax, %ecx
	call	*%edi
	subl	$16, %esp
	movl	$0, -104(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-104(%ebp), %eax
	movl	%eax, -104(%ebp)
	jmp	L3758
L3756:
	leal	24(%ebp), %ebp
	movl	-84(%ebp), %eax
	movl	%eax, -104(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN8dbg_funcD1Ev
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$-1, -88(%ebp)
	call	__Unwind_SjLj_Resume
L3758:
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-104(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.gcc_except_table,"w"
LLSDA1335:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1335-LLSDACSB1335
LLSDACSB1335:
	.uleb128 0
	.uleb128 0
LLSDACSE1335:
	.text
	.section .rdata,"dr"
LC873:
	.ascii "BeginRender\0"
	.align 4
LC874:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<225>\0"
	.align 4
LC875:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<226>\0"
	.align 4
LC876:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<227>\0"
	.align 4
LC877:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<228>\0"
	.align 4
LC878:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<229>\0"
	.align 4
LC879:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<230>\0"
	.align 4
LC880:
	.ascii "C:/MonkeyXFree84f/modules/mojo/graphics.monkey<231>\0"
	.text
	.globl	__Z23bb_graphics_BeginRenderv
	.def	__Z23bb_graphics_BeginRenderv;	.scl	2;	.type	32;	.endef
__Z23bb_graphics_BeginRenderv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	$___gxx_personality_sj0, -68(%ebp)
	movl	$LLSDA1336, -64(%ebp)
	leal	-60(%ebp), %eax
	leal	-24(%ebp), %ebx
	movl	%ebx, (%eax)
	movl	$L3769, %edx
	movl	%edx, 4(%eax)
	movl	%esp, 8(%eax)
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Register
	leal	-36(%ebp), %eax
	movl	$LC873, (%esp)
	movl	%eax, %ecx
	call	__ZN8dbg_funcC1EPKc
	subl	$4, %esp
	movl	$LC874, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3760
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3760:
	movl	_bb_graphics_device, %eax
	movl	%eax, 4(%esp)
	movl	$_bb_graphics_renderDevice, (%esp)
	call	__Z9gc_assignI12gxtkGraphicsS0_EvRPT_PT0_
	movl	$LC875, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3761
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3761:
	movl	_bb_graphics_context, %eax
	movl	$0, 28(%eax)
	movl	$LC876, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3762
	movl	$1, -88(%ebp)
	call	__Z8dbg_stopv
L3762:
	movl	LC45, %eax
	movl	%eax, 20(%esp)
	movl	LC45, %eax
	movl	%eax, 16(%esp)
	movl	LC46, %eax
	movl	%eax, 12(%esp)
	movl	LC45, %eax
	movl	%eax, 8(%esp)
	movl	LC45, %eax
	movl	%eax, 4(%esp)
	movl	LC46, %eax
	movl	%eax, (%esp)
	movl	$1, -88(%ebp)
	call	__Z21bb_graphics_SetMatrixffffff
	movl	$LC877, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3763
	call	__Z8dbg_stopv
L3763:
	movl	LC63, %eax
	movl	%eax, 8(%esp)
	movl	LC63, %eax
	movl	%eax, 4(%esp)
	movl	LC63, %eax
	movl	%eax, (%esp)
	movl	$1, -88(%ebp)
	call	__Z20bb_graphics_SetColorfff
	movl	$LC878, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3764
	call	__Z8dbg_stopv
L3764:
	movl	LC46, %eax
	movl	%eax, (%esp)
	movl	$1, -88(%ebp)
	call	__Z20bb_graphics_SetAlphaf
	movl	$LC879, _dbg_info
	movl	__ZL11dbg_suspend, %eax
	testl	%eax, %eax
	jle	L3765
	call	__Z8dbg_stopv
L3765:
	movl	$0, (%esp)
	jle	L3766