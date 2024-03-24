       Identification Division.
       Program-Id. Eleves.
       ENVIRONMENT DIVISION.
       configuration section.
       special-names.
           decimal-point is comma.

       input-output section.
         
       file-control.
       
           select IFILE assign to 'ELEVESB.txt'
           organization IS LINE sequential 
           ACCESS mode IS sequential
           FILE status IS WS-STATUS-EENTREE.
     
           select OFILE assign to 'classe.txt'
           organization IS LINE sequential 
           ACCESS mode IS sequential
           FILE status IS WS-STATUS-ESORTIE.

       Data Division.
       FILE SECTION.
       FD  IFILE
       
           recording MODE IS F.
       01  IELEVEENR.
           05 numero pic 9(2).
           05 nom    pic x(25).
           05 prenom pic x(25).
           05 age    pic 9(2).
       01  IMATIEREENR. 
           05 numeromat pic 9(2).
           05 nommat pic x(30).
           05 coefmat pic X(4).
           05 notemat pic X(5).
           

       FD  OFILE           
           recording MODE IS F.
       01  OELEVEENR.
           05 numeros pic 9(2).
           05 noms    pic x(25).
           05 prenoms pic x(25).
           05 ages    pic 9(2).
       01  OMATIEREENR. 
           05 numeromats pic 9(2).
           05 nommats pic x(30).
           05 coefmats pic X(4).
           05 notemats pic 9(5).
           

           
       Working-Storage Section.
       01  WS-STATUS-EENTREE pic x(2).
       01  WS-STATUS-ESORTIE pic x(2).
       01  I PIC 99 VALUE 0.
       01  J PIC 99 value 0.
       01  ws-double.
           03 ws-nbr-eleves occurs 8 times.
               07 ws-numero pic 9(2).
               07 ws-nom pic x(25). 
               07 ws-prenom pic x(25).
               07 ws-age pic 9(2).
               07 ws-matiere occurs 6.
                  09 ws-numeromat pic 9(2).
                  09 ws-nommat pic x(30).
                  09 ws-coefmat pic X(4).
                  09 ws-notemat pic 9(5).
                  
         
              
          


       Procedure Division.
       open INPUT  IFILE
       open  OUTPUT OFILE
           
           perform  until WS-STATUS-EENTREE not = '00'
              
               READ IFILE
               At END continue
                 NOT AT END
                   IF numero = 01 THEN 
                    ADD 1 TO I
                    MOVE 0 TO J
                    MOVE nom TO ws-nom(I)
                    MOVE PRENOM TO ws-prenom(I)
                    MOVE AGE TO ws-age(I)

                    ELSE IF numeromat = 02 THEN 
                    ADD 1 TO J
                    MOVE nommat TO ws-nommat(I, J)
                    MOVE notemat TO ws-notemat(I, J)
                    MOVE coefmat TO ws-coefmat(I, J)   
                          end-if
                   end-if
            end-perform

           perform VARYING I FROM 1 BY 1 UNTIL I > 8
                  move WS-nom (I) TO noms 
                  MOVE WS-PRENOM (I) TO prenoms
                  MOVE WS-AGE (I) TO ages
                  write  OELEVEENR
                  PERFORM VARYING J FROM 1 BY 1 UNTIL j > 6
                       move  WS-nommat (I, J) TO  nommats
                       move WS-notemat(I, J) TO notemats
                       move WS-coefmat (I, J) TO coefmats
                       write  OELEVEENR
                  end-perform
               end-perform
           close IFILE 
           close OFILE
           STOP RUN.
















