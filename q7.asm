.MODEL SMALL 
.STACK 100H 
.DATA 
MSG1 DB "ENTER NUMBER: $"
MSG2 DB 0DH, 0AH, "FACTORIAL: "
FAC DB ?, "$"
.CODE 
MAIN PROC 
MOV AX, @DATA
MOV DS, AX

MOV CX, 0

LEA DX, MSG1
MOV AH, 9
INT 21H
MOV AH,1
INT 21H

MOV DL, AL
SUB DL, '0'
MOV AL, 1

CMP DL, 0
JE ZR

LP:
INC CL
MUL CL
CMP CL, DL
JNE LP

ZR:
MOV FAC, AL
ADD FAC, '0'
LEA DX, MSG2
MOV AH, 9
INT 21H
MOV AH, 4CH 
INT 21H 
MAIN ENDP 
END MAIN


