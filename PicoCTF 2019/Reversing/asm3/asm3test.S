asm3:
	<+0>:	push   ebp
	<+1>:	mov    ebp,esp
	<+3>:	xor    eax,eax
	<+5>:	mov    ah,BYTE PTR [ebp+0x9]
	<+8>:	shl    ax,0x10
	<+12>:	sub    al,BYTE PTR [ebp+0xd]
	<+15>:	add    ah,BYTE PTR [ebp+0xe]
	<+18>:	xor    ax,WORD PTR [ebp+0x12]
	<+22>:	nop
	<+23>:	pop    ebp
	<+24>:	ret    

script:
from __future__ import print_function
from unicorn import *
from unicorn.x86_const import *
from pwn import *

def assem3():
    X86_CODE32 = asm(
        'xor al, al;'
        'mov    ah,BYTE PTR [ebp+0x9];'
        'shl    ax,0x10;'
        'sub    al,BYTE PTR [ebp+0xd];'
        'add    ah,BYTE PTR [ebp+0xe];'
        'xor    ax,WORD PTR [ebp+0x12]',
        arch='i386', os='linux')

    ADDRESS = 0x1000000
    STACK = 0x2000000
    print("Emulate i386 code")
    try:
        mu = Uc(UC_ARCH_X86, UC_MODE_32)

        mu.mem_map(ADDRESS, 2 * 1024 * 1024)
        mu.mem_map(STACK, 2 * 1024 * 1024)

        mu.mem_write(ADDRESS, X86_CODE32)
        mu.mem_write(STACK, '\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a' + p32(0xfe8cf7a4) + p32(0xf55018af) + p32(0xb8c70926))

        mu.reg_write(UC_X86_REG_EBP, STACK)

        mu.emu_start(ADDRESS, ADDRESS + len(X86_CODE32))

        print("Emulation done. Below is the CPU context")

        r_eax = mu.reg_read(UC_X86_REG_EAX)
        r_ebx = mu.reg_read(UC_X86_REG_EBX)
        print(">>> EAX = 0x%x" % r_eax)  # 0x7771
    except UcError as e:
        print("ERROR: %s" % e)

if __name__ == '__main__':
    assem3()