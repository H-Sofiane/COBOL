       IDENTIFICATION DIVISION.
       PROGRAM-ID. syracuse.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-VAR.
          05 WS-INP1    PIC X(32)
                        VALUE 'LE COBOL VIVRA POUR TOUJOURS.'.
          05 WS-INP2    PIC X(33)
                             VALUE 'VIVE LE COBOL, VIVE LE MAINFRAME.'.
          05 WS-OUTPUT  PIC X(132).

          05 WS-UNSTR  PIC X(60) VALUE
          'MAINFRAME FAN CLUB. VIVE LE MAINFRAME. MAINFRAME NEVER DIE!'.

          05 WS-UNS01 PIC X(20).
          05 WS-UNS02 PIC X(20).
          05 WS-UNS03 PIC X(20).

          05 WS-REPL PIC X(60) VALUE
          "EN VRAI COBOL C'EST BIDON, MIEUX LE C# ET LE JAVA".

          05 WS-CHAINE PIC X(60) VALUE 'BONJOUR TOUT LE MONDE'.

          05 WS-CHAINE2 PIC X(10) VALUE 'éèà'.

          05 WS-CHAINE3 PIC X(10) VALUE 'eea'.

       PROCEDURE DIVISION.
         STRING WS-INP1, WS-INP2 DELIMITED BY SIZE INTO WS-OUTPUT
         
          DISPLAY WS-OUTPUT.
           
          UNSTRING WS-UNSTR DELIMITED BY '. ' 
          INTO WS-UNS01,
               WS-UNS02,
               WS-UNS03.

          
          DISPLAY WS-UNS01.
          DISPLAY WS-UNS02.
          DISPLAY WS-UNS03.



          INSPECT WS-UNSTR
          REPLACING ALL WS-UNSTR
           BY WS-REPL.

          DISPLAY WS-UNSTR.

          INSPECT WS-CHAINE
          CONVERTING 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' TO
          'abcdefghijklmnopqrstuvwxyz'.

          DISPLAY WS-CHAINE.

          INSPECT WS-CHAINE2
          CONVERTING 'éèà'
           To 'eea'.

           DISPLAY WS-CHAINE2.
           
       stop run.
