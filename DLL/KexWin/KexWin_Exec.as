;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�t�@�C�����s �n
;	    ver. 2.00 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	screen 0 , 300 , 100 ,, 0 , 0
	KexWinVer : vNo = stat : vStr = refstr
	title "KexWin.DLL Ver. "+vNo+vStr+" [CmdExec]"
	gsel 0 , 2

	dialog "�m�[�g�p�b�h�����s���܂��D",,"CmdExec �g�p�O"

	CmdExec "notepad.exe"		;//�t�@�C�������s

	dialog "�m�[�g�p�b�h�����s���܂����D",,"CmdExec �g�p��"


;//--
	wait 10
	gsel 0 , 2
	dialog "����HSP�X�N���v�g�͏I�����܂��D"
	end
