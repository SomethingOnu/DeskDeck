;	MP3�Đ� DLL (KexWin.DLL) for HSP
;		�ȈՃv���C���[	�T���v���X�N���v�g
;	    ver. 2.00 �`	(c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexMP3.as"

;//--

	onexit *Owari

	alloc msg , 65535 : msg = ""
	alloc MesInfo , 65535 : MesInfo = "������MP3�̃f�[�^���\������܂��D"
	fn = ""
	TrackName = ""		;�Ȗ�
	ArtistName = ""		;�A�[�e�B�X�g
	Channel = 0		;�`�����l��
	BitRate = 0		;�r�b�g���[�g
	SampRate = 0		;�T���v�����O���[�g
	TotalSec = 0		;�Ȃ̒���
	sdim MorS , 64 , 3	;���m���� / �X�e���I
	MorS.0 =  "??" : MorS.1 = "Monaural" : MorS.2 = "Stereo" 

	KexMP3Ver			;//[KexMP3.DLL]�̃o�[�W�����擾
	vNo = stat : vS = refstr	;// �� : 1.00-a = stat : 100 , refstr : a

	screen 0 , 400 , 300
	    title "MP3�v���C���[�T���v�� [KexMP3.DLL] "+vNo+vS
	pos 0 , 0
	mes "MP3�v���C���[�T���v�� [KexMP3.DLL] "+vNo+vS

	mesbox MesInfo , 400 , 150
	button "�J��" , *S_MP3Open
	button "�Đ�" , *S_MP3Start
	button "��~" , *S_MP3Stop

	MP3Ready -1 , -1 , 1		;//MP3���\�b�h���g������
					;//���݂̃{�����[����ێ�
	    if stat != 0 : dialog "�G���[ "+stat ,,"MP3Ready"

	stop

;//--MP3�t�@�C�����J��
*S_MP3Open

	dialog "mp3;*.rmp" , 16 , "MP3 file"
	fn = refstr
	if stat != 1 : dialog "MP3�t�@�C����I��łˁD" : stop

	MP3Open fn		;//MP3���J��
		if stat != 0 : dialog "�G���[ "+stat ,,"MP3Open" : end

	MP3Info TrackName , 0	;//MP3�̏����擾	�Ȗ�
	MP3Info ArtistName , 1	;//			�A�[�e�B�X�g��
	MP3Info Channel , 2	;//			�`�����l��
	MP3Info BitRate , 3	;//			�r�b�g���[�g
	MP3Info SampRate , 4	;//			�T���v�����O���[�g
	MP3Info TotalSec , 5	;//			�Ȃ̒���

	tMin = TotalSec / 60 : tSec = TotalSec \ 60

	MesInfo  = "TrackName\t: "+TrackName+"\n"
	MesInfo += "ArtistName\t: "+ArtistName+"\n"
	MesInfo += "Channels\t\t: "+MorS.Channel+"("+Channel+")\n"
	MesInfo += "BitRate\t\t: "+BitRate+"\n"
	MesInfo += "SamplingRate\t: "+SampRate+"\n"
	MesInfo += "TotalSec\t\t: "+tMin+" \: "+tSec+" ("+TotalSec+" )\n"
	objprm 0 , MesInfo
	objprm 2 , "�Đ�"

	stop

;//--MP3�t�@�C���� �Đ� / �ꎞ��~
*S_MP3Start

	MP3Start	;// �Đ� / �ꎞ��~ / ���A �𔻕ʂ��ď���
		if stat != 0 : dialog "�G���[ "+stat ,,"MP3Start" : end

	wait 100	;//������MP3State�����s����ƕύX����Ȃ��Ƃ�������܂�

	MP3State	;//��Ԃ��擾 ( ��~�� / �Đ��� / �ꎞ��~�� )
	st = stat
	if st == 1 : objprm 2 , "�ꎞ��~"
	if st == 2 : objprm 2 , "�Đ�" : stop

	nMin = 0 : nSec = 0
	repeat
		MP3State	;//��Ԃ��擾 ( ��~�� / �Đ��� / �ꎞ��~�� )
		    if stat != 1 : break
		MP3Pos		;//�Đ����̈ʒu���擾(�b�P��)
		nT = stat
		if nT != 0 : nMin = nT / 60 : nSec = nT \ 60
		title ""+nMin+" \: "+nSec
		wait 30
	loop

	objprm 2 , "�Đ�"
	title "stop"
	stop

;//--MP3�Đ����~
*S_MP3Stop
	MP3Stop		;//�Đ����~
		if stat != 0 : dialog "�G���[ "+stat ,,"MP3Stop" : end
	title "stop"
	objprm 2 , "�Đ�"
	stop

;//--�I��
*Owari
	end
