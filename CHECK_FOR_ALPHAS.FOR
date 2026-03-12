	SUBROUTINE CHECK_FOR_ALPHAS(CHAR,STATUS)

C	*******************************************************
C	* THIS SUBROUTINE CHECKS THE CURRENT KEYSTROKE TO SEE *
C	* IF IT IS A VALID UPPER OR LOWER CASE LETTER         *
C	*******************************************************

	IMPLICIT	NONE
	INTEGER*2	J,STATUS
	CHARACTER	CHAR*1
	CHARACTER	LETTERS(52)*1/'A','B','C','D','E','F','G','H',
	1		'I','J','K','L','M','N','O','P','Q','R','S','T',
	2		'U','V','W','X','Y','Z','a','b','c','d','e','f',
	3		'g','h','i','j','k','l','m','n','o','p','q','r',
	4		's','t','u','v','w','x','y','z'/

	STATUS=9

	DO J=1,52
	IF(CHAR.EQ.LETTERS(J))THEN
	  STATUS=1
	  GO TO 100
	END IF
	END DO

100	RETURN
	END

