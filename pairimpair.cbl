       IDENTIFICATION DIVISION.
       PROGRAM-ID. PAIRIMPAIR.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ws-nb pic 9(3).


       PROCEDURE DIVISION.

           DISPLAY "saisir un nombre".
           ACCEPT ws-nb.
           
           if  FUNCTION MOD (ws-nb, 2) = 0
              display "Le nombre est pair"
           else
              display "Le nombre est impair"
           .

           
           STOP RUN.
