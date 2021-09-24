; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

.data

str1 BYTE "hello world", 0


.code
main proc
	mov	eax, blue + (white * 16) ;
	mov ecx, 4

	L1: call SetTextColor

	mov edx, OFFSET str1
	call WriteString

	call Crlf

	add eax, 2

	loop L1			

	invoke ExitProcess,0
main endp
end main