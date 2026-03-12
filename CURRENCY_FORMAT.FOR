	SUBROUTINE CURRENCY_FORMAT(IN,OUT,PLACES)

C	*************************************************************
C	* THIS SUBROUTINE CONVERTS NUMERIC DATA TO CHARACTER STRING *
C	* WITH $ SIGN, COMMAS, AND DECIMAL POINT IF PLACES IS > 0   *
C	*************************************************************

	IMPLICIT	NONE
	INTEGER*2	PLACES,J,K,N,KS,L
	REAL*8		IN
	CHARACTER	OUT*20,DUMMY*16,WORK*17

	K=0
	N=0
	WORK='                 '
	OUT='                    '

	IF(PLACES.EQ.0)THEN
	  WRITE (DUMMY,100)IN
100	  FORMAT(F16.0)
	ELSE
	  WRITE (DUMMY,110)IN
110	  FORMAT(F16.2)
	END IF

	DO 200 J=1,16
	IF(DUMMY(J:J).EQ.' ')GO TO 200

	N=N+1
	IF(N.EQ.1)THEN
	  WORK(J:J)='$'
	END IF
	WORK(J+1:J+1)=DUMMY(J:J)

200	CONTINUE

	IF(PLACES.EQ.0)THEN
	  KS=16
	  L=21
	ELSE
	  KS=14
	  L=18
	END IF

	DO K=KS,1,-3
	DO J=1,3
	L=L-1
	OUT(L:L)=WORK(K-J+1:K-J+1)
	IF(OUT(L:L).EQ.'$'.OR.OUT(L:L).EQ.' ')GO TO 300
	END DO
	IF(WORK(K-3:K-3).NE.'$')THEN
	  L=L-1
	  OUT(L:L)=','
	END IF
	END DO

300	IF(PLACES.NE.0)THEN
	  OUT(20:20)=WORK(17:17)
	  OUT(19:19)=WORK(16:16)
	  OUT(18:18)=WORK(15:15)
	END IF

	RETURN
	END
