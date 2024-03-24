       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLEAU.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TABLEAU.
           05 WS-LIBELLE-PRENOM.
              10 FILLER PIC A(10) VALUE 'Sofiane'.
              10 FILLER PIC A(10) VALUE 'Soso'.
              10 FILLER PIC A(10) VALUE 'Toto'.
              10 FILLER PIC A(10) VALUE 'Tata'.
              10 FILLER PIC A(10) VALUE 'Titi'.
           05 WS-PRENOM REDEFINES WS-LIBELLE-PRENOM .
              10 WS-LES-PRENOMS PIC A(10) OCCURS 5 INDEXED BY WS-INDEX.

       PROCEDURE DIVISION.
           SORT WS-LES-PRENOMS ON DESCENDING KEY WS-LES-PRENOMS.
           DISPLAY WS-TABLEAU.
           SORT WS-LES-PRENOMS ON ASCENDING KEY WS-LES-PRENOMS.
           DISPLAY WS-LES-PRENOMS(2).
           
           SET WS-INDEX TO 4.
           MOVE 'abcd' TO WS-LES-PRENOMS(WS-INDEX).
           
           DISPLAY WS-TABLEAU.   
           
           STOP RUN.
