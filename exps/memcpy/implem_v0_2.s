
// Increment src and dst pointers, no need for cmp
	
	.text
	.p2align 4,,15
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
	testq %rdx, %rdx
	je .L2
.L1:
	movzbl (%rsi), %ecx
	movb %cl, (%rdi)
	addq $1, %rsi
	addq $1, %rdi
	subq $1, %rdx
	jne .L1

.L2:
	ret
