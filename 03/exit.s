# %eax holds the system call number
# %ebx holds the return status (specific to the syscall being used (1))
  .section .data

  .section .text

  .globl _start
_start:
  movl $1, %eax
  # this is the linux kernel command number (syscall) for exiting a program
  movl $0, %ebx
  # this is the status number we will return to the operating system
  int $0x80
