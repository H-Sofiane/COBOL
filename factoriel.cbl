       IDENTIFICATION DIVISION.
       PROGRAM-ID. Factoriel.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 ws-nb PIC 9(7).
       01 I PIC 9(7).
       01 result PIC 9(7) VALUE 1.
       PROCEDURE DIVISION.
       DISPLAY "Choisir un nombre"
       ACCEPT ws-nb
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > ws-nb           
           COMPUTE result = result * I 
       END-PERFORM.

       DISPLAY "résultat = " result.  
       
       STOP RUN.
