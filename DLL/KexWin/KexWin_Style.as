;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�E�B���h�E �X�^�C���n
;	    Ver. 2.00 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

;//--
	onexit *owari

	alloc msg , 65535 :	msg = ""
	screen 0 , 200 , 100 , , 0 , 0
	    title "HSP�E�B���h�E 0"
	screen 2 , 200 , 100 , , 200 , 0
	    title "HSP�E�B���h�E 2"
	screen 3 , 200 , 100 , , 400 , 0
	    title "HSP�E�B���h�E 3"
	screen 4 , 500 , 300 , , 0 , 100
	    title "HSP�E�B���h�E 4"


;/--�V�X�e����[��ʂ̃f�U�C��]�̐F�𓾂�
	wait 10
	msg  = "�V�X�e����[��ʂ̃f�U�C��]�̐F��\n\n"

	GetColor clr , 5	;//--[��ʂ̃f�U�C��]�̐F�𓾂� (�E�B���h�E�̔w�i�F)

	msg += "�E�B���h�E�̔w�i�F�́A\n"
	msg += "  R = "+clr.0 + " , G = "+clr.1+" , B = "+clr.2+"\n\n"

	GetColor clr , 4	;//--[��ʂ̃f�U�C��]�̐F�𓾂� (���j���[�̔w�i�F)

	msg += "���j���[�̔w�i�F�́A\n"
	msg += "  R = "+clr.0 + " , G = "+clr.1+" , B = "+clr.2+"\n\n"

	dialog msg,,"GetColor �g�p��"


;//--�E�B���h�E�̕\����Ԃ�ύX����
	wait 10
	dialog "[HSP�E�B���h�E *]��\n  �E�B���h�E�̕\����Ԃ�ύX���܂��D",,"ShowWin �g�p�O"

	gsel 0
	GetHspWin : ID = stat		;//--[�E�B���h�E�n���h���n]
					;//--  HSP�E�B���h�E�n���h�����擾
	ShowWin ID , 0			;//--�E�B���h�E�\���`����ύX

	gsel 2
	GetHspWin : ID = stat		;//--[�E�B���h�E�n���h���n]
					;//--  HSP�E�B���h�E�n���h�����擾
	ShowWin ID , 1			;//--�E�B���h�E�\���`����ύX


;//--�E�B���h�E�̕\����Ԃ𓾂�
	wait 10
	dialog "[HSP�E�B���h�E *]��\n  �E�B���h�E�̕\����Ԃ𓾂܂��D",,"IsWinVisible �g�p�O"

	msg = ""
	gsel 0
	GetHspWin : ID = stat	;//--[�E�B���h�E�n���h���n]
				;//--  HSP�E�B���h�E�n���h�����擾
	IsWinVisible ID		;//--�E�B���h�E�̕\����� �擾
	rVis = stat
	msg += "[HSP�E�B���h�E 0]�́A\n"
	gosub *VisLoop
	msg + = "����Ă��܂��D\n\n"

	gsel 2
	GetHspWin : ID = stat	;//--[�E�B���h�E�n���h���n]
				;//--  HSP�E�B���h�E�n���h�����擾
	IsWinVisible ID		;//--�E�B���h�E�̕\����� �擾
	rVis = stat
	msg += "[HSP�E�B���h�E 2]�́A \n"
	gosub *VisLoop
	msg + = "����Ă��܂��D\n\n"

	dialog msg,,"IsWinVisible �g�p��"


;//--�E�B���h�E�̈ʒu��ύX���܂�
	wait 10
	dialog "[HSP�E�B���h�E 4]�̈ʒu��ύX���܂��D",,"MoveWin �g�p�O"

	gsel 4
	GetHspWin : ID = stat	;//--[�E�B���h�E�n���h���n]
				;//--  HSP�E�B���h�E�n���h�����擾

	MoveWin ID , 300 , 200	;//--�E�B���h�E�̈ʒu��ύX����


;//--�E�B���h�E�̃T�C�Y��ύX����
	wait 10

	gsel 4
	GetHspWin : ID = stat	;//--[�E�B���h�E�n���h���n]
				;//--  HSP�E�B���h�E�n���h�����擾

	dialog "[HSP�E�B���h�E 4]�̃T�C�Y��( 100 , 100 )�ɕύX���܂��D",,"SizeWin �g�p�O"

	SizeWin ID , 100 , 100	;//--�E�B���h�E�̃T�C�Y��ύX����

	wait 100

	dialog "[HSP�E�B���h�E 4]�̃T�C�Y��( 400 , 300 )�ɕύX���܂��D",,"SizeWin �g�p�O"

	SizeWin ID , 400 ,300	;//--�E�B���h�E�̃T�C�Y��ύX����


;//--�E�B���h�E���A�N�e�B�u�ɂ���
	wait 10
	dialog "[HSP�E�B���h�E 3]���A�N�e�B�u�ɂ��܂��D",,"SetActWin �g�p�O"

	gsel 3
	GetHspWin : ID = stat	;//--[�E�B���h�E�n���h���n]
				;//--  HSP�E�B���h�E�n���h�����擾

	SetActWin ID		;//--�E�B���h�E���A�N�e�B�u�ɂ���

	wait 100


;//--�E�B���h�E��j�����܂�
	wait 10
	msg  = "[HSP�E�B���h�E 0]��j�����܂��D\n\n"
	msg += "����DelWin���߂ŁA���̃X�N���v�g���I�����܂��D\n"
	msg += "  (�ǂ�HSP�̃E�B���h�E����Ă�HSP���̂��I�����܂�)\n"
	msg += "  (  onexit �̃��x���͎��s����܂���)
	dialog msg,,"DelWin �g�p�O"

	gsel 0
	GetHspWin : ID = stat	;//--[�E�B���h�E�n���h���n]
				;//--  HSP�E�B���h�E�n���h�����擾

	DelWin ID		;//--�E�B���h�E��j������

	stop


;//--
*owari
	dialog "�����I�����܂��D"
	end


*VisLoop
	if rVis = 0 :	msg += "��\���ő����A�N�e�B�u\n"
	if rVis = 1 :	msg += "�A�N�e�B�u�ōő剻�E�ŏ��������ɖ߂��ĕ\��\n"
	if rVis = 2 :	msg += "�A�N�e�B�u�ōŏ����ŕ\��\n"
	if rVis = 3 :	msg += "�A�N�e�B�u�ōő剻�ŕ\��\n"
	if rVis = 4 :	msg += "�A�N�e�B�u���͂��̂܂܂Œ��O�̈ʒu�E�T�C�Y��\n"
	if rVis = 5 :	msg += "�A�N�e�B�u�Ō��݈ʒu�E�T�C�Y�ŕ\��\n"
	if rVis = 6 :	msg += "�ŏ����Ŏ����A�N�e�B�u\n"
	if rVis = 7 :	msg += "�A�N�e�B�u���͂��̂܂܂ŁA�ŏ���\n"
	if rVis = 8 :	msg += "�A�N�e�B�u���͂��̂܂܂ŕ\��\n"
	if rVis = 9 :	msg += "�A�N�e�B�u�ōő�E�ŏ��������ɖ߂��ĕ\��\n"
	if rVis = 10 :	msg += "�N�����̃v���Z�X�̒ʂ�ɕ\��
	if rVis = 11 :	msg += "�H�H�H�H�H"

	return
