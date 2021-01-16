;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		マウスカーソル 系
;	    ver. 2.00 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535 :	msg = ""
	screen 0 , 300 , 100 , , 0 , 0
	    title "HSPウィンドウ 0"
	screen 2 , 400 , 300 , , 0 , 120
	    title "HSPウィンドウ 2"


;//--カーソルの移動範囲を制限する
	wait 10
	msg  = "5秒間、カーソルの移動可能な範囲を、\n"
	msg += "左上に制限します．"
	dialog msg,,"MouseLimit 使用前"

	MouseLimit 0 , 0 , 100 , 100	;//--カーソルの移動範囲を、
					;//--  (0,0)-(100,100)の制限する
	wait 500

	MouseLimit 10 , 10 , 0 , 0	;//--カーソルの移動範囲を解除する

	dialog "カーソルの移動範囲を 制限 → 解除 しました．",,"MouseLimit 使用後"


;//--カーソルの移動範囲を指定のウィンドウの大きさに合わせる
	wait 10
	msg  = "5秒間、カーソルの移動可能な範囲を、\n"
	msg += "[HSPウィンドウ 2]の範囲にします．"
	dialog msg,,"MouseWinLimit 使用前"

	MouseWinLimit 0 , 1	;//--カーソルの移動範囲を現在のHSPの
				;//--  ウィンドウのサイズに合わせて制限する
	    if stat != 0 : dialog "失敗しました．" : stop
	wait 500

	MouseWinLimit 0 , 0	;//--カーソルの移動範囲を解除する

	dialog "カーソルの移動範囲を 制限 → 解除 しました．",,"MouseWinLimit 使用後"


;//--カーソルをシステム定義のカーソルに変更する
	wait 10
	msg  = "[HSPウィンドウ 2]上のカーソルを変更します．\n\n"
	msg += "3秒ごとに変更されます．"
	dialog msg,,"SysCur 使用前"

	repeat 14
		SysCur cnt	;//--システム定義のカーソルに変更する

		title "HSPウィンドウ 2 (SysCur "+cnt+")"

		Beeping		;//--[サウンド 系] --  ビープ音を鳴らす

		wait 300
	loop

	SysCur		;//--標準のカーソルに変更する

	title "HSPウィンドウ 2"

	dialog "カーソルの変更を終了しました．",,"SysCur 使用前"


;//--カーソルを指定のカーソルファイルに変更する
	wait 10
	msg  = "[HSPウィンドウ 0]上のカーソルを、\n"
	msg += "　カーソルファイル\"Kex_Samp.cur\"に\n\n"
	msg += "[HSPウィンドウ 2]上のカーソルを、\n"
	msg += "　アニメカーソルファイル\"Kex_Samp.ani\"に\n\n"
	msg += "　変更します．\n"
	dialog msg,,"FileCur 使用前"

	gsel 0
	cf = "Kex_Samp.cur"
	FileCur cf
	    if stat != 0 : dialog "カーソルファイル\n["+cf+"]\nをロードできませんでした"
	title "HSPウィンドウ 0 ("+cf+")"

	gsel 2
	cf = "Kex_Samp.ani"
	FileCur cf
	    if stat != 0 : dialog "カーソルファイル\n["+cf+"]\nをロードできませんでした"
	title "HSPウィンドウ 2 ("+cf+")"

	Beeping		;//--[サウンド 系]

	wait 50

	dialog "カーソルを変更しました．",,"FileCur 使用後"


;//--
	wait 10
	dialog "このHSPスクリプトは終了しました．\nウィンドウを閉じてください．",1
	stop
