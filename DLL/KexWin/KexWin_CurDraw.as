;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�J�[�\���`��
;	    Ver. 2.01 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535 :	msg = ""
	screen 0 , 600 , 100 , , 0 , 0
	    title "HSP�E�B���h�E 0"
	screen 2 , 600 , 100 , , 0 , 120
	    title "HSP�E�B���h�E 2"


;//--�V�X�e���̃J�[�\����`�悷�� & �t�@�C���̃J�[�\����`�悷��
	wait 10
	msg  = "[HSP�E�B���h�E 0]�ɃV�X�e���̃J�[�\����`�悵�܂��D\n\n"
	msg += "[HSP�E�B���h�E 2]�ɁA\n"
	msg += "�@Kex_Samp.cur �� Kex_Samp.ani �Ɋ܂܂��J�[�\����\n"
	msg += "�@�`�悵�܂��D"
	dialog msg,,"DrawCur �g�p�O"

	gsel 0
	color 0xFF , 0xFF , 0xFF
	x = 0

	repeat 14
		pos x , 0
		SysCur cnt , 1
			if stat != 0 : dialog "SysCur "+stat
		DrawCur
			if stat != 0 : dialog "DrawCur "+stat
		x += 32
	loop

	redraw

	wait 10

	gsel 2
	color 0xFF , 0xFF , 0xFF

	pos 0 , 0
	FileCur "Kex_Samp.cur" , 1
		if stat != 0 : dialog "FileCur "+stat
	DrawCur
		if stat != 0 : dialog "DrawCur "+stat


	FileCur "Kex_Samp.ani" , 1
		if stat != 0 : dialog "FileCur "+stat
	x = 0

	repeat 7
		pos x , 32
		DrawCur 0 , 0 , cnt
			if stat != 0 : dialog "DrawCur "+stat
		x += 32
	loop

	redraw

	dialog "�J�[�\�����E�B���h�E�ɕ`�悵�܂����D",,"DrawCur �g�p��"

;//--
	wait 10
	dialog "����HSP�X�N���v�g�͏I�����܂����D\n�E�B���h�E����Ă��������D"
	stop
