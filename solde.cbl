       IDENTIFICATION DIVISION.
       PROGRAM-ID. SOLDE.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-SOLDE PIC S9(4).
       01 WS-SALAIRE PIC 9(5)V99.
       01 WS-SALAIRE2 PIC 9(5)V99 COMP-3.
       01 WS-SOLDE2 PIC 9(4).
       01 WS-PRENOM PIC X(7) VALUE 'Sofiane'.


       PROCEDURE DIVISION.
           MOVE +8000 TO WS-SOLDE.

           MOVE 10000.50 TO WS-SALAIRE.

           MOVE 3000 TO WS-SALAIRE2.

           MOVE 2000 to WS-SOLDE2.

           DISPLAY WS-SOLDE.

           DISPLAY "Votre salaire est de " WS-SALAIRE " €".

           DISPLAY WS-PRENOM.
           MOVE  SPACE TO WS-PRENOM.
           DISPLAY WS-PRENOM.

           
           STOP RUN.
