
// Move words by word (16b)
// Size multiple of 2 in example so no extra bits to handle	
	.text
	.p2align 4,,15
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
	testq %rdx, %rdx
	je .L2
	xorq %rax, %rax
.L1:
	movzwl (%rsi, %rax), %ecx
	movw %cx, (%rdi, %rax)
	addq $2, %rax
	cmpq %rax, %rdx
	jne .L1

.L2:
	ret
