.global	_start

.data

a: .int 0
b: .int 0

.text

main:
_start:
	lea a, %rax
	movl $1, (%rax)

	lea b, %rbx
	movl $1, (%rbx)

	mov (%rax), %edx
	add %edx, (%rbx)

	incl (%rax)

	mov (%rax), %eax
	imul (%rbx), %eax
	mov %eax, (%rbx) 

	mov $0x3c, %rax               
	mov $0, %rdi             
	syscall		
