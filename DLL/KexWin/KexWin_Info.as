;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�E�B���h�E ��� �n
;	    Ver. 2.00 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

;//--
	alloc msg , 65535 :	msg = ""


;//--���b�Z�[�W�{�b�N�X��\��
*MesMain
	msg  = "KexWin.DLL �� MesDlg �ł��D\n\n"
	msg += "HSP�W���� dialog �̊g���łł��D\n\n"
	msg += "HSP�W���ɉ���(�t�@�C���E�F�̑���͂ł��܂���)�A\n"
	msg += "  �{�^���A�A�C�R�� �������A\n"
	msg += "  �f�t�H���g�{�^���̎w��Ȃǂ��o���܂��D\n"
	CapText = "MesDlg �e�X�g"
	MesFlag = 0x00000002 + 0x00000020 + 0x00000000 + 0x00001000 + 0x0008000

	MesDlg msg , CapText , MesFlag		;//�g���_�C�A���O�{�b�N�X

	RetS = stat
	if RetS = 3 : msg = "[���~]�������܂����ˁD"
	if RetS = 4 : msg = "[�Ď��s]���܁`���D"
	if RetS = 5 : msg = "[����]���Ȃ��ł�`"
	dialog msg , , "�����HSP�W���� dialog �ł��D"

	if RetS = 4 : goto *MesMain


;//--
	dialog "����HSP�X�N���v�g�͏I�����܂����D\n�E�B���h�E����Ă��������D"
	stop
