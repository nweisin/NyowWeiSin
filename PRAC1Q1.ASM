.MODEL SMALL
.STACK 64
.DATA
VAL1 DB 6
VAL2 DB 3
VAL3 DB 4

.CODE
MAIN PROC

        MOV AX,@DATA
        MOV DS,AX

        MOV AH,02H
        MOV DL,VAL2
        ADD DL,35H
        SUB DL,VAL1
        ADD DL,VAL3

        INT 21H

        MOV AH,4CH
        INT 21H

MAIN ENDP
END MAIN
