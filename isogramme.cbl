       IDENTIFICATION DIVISION.
       PROGRAM-ID. ISOGRAM.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-PHRASE PIC X(60).
       01 WS-RESULT PIC 99.
       01 LETTERS       PIC X(26) VALUE 'abcdefghijklmnopqrstuvwxyz'.
       01 LETTER-INDEX  PIC 99.
       01 LETTER-COUNT PIC 99.
       PROCEDURE DIVISION.
       ISOGRAM.
           DISPLAY "Saisir un mot ou une phrase: "
           ACCEPT WS-PHRASE
           MOVE 1 TO WS-RESULT 
           MOVE FUNCTION LOWER-CASE(WS-PHRASE) TO WS-PHRASE
           PERFORM VARYING LETTER-INDEX FROM 1 BY 1
            UNTIL LETTER-INDEX > 26 OR WS-RESULT EQUAL 0
                   MOVE 0 to LETTER-COUNT
                   INSPECT WS-PHRASE TALLYING LETTER-COUNT 
                    FOR ALL LETTERS(LETTER-INDEX:1)
                   IF LETTER-COUNT > 1                 
                    MOVE 0 TO WS-RESULT
           END-PERFORM.
           IF LETTER-COUNT > 1
                    DISPLAY "Ce n'est pas un isogramme"                   
                    MOVE 0 TO WS-RESULT
                   ELSE
                    DISPLAY "C'est un isogramme".
       END-ISOGRAM.
