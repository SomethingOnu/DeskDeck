;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�E�B���h�E �T�C�Y�n
;	    Ver. 2.00 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535	: msg = ""
	alloc tt , 1024		: tt = ""

	screen 0 , 300 , 200
	    title "HSP�E�B���h�E 0"

;//--
	wait 10
	msg  = "3�b��ɃA�N�e�B�u�ȃE�B���h�E�̃n���h���𓾂܂�\n"
	dialog msg,,"GetActWin �g�p�O"

	wait 300
	GetActWin ID
	TT = refstr


;//--�w��E�B���h�E�̃X�N���[�����W�𓾂�
	wait 10

	GetWinRect rect , ID	;//--�E�B���h�E�̃X�N���[�����W�𓾂�

	msg  = "�E�B���h�E�n���h��["+ID+"]\n"
	msg += "  ["+tt+"]\n"
	msg += "  �̃X�N���[�����W�́A\n"
	msg += "  ("+rect.0+","+rect.1+")-("+rect.2+","+rect.3+")�ł��D"
	dialog msg,,"GetWinRect �g�p��"


;//--�w��E�B���h�E�̃N���C�A���g�T�C�Y�𓾂�
	wait 10

	GetCliSize rect , ID	;//--�E�B���h�E�̃N���C�A���g�T�C�Y�𓾂�

	msg  = "�E�B���h�E�n���h��["+ID+"]\n"
	msg += "  ["+tt+"]\n"
	msg += "  �N���C�A���g�T�C�Y�́A\n"
	msg += "  ��="+rect.0+"�A����="+rect.1+"�ł��D"
	dialog msg,,"GetCliSize �g�p��"


;//--�X�N���[���T�C�Y���擾����
	wait 10
	msg  = "���݂̃X�N���[���T�C�Y���擾���܂��D\n\n"
	msg += "(�V�X�e���ϐ� winx , winy �Ɠ����ł����A)\n"
	msg += "(  HSP���s���ł��A���݂̃X�N���[���T�C�Y���擾�ł��܂�)"
	dialog msg,,"GetSysMetrics �g�p�O"

	GetSysMetrics cx , 0		;//--�X�N���[���T�C�Y(x)���擾

	GetSysMetrics cy , 1		;//--�X�N���[���T�C�Y(y)���擾

	msg  = "���݂̃X�N���[���T�C�Y�́A\n"
	msg += "  ( "+cx+" , "+cy+" ) �ł��D"
	dialog msg,,"GetSysMetrics �g�p��"


;//--
	dialog "����HSP�X�N���v�g�͏I�����܂����D\n�E�B���h�E����Ă��������D"
	stop
