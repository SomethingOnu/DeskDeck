;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�T�E���h�n
;	    Ver. 2.00 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535 :	msg = ""

	screen 0 , 300 , 100
	    title "KexWin.DLL �T���v�� -Snd�n-"


;/--�r�[�v����炷
	wait 10
	dialog "�r�[�v����炵�܂��D",,"Beeping �g�p�O"
	wait 100
	Beeping	cnt	;//--�r�[�v����炷
			;/-- NT���ƁA	p1 --- ���g�� , p2 --- �炷����


;/--�V�X�e���̃T�E���h��炷 ( [�R���g���[���p�l��]��[�T�E���h] )
	wait 100
	msg  = "�V�X�e���̃T�E���h��炵�܂��D\n\n"
	msg += "  (1�b�Ԋu�ŁA6���)\n"
	dialog msg,,"MesBeep �g�p�O"

	wait 200
	title "�W���r�[�v��"
	MesBeep 0

	wait 200
	title "���b�Z�[�W (���)"
	MesBeep 1

	wait 200
	title "���b�Z�[�W (�x��)"
	MesBeep 2

	wait 200
	title "�V�X�e���G���["
	MesBeep 3

	wait 200
	title "���b�Z�[�W (�⍇�킹)"
	MesBeep 4

	wait 200
	title "��ʂ̌x����"
	MesBeep 5


;//--
	wait 100
	title "�I��"
	dialog "����HSP�X�N���v�g�͏I�����܂����D\n�E�B���h�E����Ă��������D"
	stop
