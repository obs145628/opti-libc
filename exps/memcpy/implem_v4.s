// Move quadword by quadword (64b)
// Do 4 times in one loop
// Slower than 1 per loop	
// Size multiple of 32 in example so no extra bits to handle
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
	movq 8(%rsi, %rax), %rcx
	movq %rcx, 8(%rdi, %rax)
	movq 16(%rsi, %rax), %rcx
	movq %rcx, 16(%rdi, %rax)
	movq 24(%rsi, %rax), %rcx
	movq %rcx, 24(%rdi, %rax)
	addq $32, %rax
	cmpq %rax, %rdx
	jne .L1

.L2:
	ret
