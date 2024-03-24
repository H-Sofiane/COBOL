       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHOIXMULTIPLE.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 chaine1 pic x(10) value "Sofiane".
       01 chaine2 pic x(10) value "Bonjour".
       01 chaine3 pic x(4) value "Toto".
       01 nbch1 pic 9(2).
       01 nbch2 pic 9(2).
       01 nbch3 pic 9(2).
       01 num1 pic 9(2) VALUE 77.
       01 num2 pic 9(2) VALUE 48.
       01 num3 pic 9(2) VALUE 11.
       01 ws-min pic 9(2).
       01 ws-max pic 9(2).
       01 somme pic 9(3).
       01 newchaine1 PIC x(10).


       PROCEDURE DIVISION.

           INSPECT chaine1 TALLYING nbch1 FOR CHARACTERS BEFORE SPACE.
           INSPECT chaine2 TALLYING nbch2 FOR CHARACTERS BEFORE SPACE.
           COMPUTE nbch3 = FUNCTION LENGTH (chaine3 ).

           DISPLAY nbch1.
           DISPLAY nbch2.
           DISPLAY nbch3.

           COMPUTE ws-min = FUNCTION MIN (num1 num2 num3 ).
           COMPUTE ws-max  = FUNCTION MAX (num1 num2 num3 ).
           COMPUTE somme = FUNCTION SUM (num1 num2 num3 ).

           DISPLAY ws-min ' / ' ws-max ' / ' somme .

           MOVE FUNCTION UPPER-CASE (chaine1) TO newchaine1.

           DISPLAY newchaine1.

           
           STOP RUN.
