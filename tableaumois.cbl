       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLEAUMOIS.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TAB-MOIS.
           05 WS-MOIS PIC X(10) OCCURS 12.
       01 WS-COUNT PIC 9(2) VALUE 0.

       01 WS-DATE.
          03 WS-JOUR PIC 9(2).
          03 WS-MOIS2 PIC 9(2).
          03 WS-ANNEE pic 9(4).

       PROCEDURE DIVISION.
           
           MOVE 'Janvier' to WS-MOIS(1).
           MOVE 'Février' to WS-MOIS(2).
           MOVE 'Mars' to WS-MOIS(3).
           MOVE 'Avril' to WS-MOIS(4).
           MOVE 'Mai' to WS-MOIS(5).
           MOVE 'Juin' to WS-MOIS(6).
           MOVE 'Juillet' to WS-MOIS(7).
           MOVE 'Aout' to WS-MOIS(8).
           MOVE 'Septembre' to WS-MOIS(9).
           MOVE 'Octobre' to WS-MOIS(10).
           MOVE 'Novembre' to WS-MOIS(11).
           MOVE 'Decembre' to WS-MOIS(12).

           DISPLAY WS-TAB-MOIS.

           PERFORM  12 times
              ADD 1 TO WS-COUNT
              DISPLAY WS-MOIS(WS-COUNT)                     
           END-PERFORM.


           DISPLAY "Saisir une date".
           ACCEPT WS-DATE.

           MOVE WS-MOIS2 TO WS-COUNT.

           DISPLAY "C'est le mois de " WS-MOIS(WS-COUNT).

                      
           STOP RUN.
