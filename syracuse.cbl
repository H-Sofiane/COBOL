       IDENTIFICATION DIVISION.
       PROGRAM-ID. Syracuse.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ws-ws-nb pic 9(3).

       PROCEDURE DIVISION.
       DISPLAY "saisir un nombre"
           ACCEPT ws-ws-nb
       PERFORM UNTIL ws-ws-nb = 1
           
           
           if  FUNCTION MOD (ws-ws-nb, 2) = 0
              DIVIDE 2 INTO ws-ws-nb GIVING ws-ws-nb
           else
              MULTIPLY ws-ws-nb by 3 GIVING ws-ws-nb
              ADD 1 TO ws-ws-nb GIVING ws-ws-nb
           END-IF
           DISPLAY ws-ws-nb
       END-PERFORM

           
           STOP RUN.
