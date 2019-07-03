.MODEL SMALL
.STACK 64
.DATA
CHAR_K DB "k"
CHAR_A DB "a"

.CODE
MAIN PROC
     MOV AX,@DATA
     MOV DS,AX

     MOV AH,02H
     MOV DL,"("
     INT 21H

     MOV DL,CHAR_A
     INT 21H

     MOV DL,","
     INT 21H

     MOV DL,CHAR_K
     INT 21H

     MOV DL,")"
     INT 21H

     MOV DL,10H
     INT 21H

     MOV AL,CHAR_A
     MOV BL,CHAR_K
     XCHG AL,CHAR_K
     XCHG BL,CHAR_A

     MOV DL,"("
     INT 21H                                                                                                                    

     MOV DL,CHAR_A
     INT 21H

     MOV DL,","
     INT 21H                                                                                                                                                                     

     MOV DL,CHAR_K
     INT 21H

     MOV DL,")"
     INT 21H

     MOV AH,4CH
     INT 21H

MAIN ENDP
END MAIN

                    
