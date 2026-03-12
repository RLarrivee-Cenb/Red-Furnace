	SUBROUTINE LOWER_TO_UPPER_CASE(IN_STRING,OUT_STRING,CHANGED)

C	**********************************************************
C	* THIS SUBROUTINE CHANGES LOWER CASE CHARACTERS TO THEIR *
C	* CORRESSPONDING UPPER CASE CHARACTER                    *
C	**********************************************************

	IMPLICIT	NONE
	INTEGER*2	J,K
	CHARACTER	CHANGED*3
	CHARACTER*(*)	IN_STRING,OUT_STRING
	CHARACTER*1	LOWER(26)/'a','b','c','d','e','f','g','h','i',
	1		'j','k','l','m','n','o','p','q','r','s','t','u',
	2		'v','w','x','y','z'/
	CHARACTER*1	UPPER(26)/'A','B','C','D','E','F','G','H','I',
	1		'J','K','L','M','N','O','P','Q','R','S','T','U',
	2		'V','W','X','Y','Z'/

	CHANGED='NO '

	DO 100 J=1,LEN(IN_STRING)
	DO K=1,26
	IF(IN_STRING(J:J).EQ.LOWER(K))THEN
	  OUT_STRING(J:J)=UPPER(K)
	  CHANGED='YES'
	  GO TO 100
	END IF
	END DO
	OUT_STRING(J:J)=IN_STRING(J:J)
100	CONTINUE

	RETURN
	END
