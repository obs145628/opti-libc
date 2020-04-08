
// void my_memclear(void *ptr, size_t nbytes)
// rep stos store value in al at addr %rdi and increment rdi. Done rcx time
	.globl	my_memclear
	.type	my_memclear, @function
my_memclear:
	movq %rsi, %rcx
	xorl %eax, %eax
	rep stos %al, %es:(%rdi)
	ret

	
