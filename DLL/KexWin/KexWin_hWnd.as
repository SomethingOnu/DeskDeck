;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		ウィンドウ ハンドル 系
;	    Ver. 2.00 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535 : msg = ""
	screen 0 , 200 , 50 , , 0 , 0
	    title "HSPウィンドウ 0"
	screen 2 , 200 , 50 , , 200 , 0
	    title "HSPウィンドウ 2"
	screen 3 , 200 , 50 , , 400 , 0
	    title "HSPウィンドウ 3"
	gsel 0 , 1


;//--アクティブなウィンドウハンドルを取得
	wait 10

	dialog "2秒後にアクティブなウィンドウの\n  ハンドルを取得します．",,"GetActWin 使用前"
	wait 200

	GetActWin ID	;//--アクティブなウィンドウのハンドルを取得

	TT = refstr

	msg  = "アクティブなウィンドウのウィンドウハンドルは、\n"
	msg += "  ["+ID+"]です．\n\n"
	msg += "ウィンドウタイトル(64文字)は、\n"
	msg += "  ["+TT+"]\nです．"
	dialog msg,,"GetSctWin 使用後"

;//--ウィンドウのタイトルから、ウィンドウを探し、ハンドルを取得
	wait 30
	msg  = "ウィンドウタイトル\n"
	msg += "[HSPウィンドウ 2]を探し、\nそのハンドルを取得します．"
	dialog msg,,"WinFinder 使用前"

	WinFinder ID , "HSPウィンドウ 2"
				;//--文字列から、そのウィンドウタイトルを含む
				;//--  ハンドルを取得
	TT = refstr

	msg  = "[HSPウィンドウ 2]を含むウィンドウの\n"
	msg += "  ウィンドウハンドルは、["+ID+"]\n\n"
	msg += "ウィンドウタイトル(64文字)は、\n"
	msg += "  ["+TT+"]\n  です．"
	dialog msg,,"WinFinder 使用後"

;//--現在のHSPのウィンドウハンドルを取得
	wait 30

	gsel 3
	dialog "現在のHSPのウィンドウを取得します．",,"GetHspWin 使用前"

	GetHspWin	;//--現在のHSPのウィンドウのハンドルを取得

	ID = stat
	TT = refstr

	msg  = "現在のHSPのウィンドウのウィンドウハンドルは、\n"
	msg += "  ["+ID+"]\n\n"
	msg += "ウィンドウタイトル(64文字)は、\n"
	msg += "  ["+TT+"]\n  です．"
	dialog msg,,"GetHspWin 使用後"

;//--ウィンドウハンドルのウィンドウが現在、存在するか調べる
	wait 30
	dialog "ウィンドウID["+ID+"]が存在するか調べます．",,"ExistWin 使用前"

	ExistWin ID	;//--ウィンドウハンドルが現在、存在するか調べる

	Ret = stat
	if Ret = 0 : msg = "ウィンドウID["+ID+"]のウィンドウは存在します．"
	if Ret = 1 : msg = "ウィンドウID["+ID+"]のウィンドウは存在しません．"
	dialog msg,,"ExistWin 使用後"

	ID = 9999
	dialog "ウィンドウID["+ID+"]が存在するか調べます．",,"ExistWin 使用前"

	ExistWin ID

	Ret = stat
	if Ret = 0 : msg = "ウィンドウID["+ID+"]のウィンドウは存在します．"
	if Ret = 1 : msg = "ウィンドウID["+ID+"]のウィンドウは存在しません．"
	dialog msg,,"ExistWin 使用後"


;//--
	dialog "このHSPスクリプトは終了しました．\nウィンドウを閉じてください．"
	stop
