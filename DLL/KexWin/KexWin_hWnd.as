;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�E�B���h�E �n���h�� �n
;	    Ver. 2.00 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535 : msg = ""
	screen 0 , 200 , 50 , , 0 , 0
	    title "HSP�E�B���h�E 0"
	screen 2 , 200 , 50 , , 200 , 0
	    title "HSP�E�B���h�E 2"
	screen 3 , 200 , 50 , , 400 , 0
	    title "HSP�E�B���h�E 3"
	gsel 0 , 1


;//--�A�N�e�B�u�ȃE�B���h�E�n���h�����擾
	wait 10

	dialog "2�b��ɃA�N�e�B�u�ȃE�B���h�E��\n  �n���h�����擾���܂��D",,"GetActWin �g�p�O"
	wait 200

	GetActWin ID	;//--�A�N�e�B�u�ȃE�B���h�E�̃n���h�����擾

	TT = refstr

	msg  = "�A�N�e�B�u�ȃE�B���h�E�̃E�B���h�E�n���h���́A\n"
	msg += "  ["+ID+"]�ł��D\n\n"
	msg += "�E�B���h�E�^�C�g��(64����)�́A\n"
	msg += "  ["+TT+"]\n�ł��D"
	dialog msg,,"GetSctWin �g�p��"

;//--�E�B���h�E�̃^�C�g������A�E�B���h�E��T���A�n���h�����擾
	wait 30
	msg  = "�E�B���h�E�^�C�g��\n"
	msg += "[HSP�E�B���h�E 2]��T���A\n���̃n���h�����擾���܂��D"
	dialog msg,,"WinFinder �g�p�O"

	WinFinder ID , "HSP�E�B���h�E 2"
				;//--�����񂩂�A���̃E�B���h�E�^�C�g�����܂�
				;//--  �n���h�����擾
	TT = refstr

	msg  = "[HSP�E�B���h�E 2]���܂ރE�B���h�E��\n"
	msg += "  �E�B���h�E�n���h���́A["+ID+"]\n\n"
	msg += "�E�B���h�E�^�C�g��(64����)�́A\n"
	msg += "  ["+TT+"]\n  �ł��D"
	dialog msg,,"WinFinder �g�p��"

;//--���݂�HSP�̃E�B���h�E�n���h�����擾
	wait 30

	gsel 3
	dialog "���݂�HSP�̃E�B���h�E���擾���܂��D",,"GetHspWin �g�p�O"

	GetHspWin	;//--���݂�HSP�̃E�B���h�E�̃n���h�����擾

	ID = stat
	TT = refstr

	msg  = "���݂�HSP�̃E�B���h�E�̃E�B���h�E�n���h���́A\n"
	msg += "  ["+ID+"]\n\n"
	msg += "�E�B���h�E�^�C�g��(64����)�́A\n"
	msg += "  ["+TT+"]\n  �ł��D"
	dialog msg,,"GetHspWin �g�p��"

;//--�E�B���h�E�n���h���̃E�B���h�E�����݁A���݂��邩���ׂ�
	wait 30
	dialog "�E�B���h�EID["+ID+"]�����݂��邩���ׂ܂��D",,"ExistWin �g�p�O"

	ExistWin ID	;//--�E�B���h�E�n���h�������݁A���݂��邩���ׂ�

	Ret = stat
	if Ret = 0 : msg = "�E�B���h�EID["+ID+"]�̃E�B���h�E�͑��݂��܂��D"
	if Ret = 1 : msg = "�E�B���h�EID["+ID+"]�̃E�B���h�E�͑��݂��܂���D"
	dialog msg,,"ExistWin �g�p��"

	ID = 9999
	dialog "�E�B���h�EID["+ID+"]�����݂��邩���ׂ܂��D",,"ExistWin �g�p�O"

	ExistWin ID

	Ret = stat
	if Ret = 0 : msg = "�E�B���h�EID["+ID+"]�̃E�B���h�E�͑��݂��܂��D"
	if Ret = 1 : msg = "�E�B���h�EID["+ID+"]�̃E�B���h�E�͑��݂��܂���D"
	dialog msg,,"ExistWin �g�p��"


;//--
	dialog "����HSP�X�N���v�g�͏I�����܂����D\n�E�B���h�E����Ă��������D"
	stop
