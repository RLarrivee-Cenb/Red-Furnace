	SUBROUTINE PRINT_PITCH(PITCH)

C	*************************************************************
C	* THIS SUBROUTINE SETS THE LA120 TO A SPECIFIED PRINT PITCH *
C	* AND IS USED IN CONJUNCTION WITH "PRINT" COMMANDS          *
C	*************************************************************

C	*************************************************
C	* NOTE: PRINTER MUST BE TURNED ON "BEFORE" CALL *
C	* TO PRINT_PITCH IS MADE OR IT WON'T WORK       *
C	*************************************************

	IMPLICIT	NONE
	REAL*4		PITCH
	CHARACTER	SET*4,ESC*1/27/

	IF(PITCH.EQ.5.)THEN
	  SET=ESC//'[5w'
	ELSE IF(PITCH.EQ.6.)THEN
	  SET=ESC//'[6w'
	ELSE IF(PITCH.EQ.6.6)THEN
	  SET=ESC//'[7w'
	ELSE IF(PITCH.EQ.8.25)THEN
	  SET=ESC//'[8w'
	ELSE IF(PITCH.EQ.10.)THEN
	  SET=ESC//'[1w'
	ELSE IF(PITCH.EQ.12.)THEN
	  SET=ESC//'[2w'
	ELSE IF(PITCH.EQ.13.2)THEN
	  SET=ESC//'[3w'
	ELSE IF(PITCH.EQ.16.5)THEN
	  SET=ESC//'[4w'
	ELSE
	  SET=ESC//'[1w'			! DEFAULT FOR INVALID PITCH
	END IF                                  ! IS 10 CHARS. PER INCH

	PRINT 100,SET
100	FORMAT(1X,A)

	RETURN
	END
