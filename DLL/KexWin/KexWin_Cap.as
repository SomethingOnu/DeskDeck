;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		ウィンドウ キャプション系
;	    Ver. 2.00 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

;//--

	alloc msg , 65535 : msg = ""
	screen 0 , 400 , 300
	    title "KexWin.DLL サンプルスクリプト [KexWin_Cap.as]"

	dialog "3秒後にアクティブなウィンドウを取得します．",,"GetActWin 使用前"
	wait 300
	GetActWin ID	;//--[ウィンドウ ハンドル系]
			;//	アクティブウィンドウ(ハンドル)を取得
	msg  = "アクティブなウィンドウのIDは、\n"
	msg += "["+ID+"]です．"
	dialog msg,,"GetActWin 使用後"


;//--ウィンドウタイトルを取得
	wait 10
	alloc TT , 1024:TT=""

	msg  = "ウィンドウID "+ID+" の\nウィンドウタイトルを取得します．"
	dialog msg , 0 , "GetWinTitle 使用前"

	GetWinTitle TT , ID	;//--ウィンドウタイトルを取得する
	if refstr = "ERROR" : dialog "ウィンドウタイトル取得に失敗しました",,"GetWinTitle エラー"

	msg  = "ウィンドウハンドル "+ID+" の\n"
	msg += "　ウィンドウタイトルは、\n"
	msg += "　["+TT+"]\n  です．"

	dialog msg , 0 , "GetWinTitle 使用後"


;//--ウィンドウタイトルを変更
	wait 10

	msg  = "ウィンドウID "+ID+" の\n"
	msg += "　ウィンドウタイトル\n"
	msg += "　["+TT+"]\nのタイトルを、変更します．"

	dialog msg , 0 , "SetWinTitle 使用前"

	KexWinVer : vNo = stat : vS = refstr

	SetWinTitle ID , "KLAUS KexWin.DLL Ver. "+vNo+refstr
		if stat != 0 : dialog "SetWinTitle エラー"

	dialog "ウィンドウタイトルを変更しました",,"SetWinTitle 使用後"


;//--ウィンドウタイトルバーを点滅させる
	wait 10

	dialog "ウィンドウタイトルバーを点滅させます",,"FlashWin 使用前"

	repeat 5
		wait 50
		FlashWin ID , 1
	loop

	FlashWin ID

	dialog "点滅を終了します．",,"FlushWin 使用後"

;//--
	wait 10

	dialog "このHSPスクリプトは終了しました．\nウィンドウを閉じてください．"
	stop
