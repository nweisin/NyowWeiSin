.MODEL SMALL
.STACK 64
.DATA

DIVIDEND DB ?
DIVISOR DB ?
QUOTIENT DB ?
REMAINDER DB ?
MSG1 DB "DIVIDEND   : $"
MSG2 DB "DIVISOR    : $"
MSG3 DB "QUOTIENT   : $"
MSG4 DB "REMAINDER  : $"


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,09H
    LEA DX,MSG1
    INT 21H

    MOV AH,01H
    INT 21H
    MOV DIVIDEND,AL

    MOV DL,10
    MOV AH,02H
    INT 21H
    MOV DL,13
    MOV AH,02H
    INT 21H

    MOV AH,09H
    LEA DX,MSG2
    INT 21H
                                                                                                                                                                                                                                            
    MOV AH,01H
    INT 21H
    MOV DIVISOR,AL

    MOV DL,10
    MOV AH,02H
    INT 21H
    MOV DL,13
    MOV AH,02H
    INT 21H

    MOV BL,00
    MOV AL,00
    MOV BL,DIVISOR
    MOV AL,DIVIDEND
    MOV AH,0
    DIV BL

    MOV QUOTIENT,AL
    MOV REMAINDER,AH

    MOV DL,QUOTIENT
    ADD DL,48
    MOV AH,02
    INT 21H

    MOV AX,09H
    LEA DX,MSG3
    INT 21H

    MOV AX,09H
    LEA DX,QUOTIENT
    INT 21H

    MOV DL,10
    MOV AH,02H
    INT 21H
    MOV DL,13
    MOV AH,02H
    INT 21H

    MOV DL,REMAINDER
    ADD DL,48
    MOV AH,02
    INT 21H

    MOV AX,09H
    LEA DX,MSG4
    INT 21H

    MOV AX,09H
    LEA DX,REMAINDER
    INT 21H

    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN
