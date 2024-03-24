       IDENTIFICATION DIVISION.
       PROGRAM-ID. MON-PROG.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FENTREE ASSIGN TO "MUNABTP.txt"
           ORGANIZATION IS SEQUENTIAL
           ACCESS IS SEQUENTIAL. 
      *     FILE-STATUS IS WS-STATUS-FENTREE.
       DATA DIVISION.
       FILE SECTION.
       FD     FENTREE
              RECORDING MODE IS F.
       01 FENREG.
              05 MUNA PIC 9(8).
              05 IDENTIFIANT PIC X(14).
              05 LIBELLE-COMMERCIAL-SE PIC X(101).
              05 DEBUT-EFFET-SE PIC X(8).
              05 FIN-EFFET-SE PIC X(8).
       WORKING-STORAGE SECTION.
       77 WS-STATUS-FENTREE PIC X(02) VALUE SPACES.
       01 WS-AGE            PIC 9(2).
       PROCEDURE DIVISION.
           OPEN INPUT FENTREE.
           READ FENTREE.
           DISPLAY FENREG.
           CLOSE FENTREE.
           MOVE 32 TO WS-AGE.
           DISPLAY 'Vous avez ' WS-AGE ' ans'.
           STOP RUN.
