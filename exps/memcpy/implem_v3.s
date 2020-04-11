// Move quadword by quadword (64b)
// Size multiple of 8 in example so no extra bits to handle	
	.text
	.p2align 4,,15
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
	testq %rdx, %rdx
	je .L2
	xorq %rax, %rax
.L1:
	movq (%rsi, %rax), %rcx
	movq %rcx, (%rdi, %rax)
	addq $8, %rax
	cmpq %rax, %rdx
	jne .L1

.L2:
	ret
