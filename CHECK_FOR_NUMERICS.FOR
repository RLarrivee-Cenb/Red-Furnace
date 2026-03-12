	SUBROUTINE CHECK_FOR_NUMERICS(CHAR,STATUS)

C	*******************************************************
C	* THIS SUBROUTINE CHECKS THE CURRENT KEYSTROKE TO SEE *
C	* IF IT IS A VALID INTEGER (0-9)                      *
C	*******************************************************

	IMPLICIT	NONE
	INTEGER*2	J,STATUS
	CHARACTER	CHAR*1
	CHARACTER	NUMBERS(10)*1/'0','1','2','3','4','5','6','7',
	1		'8','9'/

	STATUS=9

	DO J=1,10
	IF(CHAR.EQ.NUMBERS(J))THEN
	  STATUS=1
	  GO TO 100
	END IF
	END DO

100	RETURN
	END
