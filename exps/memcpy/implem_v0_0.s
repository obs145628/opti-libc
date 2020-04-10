
// Copy byte by bytes, direct translation of for loop
	.text
	.p2align 4,,15
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
	xorq %rax, %rax
.L1:
	cmpq %rax, %rdx
	je .L2

	movzbl (%rsi, %rax), %ecx
	movb %cl, (%rdi, %rax)
	addq $1, %rax
	jmp .L1

.L2:
	ret
