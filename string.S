		;		ARM Programming Assignment #2: Writing C-strings
		;
		;		Write a program that assembles the values in chars*
		;		into a C-style string. A C-style string is an array
		;		of byte-size characters, terminated by a NULL (0x0).
		;		Write the C-string to the FILL memory at 'string'.
		;		Note: It's up to you to declare the correct number
		;		of bytes to hold the result.
		
		;		Your code here
		
		ADR		R13, string
		MOV		R12, #0
		
		ADR		R0, chars0
		MOV		R2, #11
		BL		addChars
		ADR		R0, chars1
		MOV		R2, #11
		BL		addChars
		ADR		R0, chars2
		MOV		R2, #11
		BL		addChars
		ADR		R0, chars3
		MOV		R2, #10
		BL		addChars
		ADR		R0, chars4
		MOV		R2, #10
		BL		addChars
		ADR		R0, chars5
		MOV		R2, #11
		BL		addChars
		ADR		R0, chars6
		MOV		R2, #11
		BL		addChars
		ADR		R0, chars7
		MOV		R2, #11
		BL		addChars
		ADR		R0, chars8
		MOV		R2, #8
		
		ADD		R12, R12, #4
		MOV		R7, #0
		LDR		R7, [R13, R12]
		END
		
addChars	MOV		R5, #0
		LDR		R6, [R0]
loop		STR		R6, [R13, R12]
		ADD		R5, R5, #4
		ADD		R12, R12, #4
		SUBS		R2, R2, #1
		LDR		R6, [R0, R5]
		BNE		loop
		MOV		PC, LR
		
		
chars0	DCD		'T', 'h', 'e', ' ', '2', '0', '1', '8', ' ', 'T', 'u'
chars1	DCD		'r', 'i', 'n', 'g', ' ', 'A', 'w', 'a', 'r', 'd', ' '
chars2	DCD		'w', 'a', 's', ' ', 'a', 'w', 'a', 'r', 'd', 'e', 'd'
chars3	DCD		' ', 't', 'o', ' ', 'B', 'e', 'n', 'g', 'i', 'o'
chars4	DCD		' ', 'H', 'i', 'n', 't', 'o', 'n', ' ', 'a', 'n'
chars5	DCD		'd', ' ', 'L', 'e', 'C', 'u', 'n', 'n', ' ', 'f', 'o'
chars6	DCD		'r', ' ', 't', 'h', 'e', 'i', 'r', ' ', 'w', 'o', 'r'
chars7	DCD		'k', ' ', 'o', 'n', ' ', 'n', 'e', 'u', 'r', 'a', 'l'
chars8	DCD		'n', 'e', 't', 'w', 'o', 'r', 'k', 's', '.'
count	DCD		95
string	FILL		384
