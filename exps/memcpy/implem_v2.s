// Move doubleword by doubleword (32b)
// Size multiple of 4 in example so no extra bits to handle	
	.text
	.p2align 4,,15
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
	testq %rdx, %rdx
	je .L2
	xorq %rax, %rax
.L1:
	movl (%rsi, %rax), %ecx
	movl %ecx, (%rdi, %rax)
	addq $4, %rax
	cmpq %rax, %rdx
	jne .L1

.L2:
	ret
