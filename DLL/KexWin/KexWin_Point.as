;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		���W �n
;	    Ver. 2.00 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535 :	msg = ""
	screen 0 , 400 , 300
	    title "HSP�E�B���h�E 0"

	dialog "3�b��ɃA�N�e�B�u�ȃE�B���h�E�̃n���h�����擾���܂��D",,"GetActWin �g�p�O"
	wait 300
	GetActWin ID	;//--[�E�B���h�E �n���h���n]
			;//	�A�N�e�B�u�E�B���h�E(�n���h��)���擾
	TT = refstr


;//--�w��̃E�B���h�E��̍��W����X�N���[�����W�𓾂�
	wait 10
	msg  = "�E�B���h�EID ["+ID+"]\n"
	msg += "  �^�C�g�� ["+TT+"]��\n\n"
	msg += "  �N���C�A���g���W(100,100)��\n  �X�N���[�����W�𓾂܂��D"
	dialog msg,,"CliToScr �g�p�O"

	CliToScr p1 , 100 , 100 , ID	;//--�X�N���[�����W�𓾂�
					;//--  p1.0 = X�� , p1.1 = Y��

	wait 10
	msg  = "�E�B���h�EID ["+ID+"]\n"
	msg += "  �^�C�g�� ["+TT+"]��\n\n"
	msg += "  �N���C�A���g���W(100,100)�́A\n"
	msg += "  �X�N���[�����W�́A("+p1.0+","+p1.1+")�ł��D"
	dialog msg,,"CliToScr �g�p��"


;//--�X�N���[�����W����A�w��̃E�B���h�E��ł̍��W�𓾂�
	wait 10
	msg  = "�X�N���[�����W(200,200)����A\n"
	msg += "  �E�B���h�EID ["+ID+"]\n"
	msg += "  �^�C�g�� ["+TT+"]\n"
	msg += "  �̃N���C�A���g���W�𓾂܂��D"
	dialog msg,,"ScrToCli �g�p�O"

	ScrToCli p1 , 200 , 200 , ID	;//--�N���C�A���g���W�𓾂�
					;//--  p1.0 = X�� , p1.1 = Y��

	wait 10
	msg  = "�X�N���[�����W(200,200)�́A\n"
	msg += "  �E�B���h�EID ["+ID+"]\n"
	msg += "  �^�C�g�� ["+TT+"]\n"
	msg += "  �̃N���C�A���g���W�́A\n\n("+p1.0+","+p1.1+")�ł��D"
	dialog msg,,"ScrToCli �g�p��"


;//--
	wait 20
	dialog "����HSP�X�N���v�g�͏I�����܂����D\n�E�B���h�E����Ă��������D"
	stop
