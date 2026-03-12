	SUBROUTINE MOVLEV(ARRAYFR,ARRAYTO,INO)

C	******************************************************
C	* THIS SUBROUTINE MOVES DATA FROM A SOURCE ARRAY TO  *
C	* A DESTINATION ARRAY                                * 
C	* "ARRAYFR" IS THE SOURCE ARRAY                      *
C	* "ARRAYTO" IS THE DESTINATION ARRAY                 *
C	* "INO" IS THE NUMBER OF ITEMS TO BE MOVED           *
C	******************************************************

	IMPLICIT	NONE
	INTEGER*2	INO,JMOV
	REAL*4		ARRAYFR(INO),ARRAYTO(INO)
	DO 100 JMOV=1,INO
	ARRAYTO(JMOV)=ARRAYFR(JMOV)
100	CONTINUE
	RETURN
	END
