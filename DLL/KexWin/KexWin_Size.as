;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		ウィンドウ サイズ系
;	    Ver. 2.00 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535	: msg = ""
	alloc tt , 1024		: tt = ""

	screen 0 , 300 , 200
	    title "HSPウィンドウ 0"

;//--
	wait 10
	msg  = "3秒後にアクティブなウィンドウのハンドルを得ます\n"
	dialog msg,,"GetActWin 使用前"

	wait 300
	GetActWin ID
	TT = refstr


;//--指定ウィンドウのスクリーン座標を得る
	wait 10

	GetWinRect rect , ID	;//--ウィンドウのスクリーン座標を得る

	msg  = "ウィンドウハンドル["+ID+"]\n"
	msg += "  ["+tt+"]\n"
	msg += "  のスクリーン座標は、\n"
	msg += "  ("+rect.0+","+rect.1+")-("+rect.2+","+rect.3+")です．"
	dialog msg,,"GetWinRect 使用後"


;//--指定ウィンドウのクライアントサイズを得る
	wait 10

	GetCliSize rect , ID	;//--ウィンドウのクライアントサイズを得る

	msg  = "ウィンドウハンドル["+ID+"]\n"
	msg += "  ["+tt+"]\n"
	msg += "  クライアントサイズは、\n"
	msg += "  幅="+rect.0+"、高さ="+rect.1+"です．"
	dialog msg,,"GetCliSize 使用後"


;//--スクリーンサイズを取得する
	wait 10
	msg  = "現在のスクリーンサイズを取得します．\n\n"
	msg += "(システム変数 winx , winy と同じですが、)\n"
	msg += "(  HSP実行中でも、現在のスクリーンサイズを取得できます)"
	dialog msg,,"GetSysMetrics 使用前"

	GetSysMetrics cx , 0		;//--スクリーンサイズ(x)を取得

	GetSysMetrics cy , 1		;//--スクリーンサイズ(y)を取得

	msg  = "現在のスクリーンサイズは、\n"
	msg += "  ( "+cx+" , "+cy+" ) です．"
	dialog msg,,"GetSysMetrics 使用後"


;//--
	dialog "このHSPスクリプトは終了しました．\nウィンドウを閉じてください．"
	stop
