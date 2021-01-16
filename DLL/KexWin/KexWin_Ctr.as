;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		ウィンドウコントロール 系
;	    ver. 2.00 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

;//--
	alloc msg , 65535 : msg = ""
	screen 0 , 240 , 200 , , 0 , 0
		title "HSPウィンドウ 0"
	screen 2 , 240 , 200 , , 260 , 0
		title "HSPウィンドウ 2"

;//--ウィンドウへのアクセスを制御する
	wait 10
	msg  = "10秒間、[HSPウィンドウ 2] への\nマウス・キーボードでの\n"
	msg += "アクセスを出来ないようにします．\n"
	dialog msg,,"EnableWin 使用前"

	gsel 2
	EnableWin 0 , 1		;//現在のHSPウィンドウへのアクセスを不可にする

	wait 1000

	msg  = "[HSPウィンドウ ?] への\nマウス・キーボードでの\n"
	msg += "アクセスが可能か調べる．\n"
	dialog msg,,"EnableWin 使用後 → IsEnableWin 使用前"

	msg  = "[HSPウィンドウ 0] へのアクセスは、\n"
	gsel 0
	IsEnableWin 0		;//ウィンドウへのアクセスが有効か調べる
	if stat == 0 : msg += "有効" : else : msg += "無効"
	msg += "です．\n\n"

	msg += "[HSPウィンドウ 2] へのアクセスは、\n"
	gsel 2
	IsEnableWin 0		;//ウィンドウへのアクセスが有効か調べる
	if stat == 0 : msg += "有効" : else : msg += "無効"
	msg += "です．\n\n"

	dialog msg,,"IsEnableWin 使用後"


	dialog "[HSPウィンドウ 2] へのアクセスを戻します．\n",,"EnableWin 使用前"

	gsel 2
	EnableWin 0 , 0		;//現在のHSPウィンドウへのアクセスを可能にする

	dialog "[HSPウィンドウ 2] へのアクセスを戻しました．\n",,"EnableWin 使用後"


;//--
	wait 10
	dialog "このHSPスクリプトは終了しました．\nウィンドウを閉じてください．",1
	stop
