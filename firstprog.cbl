       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  HELLO-1     PIC X(20) VALUE "HELLO WORLD".
       77  TOTO        PIC X(10) VALUE "TOTO".
       01  GROUPE.
           03 G1 PIC 9(10) VALUE 1.
           03 G2 PIC 9(10) VALUE 310.
       01 MYALPHA      PIC X(6) VALUE "soso".
       01 BONJOUR      PIC X(10) VALUE "Bonjour".
       01 MYCALCUL     PIC 9(2) VALUE 0.
       01 WS-NAME      PIC A(10).
       PROCEDURE DIVISION.
           DISPLAY '--------------------'.
           DISPLAY 'Je suis Sofiane'.
           DISPLAY '--------------------'.
           DISPLAY HELLO-1.
           DISPLAY TOTO
           DISPLAY GROUPE
           if MYALPHA is ALPHABETIC THEN
              DISPLAY MYALPHA
           else
              DISPLAY "C'est un nombre".
           PERFORM 5 TIMES
              DISPLAY BONJOUR
           END-PERFORM.
           PERFORM 10 TIMES
              ADD 1 TO MYCALCUL
              DISPLAY MYCALCUL
           END-PERFORM.

           DISPLAY "Comment tu t'appelles ?".
           ACCEPT WS-NAME.
           DISPLAY 'Salut à toi ' WS-NAME.
           STOP RUN.
