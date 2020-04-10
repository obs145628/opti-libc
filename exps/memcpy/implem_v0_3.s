
// Copy backwards to remove one cmp
	
	.text
	.p2align 4,,15
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
	testq %rdx, %rdx
	je .L2

.L1:
	subq $1, %rdx
	movzbl (%rsi, %rdx), %ecx
	movb %cl, (%rdi, %rdx)
	jns .L1

.L2:
	ret
