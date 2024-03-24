       IDENTIFICATION DIVISION.
       PROGRAM-ID. TriBulle.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Tableau-Valeurs.
          05 Valeur-Item PIC 99 OCCURS 5 TIMES.
       
       01 Passage PIC 99.
       01 i PIC 99.
       01 Temp PIC 99.
       01 Permutation PIC X(3) VALUE 'YES'.
       PROCEDURE DIVISION.
       
           DISPLAY "Tableau initial : ".
           MOVE 10 TO Valeur-Item(1).
           MOVE 4 TO Valeur-Item(2).
           MOVE 8 TO Valeur-Item(3).
           MOVE 5 TO Valeur-Item(4).
           MOVE 1 TO Valeur-Item(5).

           
       

           DISPLAY 'Debut ' Tableau-Valeurs
       
           PERFORM UNTIL Permutation = 'NO'
               MOVE 'NO' TO Permutation
               ADD 1 TO Passage
               PERFORM VARYING i FROM 1 BY 1 UNTIL i = 6 - Passage
                   IF Valeur-Item(i) > Valeur-Item(i + 1)
                       MOVE Valeur-Item(i) TO Temp
                       MOVE Valeur-Item(i + 1) TO Valeur-Item(i)
                       MOVE Temp TO Valeur-Item(i + 1)
                       MOVE 'YES' TO Permutation  
                       DISPLAY Tableau-Valeurs ' / '                     
                   END-IF                                     
               END-PERFORM              
           END-PERFORM.
           DISPLAY "ensuite " Tableau-Valeurs

           DISPLAY "Valeurs du tableau : "
           PERFORM VARYING i FROM 1 BY 1 UNTIL i > 5
               DISPLAY "Valeur(", Valeur-Item(i), ") = ", i
           END-PERFORM.
       
       STOP RUN.
