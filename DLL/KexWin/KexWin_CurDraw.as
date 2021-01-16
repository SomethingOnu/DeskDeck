;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		カーソル描画
;	    Ver. 2.01 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535 :	msg = ""
	screen 0 , 600 , 100 , , 0 , 0
	    title "HSPウィンドウ 0"
	screen 2 , 600 , 100 , , 0 , 120
	    title "HSPウィンドウ 2"


;//--システムのカーソルを描画する & ファイルのカーソルを描画する
	wait 10
	msg  = "[HSPウィンドウ 0]にシステムのカーソルを描画します．\n\n"
	msg += "[HSPウィンドウ 2]に、\n"
	msg += "　Kex_Samp.cur と Kex_Samp.ani に含まれるカーソルを\n"
	msg += "　描画します．"
	dialog msg,,"DrawCur 使用前"

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

	dialog "カーソルをウィンドウに描画しました．",,"DrawCur 使用後"

;//--
	wait 10
	dialog "このHSPスクリプトは終了しました．\nウィンドウを閉じてください．"
	stop
