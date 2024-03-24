       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHOIXMULTIPLE.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ws-age pic 9(2).


       PROCEDURE DIVISION.

           DISPLAY "saisir votre âge".
           ACCEPT ws-age.

           EVALUATE ws-age 
              WHEN 2 THRU 5
                 DISPLAY "maternelle"
              WHEN 6 THRU 11
                 DISPLAY "école primaire"
              WHEN 12 THRU 15
                 DISPLAY "collège"
              WHEN 16 THRU 18
                 DISPLAY "lycée"
           END-EVALUATE
           
           

           
           STOP RUN.
