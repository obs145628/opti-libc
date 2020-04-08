
// void my_memclear(void *ptr, size_t nbytes)
// rep stoq store value in rax at addr %rdi and increment rdi. Done rcx time
// Isn't faster than stosb, I think because hardware move a lot more than 1b at a time	
	.globl	my_memclear
	.type	my_memclear, @function
my_memclear:
	movq %rsi, %rcx
	shrq $3, %rcx
	xorq %rax, %rax
	rep stosq %rax, %es:(%rdi)
	ret

	
