       IDENTIFICATION DIVISION.
       PROGRAM-ID. GENRE.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-GENRE PIC X.
           88 FEMME VALUE "F".
           88 HOMME VALUE "H".

       PROCEDURE DIVISION.
           SET HOMME TO TRUE.
           IF FEMME 
              DISPLAY "Vous êtes une femme"
           ELSE
              DISPLAY "Vous êtes un homme"
           END-IF.

           DISPLAY WS-GENRE.
           
           STOP RUN.
