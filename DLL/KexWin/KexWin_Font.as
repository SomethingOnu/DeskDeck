;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		フォント 系
;	    ver. 2.00 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

;//--
	alloc msg , 65535 : msg = ""
	alloc Moji , 65535 : Moji = ""

	screen 0 , 600 , 300
		title "HSPウィンドウ 0 - GetMesSize サンプルスクリプト"

	font "FixedSys" , 36	;//★フォント、サイズを変更して比較してみてください★

	input moji , 200 , 24
	mes "　　↑サイズを取得したい文字列を入力"
	mes "\n"
	mes "　　↓文字列のサイズを取得"
	button "取得" , *Gettyu

	;//20ドット間隔でラインを引く
	repeat 30
		line cnt*20 , 120 , cnt*20 , 130
	loop

	stop

;//--Mes 命令等で表示される文字列の幅・高さを取得する
*Gettyu
	wait 10

	pos 0 , 130
	mes Moji

	GetMesSize Moji , 0
	MojiW = stat

	GetMesSize Moji , 1
	MojiH = stat

	dialog "もじ\n"+Moji+"\nの\n\n幅は、"+MojiW+"\n高さは、"+MojiH

	stop
