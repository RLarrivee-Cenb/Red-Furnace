	SUBROUTINE KEYS_TO_ASCII(DKEY,CHAR,STATUS)

C	***********************************************************
C	* RETURNS ASCII CHARACTER FROM CALL TO SMG$READ_KEYSTROKE *
C	***********************************************************

	IMPLICIT	NONE
	INTEGER*2	DKEY,STATUS,KEYS(105),JJ,LC
	CHARACTER	CHAR*1,CHARS(105)*1

	DO JJ=1,94
	KEYS(JJ)=JJ+32
	END DO

	DO JJ=95,104
	KEYS(JJ)=JJ+165
	END DO

	KEYS(105)=273

	CHARS(1)='!'
	CHARS(2)='"'
	CHARS(3)='#'
	CHARS(4)='$'
	CHARS(5)='%'
	CHARS(6)='&'
	CHARS(7)=''''
	CHARS(8)='('
	CHARS(9)=')'
	CHARS(10)='*'
	CHARS(11)='+'
	CHARS(12)=','
	CHARS(13)='-'
	CHARS(14)='.'
	CHARS(15)='/'
	CHARS(16)='0'
	CHARS(17)='1'
	CHARS(18)='2'
	CHARS(19)='3'
	CHARS(20)='4'
	CHARS(21)='5'
	CHARS(22)='6'
	CHARS(23)='7'
	CHARS(24)='8'
	CHARS(25)='9'
	CHARS(26)=':'
	CHARS(27)=';'
	CHARS(28)='<'
	CHARS(29)='='
	CHARS(30)='>'
	CHARS(31)='?'
	CHARS(32)='@'
	CHARS(33)='A'
	CHARS(34)='B'
	CHARS(35)='C'
	CHARS(36)='D'
	CHARS(37)='E'
	CHARS(38)='F'
	CHARS(39)='G'
	CHARS(40)='H'
	CHARS(41)='I'
	CHARS(42)='J'
	CHARS(43)='K'
	CHARS(44)='L'
	CHARS(45)='M'
	CHARS(46)='N'
	CHARS(47)='O'
	CHARS(48)='P'
	CHARS(49)='Q'
	CHARS(50)='R'
	CHARS(51)='S'
	CHARS(52)='T'
	CHARS(53)='U'
	CHARS(54)='V'
	CHARS(55)='W'
	CHARS(56)='X'
	CHARS(57)='Y'
	CHARS(58)='Z'
	CHARS(59)='['
	CHARS(60)='\'
	CHARS(61)=']'
	CHARS(62)='^'
	CHARS(63)='_'
	CHARS(64)=' '
	CHARS(65)='a'
	CHARS(66)='b'
	CHARS(67)='c'
	CHARS(68)='d'
	CHARS(69)='e'
	CHARS(70)='f'
	CHARS(71)='g'
	CHARS(72)='h'
	CHARS(73)='i'
	CHARS(74)='j'
	CHARS(75)='k'
	CHARS(76)='l'
	CHARS(77)='m'
	CHARS(78)='n'
	CHARS(79)='o'
	CHARS(80)='p'
	CHARS(81)='q'
	CHARS(82)='r'
	CHARS(83)='s'
	CHARS(84)='t'
	CHARS(85)='u'
	CHARS(86)='v'
	CHARS(87)='w'
	CHARS(88)='x'
	CHARS(89)='y'
	CHARS(90)='z'
	CHARS(91)='{'
	CHARS(92)='|'
	CHARS(93)='}'
	CHARS(94)='~'
	CHARS(95)='0'
	CHARS(96)='1'
	CHARS(97)='2'
	CHARS(98)='3'
	CHARS(99)='4'
	CHARS(100)='5'
	CHARS(101)='6'
	CHARS(102)='7'
	CHARS(103)='8'
	CHARS(104)='9'
	CHARS(105)='.'

	STATUS=9

	DO LC=1,105
	IF(DKEY.EQ.KEYS(LC))THEN
	  CHAR=CHARS(LC)
	  STATUS=1
	  GO TO 100
	END IF
	END DO

100	RETURN
	END
