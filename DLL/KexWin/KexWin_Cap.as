;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�E�B���h�E �L���v�V�����n
;	    Ver. 2.00 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

;//--

	alloc msg , 65535 : msg = ""
	screen 0 , 400 , 300
	    title "KexWin.DLL �T���v���X�N���v�g [KexWin_Cap.as]"

	dialog "3�b��ɃA�N�e�B�u�ȃE�B���h�E���擾���܂��D",,"GetActWin �g�p�O"
	wait 300
	GetActWin ID	;//--[�E�B���h�E �n���h���n]
			;//	�A�N�e�B�u�E�B���h�E(�n���h��)���擾
	msg  = "�A�N�e�B�u�ȃE�B���h�E��ID�́A\n"
	msg += "["+ID+"]�ł��D"
	dialog msg,,"GetActWin �g�p��"


;//--�E�B���h�E�^�C�g�����擾
	wait 10
	alloc TT , 1024:TT=""

	msg  = "�E�B���h�EID "+ID+" ��\n�E�B���h�E�^�C�g�����擾���܂��D"
	dialog msg , 0 , "GetWinTitle �g�p�O"

	GetWinTitle TT , ID	;//--�E�B���h�E�^�C�g�����擾����
	if refstr = "ERROR" : dialog "�E�B���h�E�^�C�g���擾�Ɏ��s���܂���",,"GetWinTitle �G���["

	msg  = "�E�B���h�E�n���h�� "+ID+" ��\n"
	msg += "�@�E�B���h�E�^�C�g���́A\n"
	msg += "�@["+TT+"]\n  �ł��D"

	dialog msg , 0 , "GetWinTitle �g�p��"


;//--�E�B���h�E�^�C�g����ύX
	wait 10

	msg  = "�E�B���h�EID "+ID+" ��\n"
	msg += "�@�E�B���h�E�^�C�g��\n"
	msg += "�@["+TT+"]\n�̃^�C�g�����A�ύX���܂��D"

	dialog msg , 0 , "SetWinTitle �g�p�O"

	KexWinVer : vNo = stat : vS = refstr

	SetWinTitle ID , "KLAUS KexWin.DLL Ver. "+vNo+refstr
		if stat != 0 : dialog "SetWinTitle �G���["

	dialog "�E�B���h�E�^�C�g����ύX���܂���",,"SetWinTitle �g�p��"


;//--�E�B���h�E�^�C�g���o�[��_�ł�����
	wait 10

	dialog "�E�B���h�E�^�C�g���o�[��_�ł����܂�",,"FlashWin �g�p�O"

	repeat 5
		wait 50
		FlashWin ID , 1
	loop

	FlashWin ID

	dialog "�_�ł��I�����܂��D",,"FlushWin �g�p��"

;//--
	wait 10

	dialog "����HSP�X�N���v�g�͏I�����܂����D\n�E�B���h�E����Ă��������D"
	stop
