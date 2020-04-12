
// std::uint64_t get_tsc();
	.text
	.p2align 4,,15
	.globl	get_tsc
	.type	get_tsc, @function
get_tsc:
	rdtscp
	shlq $32, %rdx
	movl %eax, %edx
	movq %rdx, %rax
	ret
