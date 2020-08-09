asm2:
	<+0>:	push   ebp
	<+1>:	mov    ebp,esp
	<+3>:	sub    esp,0x10
	<+6>:	mov    eax,DWORD PTR [ebp+0xc]
	<+9>:	mov    DWORD PTR [ebp-0x4],eax
	<+12>:	mov    eax,DWORD PTR [ebp+0x8]
	<+15>:	mov    DWORD PTR [ebp-0x8],eax
	<+18>:	jmp    0x50c <asm2+31>
	<+20>:	add    DWORD PTR [ebp-0x4],0x1
	<+24>:	add    DWORD PTR [ebp-0x8],0xcb
	<+31>:	cmp    DWORD PTR [ebp-0x8],0xb693
	<+38>:	jle    0x501 <asm2+20>
	<+40>:	mov    eax,DWORD PTR [ebp-0x4]
	<+43>:	leave  
	<+44>:	ret    

script to get solution:
def assem2():
    var1 = 0x10 	 	
    var2 = 0x18 	

    while (var1<0xb693): 	
        var2+=0x1		
        var1+=0xcb		

    print("picoCTF{"+hex(var2)+"}")

if __name__ == '__main__':
	assem2()