       IDENTIFICATION DIVISION.
       PROGRAM-ID. BASES.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NAME PIC A(10).
       01 WS-AGE PIC 9(2).
       PROCEDURE DIVISION.
           DISPLAY 'Quel est votre prénom ?'.
           ACCEPT WS-NAME.
           DISPLAY 'Quel age avez-vous ?'.
           ACCEPT WS-AGE.
           DISPLAY 'Bonjour ' WS-NAME.
           IF WS-AGE >= 18
              DISPLAY 'Vous etes majeur'
           ELSE
              DISPLAY 'Vous etes mineur'.
           STOP RUN.
