	SUBROUTINE STRATALOGGER_TO_ENGR(STLBH,ENGBH,SUFFIX)

C	***************************************************************
C	* THIS SUBROUTINE CONVERTS THE STRATALOGGER BLAST HOLE NUMBER *
C	* TO THE ENGINEER'S NAMING CONVENTION FOR THE BLAST HOLE      *
C	***************************************************************

	IMPLICIT	NONE
	INTEGER*4	ROW,HOLE,ENGBH
	CHARACTER	SUFFIX*1,STLBH*3
	CHARACTER*1	ROWN(20)/'A','B','C','D','E','F','G','H','I',
	1		'J','K','L','M','N','O','P','Q','R','S','T'/
	CHARACTER*1	ROWS(6)/'Z','Y','X','W','V','U'/

C	**********************************************************
C	* 04/23/2003 - INCREASED THE MAXIMUM ALLOWABLE NUMBER OF *
C	*	       NON-SUFFIX HOLES IN A ROW FROM 75 TO 90   *
C	*	       AND DECREASED THE MAXIMUM ALLOWABLE NUMBER*
C	*	       OF SUFFIX HOLES IN A ROW FROM 24 TO 9     *
C	**********************************************************

	ENGBH=0

	DO 200 ROW=1,20
	IF(STLBH(1:1).EQ.ROWN(ROW))THEN
	  READ (STLBH(2:3),100)HOLE
100	  FORMAT(I2)
	  IF(HOLE.LE.90)THEN
	    ENGBH=ROW*100+HOLE
	    SUFFIX=' '
	  ELSE
	    ENGBH=ROW*100+(101-HOLE)
	    SUFFIX='H'
	  END IF
	  RETURN
	END IF
200	CONTINUE

	DO 300 ROW=1,6
	IF(STLBH(1:1).EQ.ROWS(ROW))THEN
	  READ (STLBH(2:3),100)HOLE
	  IF(HOLE.LE.90)THEN
	    ENGBH=(ROW+1)*100+HOLE
	    SUFFIX='R'
	  ELSE
	    ENGBH=(ROW+1)*100+(101-HOLE)
	    SUFFIX='Z'
	  END IF
	  RETURN
	END IF
300	CONTINUE

	RETURN
	END
