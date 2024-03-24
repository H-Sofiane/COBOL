       IDENTIFICATION DIVISION.
       PROGRAM-ID. BILAN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FENTREE ASSIGN TO "BILAN.txt"
           ORGANIZATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL 
           FILE STATUS IS WS-STATUS-FENTREE.
       DATA DIVISION.
       FILE SECTION.
       FD     FENTREE
              RECORDING MODE IS F.
       01  FENREG.
              05 MYTEST PIC A(8).

       WORKING-STORAGE SECTION.
       77  WS-STATUS-FENTREE PIC X(02) VALUE SPACES.
      

       PROCEDURE DIVISION.          
           if WS-STATUS-FENTREE  = 35
              DISPLAY "Fichier inexistant"
           else             
              OPEN INPUT FENTREE
              DISPLAY WS-STATUS-FENTREE
              READ FENTREE
              DISPLAY FENREG
              CLOSE FENTREE
           .
           STOP RUN.
