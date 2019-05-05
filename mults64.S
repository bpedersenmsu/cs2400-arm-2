		;		ARM Programming Assignment #2: 32 bit signed integer multiplier
		;
		;		Write a 32-bit SIGNED multiplier. It should take only a small modification to your
		;		unsigned version. Remember (-6)*(-6) = 36, (-6)*6 = -36.
		;		Use the standard shift-and-add operation.
		;		Use the two numbers as an example but write it so it works for any two 16-bit numbers.
		;		Write the result in the provided "fill" word.
		;		Indicate if there was a high-bit carry using the provided "fill" word.
		
		;		Your code here
		ADR		r0, lower
		LDR		r12, [R0]
		LDR		r11, [R0, #4]
		BL		setMasks
		
		AND		R2, R12, R9
		AND		r3, R12, R8
		AND		R4, R11, R9
		AND		r5, R11, R8
		LSR		R3, R3, #16
		LSR		R5, R5, #16
		;		R2 = 1st number, 1st 16 bits
		;		R3 = 1st number, 2nd 16 bits
		;		R4 = 2nd number, 1st 16 bits
		;		R5 = 2nd number, 2nd 16 bits
		
		ADR		R13, temp
		
		BL		setMasks
		MOV		R6, R2
		MOV		R7, R4
		BL		multiply
		STR		R11, [R13]
		
		
		BL		setMasks
		MOV		R6, R3
		MOV		R7, R4
		BL		multiply
		STR		R11, [R13, #4]
		
		
		BL		setMasks
		MOV		R6, R2
		MOV		R7, R5
		BL		multiply
		STR		R11, [R13, #8]
		
		
		BL		setMasks
		MOV		R6, R3
		MOV		R7, R5
		BL		multiply
		STR		R11, [R13, #12]
		BL		setMasks
		BL		tempFin
		ADR		R13, tempRes
		STR		R2, [R13]
		STR		R4, [R13, #4]
		
		;		Start next round
		
		ADR		R0, lower
		ADR		R1, upper
		LDR		r12, [R1]
		LDR		r11, [R0, #4]
		BL		setMasks
		
		AND		R2, R12, R9
		AND		r3, R12, R8
		AND		R4, R11, R9
		AND		r5, R11, R8
		LSR		R3, R3, #16
		LSR		R5, R5, #16
		;		R2 = 1st number, 1st 16 bits
		;		R3 = 1st number, 2nd 16 bits
		;		R4 = 2nd number, 1st 16 bits
		;		R5 = 2nd number, 2nd 16 bits
		
		ADR		R13, temp
		
		BL		setMasks
		MOV		R6, R2
		MOV		R7, R4
		BL		multiply
		STR		R11, [R13]
		
		
		BL		setMasks
		MOV		R6, R3
		MOV		R7, R4
		BL		multiply
		STR		R11, [R13, #4]
		
		
		BL		setMasks
		MOV		R6, R2
		MOV		R7, R5
		BL		multiply
		STR		R11, [R13, #8]
		
		
		BL		setMasks
		MOV		R6, R3
		MOV		R7, R5
		BL		multiply
		STR		R11, [R13, #12]
		BL		setMasks
		ADR		R13, tempRes
		BL		tempFin
		STR		R2, [R13, #8]
		STR		R4, [R13, #12]
		
		;		Start next round
		
		ADR		R0, lower
		ADR		R1, upper
		LDR		r12, [R0]
		LDR		r11, [R1, #4]
		BL		setMasks
		
		AND		R2, R12, R9
		AND		r3, R12, R8
		AND		R4, R11, R9
		AND		r5, R11, R8
		LSR		R3, R3, #16
		LSR		R5, R5, #16
		;		R2 = 1st number, 1st 16 bits
		;		R3 = 1st number, 2nd 16 bits
		;		R4 = 2nd number, 1st 16 bits
		;		R5 = 2nd number, 2nd 16 bits
		
		ADR		R13, temp
		
		BL		setMasks
		MOV		R6, R2
		MOV		R7, R4
		BL		multiply
		STR		R11, [R13]
		
		
		BL		setMasks
		MOV		R6, R3
		MOV		R7, R4
		BL		multiply
		STR		R11, [R13, #4]
		
		
		BL		setMasks
		MOV		R6, R2
		MOV		R7, R5
		BL		multiply
		STR		R11, [R13, #8]
		
		
		BL		setMasks
		MOV		R6, R3
		MOV		R7, R5
		BL		multiply
		STR		R11, [R13, #12]
		BL		setMasks
		ADR		R13, tempRes
		BL		tempFin
		STR		R2, [R13, #16]
		STR		R4, [R13, #20]
		
		;		Start next round
		
		ADR		R1, upper
		LDR		r12, [R1]
		LDR		r11, [R1, #4]
		BL		setMasks
		
		AND		R2, R12, R9
		AND		r3, R12, R8
		AND		R4, R11, R9
		AND		r5, R11, R8
		LSR		R3, R3, #16
		LSR		R5, R5, #16
		;		R2 = 1st number, 1st 16 bits
		;		R3 = 1st number, 2nd 16 bits
		;		R4 = 2nd number, 1st 16 bits
		;		R5 = 2nd number, 2nd 16 bits
		
		ADR		R13, temp
		
		BL		setMasks
		MOV		R6, R2
		MOV		R7, R4
		BL		multiply
		STR		R11, [R13]
		
		
		BL		setMasks
		MOV		R6, R3
		MOV		R7, R4
		BL		multiply
		STR		R11, [R13, #4]
		
		
		BL		setMasks
		MOV		R6, R2
		MOV		R7, R5
		BL		multiply
		STR		R11, [R13, #8]
		
		
		BL		setMasks
		MOV		R6, R3
		MOV		R7, R5
		BL		multiply
		STR		R11, [R13, #12]
		BL		setMasks
		ADR		R13, tempRes
		BL		tempFin
		STR		R2, [R13, #24]
		STR		R4, [R13, #28]
		END
		
setMasks	ADR		R0, mask
		LDR		R10, [R0]
		ADR		R0, maskone
		LDR		R9, [R0]
		ADR		R0, masktwo
		LDR		R8, [R0]
		MOV		PC, LR
		;		R10 = mask
		;		R9 = maskone
		;		R8 = masktwo
		
multiply	MOV		R8, R10 ; set R11 = to initial mask
		MOV		R9, #16
		MOV		R10, #0
		MOV		R11, #0
loop		AND		R12, R7, R8
		CMP		R10, R12
		ADDmi	R11, R11, R6
		LSL		R6, R6, #1
		SUBS		R9, R9, #1
		LSL		R8, R8, #1
		BNE		loop
		MOV		PC, LR
		
tempFin	LDR		R2, [R13]
		LDR		R3, [R13, #4]
		LDR		R5, [R13, #8]
		LDR		R4, [R13, #12]
		AND		R5, R3, R9
		AND		R6, R3, R8
		LSL		R5, R5, #16
		LSR		R6, R6, #16
		ADDs		R2, R2, R5
		ADDCS	R4, R4, #1
		ADDs		R4, R4, R6
		MOV		PC, LR
		
		
upper	DCD		0xA0BCFF0D, 0xFFF0ADEA
lower	DCD		0xFFF1AD2A, 0xA0ACEF0D
		
mask		DCD		0x00000001
maskone	DCD		0x0000FFFF
masktwo	DCD		0xFFFF0000
		
result	FILL		16
carry	FILL		4
		
temp		FILL		16
		
tempRes	FILL		32
