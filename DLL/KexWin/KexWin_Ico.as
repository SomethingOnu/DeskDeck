;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�A�C�R�� �n
;	    Ver. 2.01 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535 :	msg = ""
	screen 0, 300, 100, , 0, 0
	    title "HSP�E�B���h�E 0"
	screen 2, 300, 100, , 0, 120
	    title "HSP�E�B���h�E 2"
	screen 3, 300, 100, , 0, 240
	    title "HSP�E�B���h�E 3"


;//--�V�X�e���̃A�C�R����\������ & �A�C�R���t�@�C����\������
	wait 10
	msg  = "[HSP�E�B���h�E 0]�ɃV�X�e���̃A�C�R�����A\n"
	msg += "  [HSP�E�B���h�E 2]��explorer.exe�Ɋ܂܂��A�C�R����\n"
	msg += "  �\�����܂��D\n"
	dialog msg,,"DrawIco �g�p�O"

	x = 0
	gsel 0, 1
	color 0xFF , 0xFF , 0xFF

	repeat 6 , 32512
	    pos x, 0
	    SysIco cnt			;//--�V�X�e����`�̃A�C�R�������[�h
		if stat != 0 : dialog "SysIco "+stat+"\ncnt "+cnt
	    DrawIco			;//--�A�C�R����`��
		if stat != 0 : dialog "DrawIco "+stat
	    x += 32
	loop
	redraw

	gsel 2, 1
	color 0xFF , 0xFF , 0xFF

	icof = ""+windir+"\\EXPLORER.EXE"
	IcoCnt ii , icof
		if stat != 0 : dialog "IcoCnt "+stat

	repeat ii
	    pos cnt*32, 0
	    FileIco icof , cnt		;//--�t�@�C������A�C�R�������[�h
		if stat != 0 : dialog "FileIco "+stat
	    DrawIco			;//--�A�C�R����`��
		if stat != 0 : dialog "DrawIco "+stat
	loop

	redraw

	dialog "�A�C�R�����E�B���h�E�ɕ`�悵�܂����D",,"DrawIco �g�p��"

;//--�E�B���h�E�̃A�C�R�����擾���A�\������
	wait 30

	msg  = "�R�b��ɃA�N�e�B�u�ȃE�B���h�E�̃A�C�R�����擾���A\n"
	msg += "�@���̃A�C�R����[HSP�E�B���h�E 3]�ɕ`�悵�܂��D"
	dialog msg,, "DrawIco �g�p�O"

	x = 0
	gsel 3, 1
	wait 300
	GetActWin ID			;//--�A�N�e�B�u�E�B���h�E���擾

	GetWinIco ID			;//--�E�B���h�E�̃A�C�R�����擾

	DrawIco				;//--�A�C�R����`��

	redraw

	dialog "�A�C�R�����E�B���h�E�ɕ`�悵�܂����D",,"DrawIco �g�p��"
	
;//--
	wait 30
	gsel 0, 1
	dialog "����HSP�X�N���v�g�͏I�����܂����D\n�E�B���h�E����Ă��������D"
	stop
