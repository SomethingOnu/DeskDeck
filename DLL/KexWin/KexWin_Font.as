;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�t�H���g �n
;	    ver. 2.00 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

;//--
	alloc msg , 65535 : msg = ""
	alloc Moji , 65535 : Moji = ""

	screen 0 , 600 , 300
		title "HSP�E�B���h�E 0 - GetMesSize �T���v���X�N���v�g"

	font "FixedSys" , 36	;//���t�H���g�A�T�C�Y��ύX���Ĕ�r���Ă݂Ă���������

	input moji , 200 , 24
	mes "�@�@���T�C�Y���擾����������������"
	mes "\n"
	mes "�@�@��������̃T�C�Y���擾"
	button "�擾" , *Gettyu

	;//20�h�b�g�Ԋu�Ń��C��������
	repeat 30
		line cnt*20 , 120 , cnt*20 , 130
	loop

	stop

;//--Mes ���ߓ��ŕ\������镶����̕��E�������擾����
*Gettyu
	wait 10

	pos 0 , 130
	mes Moji

	GetMesSize Moji , 0
	MojiW = stat

	GetMesSize Moji , 1
	MojiH = stat

	dialog "����\n"+Moji+"\n��\n\n���́A"+MojiW+"\n�����́A"+MojiH

	stop
