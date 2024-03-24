       IDENTIFICATION DIVISION.
       PROGRAM-ID. MultiplicationTable.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 I PIC 9(2).
       01 result PiC 9(3) VALUE 0.
       01 ws-nb PIC 9(2).
       
       PROCEDURE DIVISION.
           DISPLAY "Choisir un nombre".
           ACCEPT ws-nb
           DISPLAY "Table de multiplication de " ws-nb.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
               MULTIPLY ws-nb BY I GIVING result
               DISPLAY I " x ", ws-nb " = ", result
           END-PERFORM.
       
           STOP RUN.
