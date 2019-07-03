.MODEL SMALL
.STACK 64
.DATA
CHAR_A DB "A"

.CODE
MAIN PROC

        MOV AX,@DATA
        MOV DS,AX

        MOV AH,02H
        MOV DL,CHAR_A
        INT 21H

        MOV DL,","
        INT 21H

        ADD CHAR_A,20H
        MOV DL,CHAR_A
        INT 21H


        MOV AH,4CH
        INT 21H

MAIN ENDP
END MAIN
