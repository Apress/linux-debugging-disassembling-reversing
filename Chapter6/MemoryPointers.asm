.global	_start

.data

a:  .int 0
b:  .int 0
pa: .quad 0
pb: .quad b

.text

main:
_start:
	lea  a, %rax
	mov  %rax, pa 

	mov  pa, %rax
	movl $1, (%rax)  

	mov  pb, %rbx
	movl $1, (%rbx)

	mov (%rax), %ecx 
	add (%rbx), %ecx 
	mov %ecx, (%rbx)

	mov $0x3c, %rax               
	mov $0, %rdi             
	syscall		

