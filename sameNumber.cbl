       IDENTIFICATION DIVISION.
       PROGRAM-ID. EGALITE.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-A PIC 9(3).
       01 WS-B PIC 9(3).
       

       PROCEDURE DIVISION.
           
           DISPLAY "Saisir un 1er nombre".
           ACCEPT WS-A.
           DISPLAY "Saisir un 2eme nombre".
           ACCEPT WS-B.

           if (WS-A = WS-B )
              DISPLAY "Les nombres sont égaux"
           else
              DISPLAY "Les nombres sont différents"
           .
           STOP RUN.
