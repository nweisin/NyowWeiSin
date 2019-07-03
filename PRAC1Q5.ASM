.MODEL SMALL
.STACK 64
.DATA
INPUT1 DB ?
RESULT DB ?
MSG1 DB "PLEASE ENTER A NUMBER :$"
.CODE
MAIN PROC

    MOV AX,@DATA
    MOV DS,AX

    MOV AH,09H
    LEA DX,MSG1
    INT 21H

    MOV AH,01H
    INT 21H
    MOV INPUT1,AL

    SUB INPUT1,30H

    XOR AX,AX

    MOV AL,INPUT1
    MUL INPUT1

    MOV RESULT,AL

    MOV AH,02H
    MOV DL,0AH
    INT 21H                                                                                                                 
    MOV DL,0DH
    INT 21H

    MOV AH,02H
    MOV DL,RESULT
    ADD DL,30H
    INT 21H                                            


    MOV AH,4CH
    INT 21H


MAIN ENDP
END MAIN
