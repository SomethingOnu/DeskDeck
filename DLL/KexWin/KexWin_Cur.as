;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�}�E�X�J�[�\�� �n
;	    ver. 2.00 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535 :	msg = ""
	screen 0 , 300 , 100 , , 0 , 0
	    title "HSP�E�B���h�E 0"
	screen 2 , 400 , 300 , , 0 , 120
	    title "HSP�E�B���h�E 2"


;//--�J�[�\���̈ړ��͈͂𐧌�����
	wait 10
	msg  = "5�b�ԁA�J�[�\���̈ړ��\�Ȕ͈͂��A\n"
	msg += "����ɐ������܂��D"
	dialog msg,,"MouseLimit �g�p�O"

	MouseLimit 0 , 0 , 100 , 100	;//--�J�[�\���̈ړ��͈͂��A
					;//--  (0,0)-(100,100)�̐�������
	wait 500

	MouseLimit 10 , 10 , 0 , 0	;//--�J�[�\���̈ړ��͈͂���������

	dialog "�J�[�\���̈ړ��͈͂� ���� �� ���� ���܂����D",,"MouseLimit �g�p��"


;//--�J�[�\���̈ړ��͈͂��w��̃E�B���h�E�̑傫���ɍ��킹��
	wait 10
	msg  = "5�b�ԁA�J�[�\���̈ړ��\�Ȕ͈͂��A\n"
	msg += "[HSP�E�B���h�E 2]�͈̔͂ɂ��܂��D"
	dialog msg,,"MouseWinLimit �g�p�O"

	MouseWinLimit 0 , 1	;//--�J�[�\���̈ړ��͈͂����݂�HSP��
				;//--  �E�B���h�E�̃T�C�Y�ɍ��킹�Đ�������
	    if stat != 0 : dialog "���s���܂����D" : stop
	wait 500

	MouseWinLimit 0 , 0	;//--�J�[�\���̈ړ��͈͂���������

	dialog "�J�[�\���̈ړ��͈͂� ���� �� ���� ���܂����D",,"MouseWinLimit �g�p��"


;//--�J�[�\�����V�X�e����`�̃J�[�\���ɕύX����
	wait 10
	msg  = "[HSP�E�B���h�E 2]��̃J�[�\����ύX���܂��D\n\n"
	msg += "3�b���ƂɕύX����܂��D"
	dialog msg,,"SysCur �g�p�O"

	repeat 14
		SysCur cnt	;//--�V�X�e����`�̃J�[�\���ɕύX����

		title "HSP�E�B���h�E 2 (SysCur "+cnt+")"

		Beeping		;//--[�T�E���h �n] --  �r�[�v����炷

		wait 300
	loop

	SysCur		;//--�W���̃J�[�\���ɕύX����

	title "HSP�E�B���h�E 2"

	dialog "�J�[�\���̕ύX���I�����܂����D",,"SysCur �g�p�O"


;//--�J�[�\�����w��̃J�[�\���t�@�C���ɕύX����
	wait 10
	msg  = "[HSP�E�B���h�E 0]��̃J�[�\�����A\n"
	msg += "�@�J�[�\���t�@�C��\"Kex_Samp.cur\"��\n\n"
	msg += "[HSP�E�B���h�E 2]��̃J�[�\�����A\n"
	msg += "�@�A�j���J�[�\���t�@�C��\"Kex_Samp.ani\"��\n\n"
	msg += "�@�ύX���܂��D\n"
	dialog msg,,"FileCur �g�p�O"

	gsel 0
	cf = "Kex_Samp.cur"
	FileCur cf
	    if stat != 0 : dialog "�J�[�\���t�@�C��\n["+cf+"]\n�����[�h�ł��܂���ł���"
	title "HSP�E�B���h�E 0 ("+cf+")"

	gsel 2
	cf = "Kex_Samp.ani"
	FileCur cf
	    if stat != 0 : dialog "�J�[�\���t�@�C��\n["+cf+"]\n�����[�h�ł��܂���ł���"
	title "HSP�E�B���h�E 2 ("+cf+")"

	Beeping		;//--[�T�E���h �n]

	wait 50

	dialog "�J�[�\����ύX���܂����D",,"FileCur �g�p��"


;//--
	wait 10
	dialog "����HSP�X�N���v�g�͏I�����܂����D\n�E�B���h�E����Ă��������D",1
	stop
