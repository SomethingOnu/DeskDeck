;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�E�B���h�E�R���g���[�� �n
;	    ver. 2.00 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

;//--
	alloc msg , 65535 : msg = ""
	screen 0 , 240 , 200 , , 0 , 0
		title "HSP�E�B���h�E 0"
	screen 2 , 240 , 200 , , 260 , 0
		title "HSP�E�B���h�E 2"

;//--�E�B���h�E�ւ̃A�N�Z�X�𐧌䂷��
	wait 10
	msg  = "10�b�ԁA[HSP�E�B���h�E 2] �ւ�\n�}�E�X�E�L�[�{�[�h�ł�\n"
	msg += "�A�N�Z�X���o���Ȃ��悤�ɂ��܂��D\n"
	dialog msg,,"EnableWin �g�p�O"

	gsel 2
	EnableWin 0 , 1		;//���݂�HSP�E�B���h�E�ւ̃A�N�Z�X��s�ɂ���

	wait 1000

	msg  = "[HSP�E�B���h�E ?] �ւ�\n�}�E�X�E�L�[�{�[�h�ł�\n"
	msg += "�A�N�Z�X���\�����ׂ�D\n"
	dialog msg,,"EnableWin �g�p�� �� IsEnableWin �g�p�O"

	msg  = "[HSP�E�B���h�E 0] �ւ̃A�N�Z�X�́A\n"
	gsel 0
	IsEnableWin 0		;//�E�B���h�E�ւ̃A�N�Z�X���L�������ׂ�
	if stat == 0 : msg += "�L��" : else : msg += "����"
	msg += "�ł��D\n\n"

	msg += "[HSP�E�B���h�E 2] �ւ̃A�N�Z�X�́A\n"
	gsel 2
	IsEnableWin 0		;//�E�B���h�E�ւ̃A�N�Z�X���L�������ׂ�
	if stat == 0 : msg += "�L��" : else : msg += "����"
	msg += "�ł��D\n\n"

	dialog msg,,"IsEnableWin �g�p��"


	dialog "[HSP�E�B���h�E 2] �ւ̃A�N�Z�X��߂��܂��D\n",,"EnableWin �g�p�O"

	gsel 2
	EnableWin 0 , 0		;//���݂�HSP�E�B���h�E�ւ̃A�N�Z�X���\�ɂ���

	dialog "[HSP�E�B���h�E 2] �ւ̃A�N�Z�X��߂��܂����D\n",,"EnableWin �g�p��"


;//--
	wait 10
	dialog "����HSP�X�N���v�g�͏I�����܂����D\n�E�B���h�E����Ă��������D",1
	stop
