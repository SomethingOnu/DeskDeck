;	�E�B���h�E�Q�ƁE�X�V DLL (KexWin.DLL) for HSP
;		�E�B���h�E ���[�W�����n
;	    Ver. 2.01 �` (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
;=====================================================================================
;	���[�W�����́A�E�B���h�E�̉��ł���`�̎��ł��D
;	�ʏ�̃E�B���h�E�̃��[�W�����́A�����`�ɂȂ��Ă��܂����A
;	�@����DLL�ŁA���̌`��ύX�ł��܂��D
;
;	�E�B���h�E��̃��[�W�����̊O�̕����́A�����ɂȂ�A
;	�@���̉��̃E�B���h�E��A�f�X�N�g�b�v�Ȃǂ����邱�Ƃ��o���܂��D
;=====================================================================================

#include "KexWin.as"

;//--
	alloc msg , 65535 :	msg = ""
	x = (dispx - 360) / 2
	y = (dispy - 120) / 2
	bmpFile = "Rgn2.bmp"
	tX.0 = 0, 35, 95, 145, 230, 260, 310, 340	;���߂���F�̍��W
	tY = 70						;

	sdim moji, 4, 8
	moji.0 = "", "K", "e", "x", "S", "o", "f", "t"

	screen 0 , 360 , 360 , 1, x , y
	    title "HSP�E�B���h�E 0"
	picload bmpFile

	ReadyRgn 0, 0		;//--���[�W�����쐬�E�ύX�̏���������
	UniteRgn 0 , 0		;//--���[�W�������A�X�V����


;//--�摜�t�@�C�����g���ă��[�W�������쐬���܂�
	wait 10

	msg  = "[Rgn2.bmp]������'K','e','x','S','o','f','t'�𔲂���\n"
	msg += "�@���[�W�������쐬���A�ēx�Z�b�g���܂��D"
	dialog msg,,"���[�W�������\�b�h �g�p�O"

     ;�����ꂼ��̕����𔲂������[�W�������쐬
	repeat 7, 1
		wait 30
		gsel 0, 1
		ReadyRgn 0, cnt		;//--���[�W�����쐬�E�ύX�̏���������

		ReadyHspWinRgn tX.cnt, tY
					;//--HSP�E�B���h�E���烊�[�W�����쐬�̏���

		HspWinRgn cnt, 2	;//--HSP�E�B���h�E���烊�[�W�����쐬

		UniteRgn 0 , cnt	;//--���[�W�������A�X�V����

		BackUpRgn cnt		;//--�o�b�N�A�b�v���Ă���

		SetRgn cnt		;//--���[�W�������Z�b�g

		title "'"+moji.cnt+"' �𓧉� - SetRgn"
	loop

	msg  = "��������́A\n"
	msg += "�@����������[�W������\n"
	msg += "�@�ēx�Z�b�g����D"
	msg += " (�������[�v���܂�)"
	dialog msg,,"ReSetRgn����"

     ;���ēx�Z�b�g
	repeat
	    repeat 7, 1
		wait 30
		ReSetRgn cnt, 0		;//--���[�W�������ăZ�b�g
		SetRgn 0

		title "'"+moji.cnt+"' �𓧉� - ReSetRgn"
	    loop
	loop

	stop
