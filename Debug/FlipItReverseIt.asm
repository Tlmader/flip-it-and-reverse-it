TITLE FlipItReverseIt(FlipItReverseIt.asm)

; Description: Flips and reverses a String
;
; Revision date: 1/27/2015

INCLUDE Irvine32.inc

.data
	myStr BYTE "Got a Lamborghini so I drive faster", 0
	myStrSize = ($ - myStr) - 1			; myStr's size
	target BYTE SIZEOF myStr DUP(0)

.code
	main PROC
	mov esi,0
	mov ecx,myStrSize
L1:
	mov al,myStr[esi]					; Move each character from myStr to al
	mov target[ecx - 1],al				; Start target at end
	inc esi								; Increment esi
	loop L1

	mov edx,OFFSET target
	call WriteString					; Print target

	exit
	main ENDP
	END main