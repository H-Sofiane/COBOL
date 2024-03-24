       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCUL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-A PIC 9(4).
       01 WS-B PIC 9(4).
       01 WS-OPERATION PIC X.
       01 WS-RESULT PIC 9(4).
       01 WS-CHOICE PIC A.
           88 WS-CONTINU VALUE "o".
           88 WS-STOP VALUE "n".
       PROCEDURE DIVISION.
           DISPLAY "--------------------".
           DISPLAY "Bonjour et bienvenue"
           DISPLAY "--------------------".
           PERFORM TEST AFTER UNTIL WS-STOP IN WS-CHOICE
           DISPLAY 'Quelle opération voulez-vous faire ?(+,-,*,/)'
           ACCEPT WS-OPERATION 
           DISPLAY 'Saisir un premier nombre'
           ACCEPT WS-A
           DISPLAY 'Saisir un second nombre'
           ACCEPT WS-B
           IF WS-OPERATION = '+'
              ADD WS-A To WS-B GIVING WS-RESULT
              DISPLAY WS-A ' + ' WS-B ' = ' WS-RESULT
           ELSE IF WS-OPERATION = '-'
              SUBTRACT WS-A FROM WS-B GIVING WS-RESULT
              DISPLAY  WS-A ' - ' WS-B ' = ' WS-RESULT
           ELSE IF WS-OPERATION = '*'
              MULTIPLY WS-A BY WS-B GIVING WS-RESULT
              DISPLAY WS-A ' * ' WS-B ' = ' WS-RESULT
           ELSE
              DIVIDE WS-A BY WS-B GIVING WS-RESULT
              DISPLAY WS-A ' / ' WS-B ' = ' WS-RESULT
           END-IF
           DISPLAY "Voulez-vous continuer ? o/n"
           ACCEPT WS-CHOICE
           IF WS-CHOICE = "o"
              SET WS-CONTINU TO TRUE
           ELSE
              SET WS-STOP TO TRUE
              DISPLAY 'Au revoir'
           END-IF 
           END-PERFORM.
           STOP RUN.
