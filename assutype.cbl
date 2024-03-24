       IDENTIFICATION DIVISION.
       PROGRAM-ID. MON-PROG.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FENTREE ASSIGN TO "ASSURANCES.txt"
           ORGANIZATION IS LINE SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL 
           FILE STATUS IS WS-STATUS-FENTREE.
       DATA DIVISION.
       FILE SECTION.       
       FD     FENTREE
              RECORDING MODE IS F.
       01 FENREG.
              05 MUNA PIC 9(8).
              05 FILLER PIC X(1).
              05 IDENTIFIANT PIC X(14).
              05 FILLER PIC X(1).
              05 LIBELLE-COMMERCIAL-SE PIC X(101).
              05 FILLER PIC X(1).
              05 ETAT PIC x(10).
              05 FILLER PIC X(1).
              05 DEBUT-EFFET-SE PIC X(8).
              05 FILLER PIC X(1).
              05 FIN-EFFET-SE PIC X(8).
              05 FILLER PIC X(1).
              05 MONTANT PIC 9(5)V9(9).    
       WORKING-STORAGE SECTION.
       77 WS-STATUS-FENTREE PIC X(02) VALUE SPACES.
       01 LineCounter    PIC 9(3) VALUE 0.
       01 MaxLines       PIC 9(3) VALUE 100.
       01 WS-ETATS.
           05 WS-ETAT PIC X(5).
              88 WS-ACTIF VALUE 'Actif'.
              88 WS-RESILIE VALUE 'Resil'.
              88 WS-SUPENDU VALUE 'Supen'.
       01 MAXACTIF PIC 9(2) VALUE 0.
       01 MAXRESILIE PIC 9(2) VALUE 0.
       01 MAXSUPENDU  PIC 9(2) VALUE 0.
       PROCEDURE DIVISION.
           OPEN INPUT FENTREE.
           PERFORM UNTIL LineCounter >= MaxLines
               READ FENTREE
                   AT END
                       DISPLAY 'End of file reached'
                       MOVE MaxLines TO LineCounter

                   NOT AT END
                       ADD 1 TO LineCounter
                       DISPLAY 'Read line ' LineCounter ' : ' FENREG   
               MOVE ETAT TO WS-ETAT    
                 IF WS-ACTIF
                     ADD 1 TO MAXACTIF
                 else if WS-RESILIE
                     ADD 1 TO MAXRESILIE
                 else if WS-SUPENDU
                     ADD 1 TO MAXSUPENDU
                 END-IF                 
               END-READ                            
               
           END-PERFORM.                      
           CLOSE FENTREE.
           DISPLAY 'Il y a ' MAXACTIF ' actifs'
           DISPLAY 'Il y a ' MAXRESILIE ' resilié'
           DISPLAY 'Il y a ' MAXSUPENDU ' supendu'
           STOP RUN.
