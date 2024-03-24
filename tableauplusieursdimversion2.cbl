       IDENTIFICATION DIVISION.
       PROGRAM-ID. ETUDIANT.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EENTREE ASSIGN TO "eleves2.txt"
           ORGANIZATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL 
           FILE STATUS IS WS-STATUS-EENTREE.
           
           SELECT ESORTIE ASSIGN TO "classe.txt"
           organization IS LINE sequential 
           ACCESS mode IS sequential
           FILE STATUS IS WS-STATUS-ESORTIE.
       DATA DIVISION.
       FILE SECTION.
       FD     EENTREE
              RECORDING MODE IS F.

       01  ENRELEVEE.
              05 NUMENR01 PIC X(2).
              05 NOMELEVEE PIC X(11).
              05 PRENOMELEVEE PIC X(9).
              05 AGEELEVEE PIC X(2).
       01  ENRMATIEREE.
              05 NUMENR02 PIC X(2).
              05 NOMMATIEREE PIC X(19).
              05 NOTEELEVEE PIC X(3).
              05 COEFMATIEREE PIC X(3).

       FD     ESORTIE
              RECORDING MODE IS F.
   
       01  ENRELEVES.
              05 NUMENRS01 PIC X(2).
              05 NOMELEVES PIC X(11).
              05 PRENOMELEVES PIC X(9).
              05 AGEELEVES PIC X(2).
       01  ENRMATIERES.
              05 NUMENRS02 PIC X(2).
              05 NOMMATIERES PIC X(19).
              05 NOTEELEVES PIC X(3).
              05 COEFMATIERES PIC X(3).
       WORKING-STORAGE SECTION.
       
       77  WS-STATUS-EENTREE PIC X(02) VALUE SPACES.
       77  WS-STATUS-ESORTIE PIC X(02) VALUE SPACES.

       01 WS-TABLEAU.
           05 WS-INFO-ETUDIANT OCCURS 10 TIMES.
                10 WS-NUMENR PIC 9(2).
                10 WS-NOM PIC X(11).
                10 WS-PRENOM PIC X(9).
                10 WS-AGE PIC X(2).
                10 WS-MATIERE OCCURS 3 TIMES.
                    15 WS-NUM-MATIERE PIC X(2).
                    15 WS-NOM-MATIERE PIC X(19).
                    15 WS-NOTE PIC X(3).
                    15 WS-COEF PIC X(3).
       
       01 I PIC 99 VALUE 0.
       01 J PIC 99 VALUE 0.
   

       PROCEDURE DIVISION.
       OPEN INPUT EENTREE
       OPEN OUTPUT ESORTIE 
        
       PERFORM UNTIL WS-STATUS-EENTREE NOT = '00'
           READ EENTREE 
           AT END CONTINUE
           NOT AT END
               IF NUMENR01 = 01
                   ADD 1 TO I
                   MOVE 0 TO J 
                   MOVE NOMELEVEE TO WS-NOM(I)
                   MOVE PRENOMELEVEE TO WS-PRENOM(I)
                   MOVE AGEELEVEE TO WS-AGE(I)
               ELSE IF NUMENRS02 = 02
                   ADD 1 TO J
                   MOVE NOMMATIEREE TO WS-NOM-MATIERE(I, J)
                   MOVE NOTEELEVEE TO WS-NOTE(I, J)
                   MOVE COEFMATIEREE TO WS-COEF(I, J)
               END-IF
           END-IF
       END-PERFORM
       
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
           MOVE WS-NOM(I) TO NOMELEVES             
           MOVE WS-PRENOM(I) TO PRENOMELEVES 
           MOVE WS-AGE(I) TO AGEELEVES 
           WRITE ENRELEVES 
           PERFORM VARYING J FROM 1 BY 1 UNTIL J > 3
               MOVE WS-NOM-MATIERE(I, J) TO NOMMATIERES 
               MOVE WS-NOTE(I, J) TO NOTEELEVES
               MOVE WS-COEF(I, J) TO COEFMATIERES 
               display "nom: " NOMELEVES
      *     display "id: " IDELEVES  
               WRITE ENRELEVES   
           END-PERFORM
       END-PERFORM
    
       CLOSE EENTREE
       CLOSE ESORTIE
       STOP RUN.
