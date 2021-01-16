;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		アイコン 系
;	    Ver. 2.01 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535 :	msg = ""
	screen 0, 300, 100, , 0, 0
	    title "HSPウィンドウ 0"
	screen 2, 300, 100, , 0, 120
	    title "HSPウィンドウ 2"
	screen 3, 300, 100, , 0, 240
	    title "HSPウィンドウ 3"


;//--システムのアイコンを表示する & アイコンファイルを表示する
	wait 10
	msg  = "[HSPウィンドウ 0]にシステムのアイコンを、\n"
	msg += "  [HSPウィンドウ 2]にexplorer.exeに含まれるアイコンを\n"
	msg += "  表示します．\n"
	dialog msg,,"DrawIco 使用前"

	x = 0
	gsel 0, 1
	color 0xFF , 0xFF , 0xFF

	repeat 6 , 32512
	    pos x, 0
	    SysIco cnt			;//--システム定義のアイコンをロード
		if stat != 0 : dialog "SysIco "+stat+"\ncnt "+cnt
	    DrawIco			;//--アイコンを描画
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
	    FileIco icof , cnt		;//--ファイルからアイコンをロード
		if stat != 0 : dialog "FileIco "+stat
	    DrawIco			;//--アイコンを描画
		if stat != 0 : dialog "DrawIco "+stat
	loop

	redraw

	dialog "アイコンをウィンドウに描画しました．",,"DrawIco 使用後"

;//--ウィンドウのアイコンを取得し、表示する
	wait 30

	msg  = "３秒後にアクティブなウィンドウのアイコンを取得し、\n"
	msg += "　そのアイコンを[HSPウィンドウ 3]に描画します．"
	dialog msg,, "DrawIco 使用前"

	x = 0
	gsel 3, 1
	wait 300
	GetActWin ID			;//--アクティブウィンドウを取得

	GetWinIco ID			;//--ウィンドウのアイコンを取得

	DrawIco				;//--アイコンを描画

	redraw

	dialog "アイコンをウィンドウに描画しました．",,"DrawIco 使用後"
	
;//--
	wait 30
	gsel 0, 1
	dialog "このHSPスクリプトは終了しました．\nウィンドウを閉じてください．"
	stop
