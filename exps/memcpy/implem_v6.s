// Move quadword by quadword (64b)
// Do 8 times in one loop
// Slower than one per loop
// Size multiple of 64 in example so no extra bits to handle
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
	movq 8(%rsi, %rax), %r8
	movq 16(%rsi, %rax), %r9
	movq 24(%rsi, %rax), %r10
	movq 32(%rsi, %rax), %r11
	movq 40(%rsi, %rax), %r12
	movq 48(%rsi, %rax), %r13
	movq 56(%rsi, %rax), %r14
	
	movq %rcx, (%rdi, %rax)
	movq %r8, 8(%rdi, %rax)
	movq %r9, 16(%rdi, %rax)
	movq %r10, 24(%rdi, %rax)
	movq %r11, 32(%rdi, %rax)
	movq %r12, 40(%rdi, %rax)
	movq %r13, 48(%rdi, %rax)
	movq %r14, 56(%rdi, %rax)
	
	addq $64, %rax
	cmpq %rax, %rdx
	jne .L1

.L2:
	ret
