
// Move condition to the end to remove one jump
// Need to add condition at the beginning for base case	
	
	.text
	.p2align 4,,15
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
	testq %rdx, %rdx
	je .L2
	xorq %rax, %rax
.L1:
	movzbl (%rsi, %rax), %ecx
	movb %cl, (%rdi, %rax)
	addq $1, %rax
	cmpq %rax, %rdx
	jne .L1

.L2:
	ret
