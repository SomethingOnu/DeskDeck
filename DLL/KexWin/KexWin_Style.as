;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		ウィンドウ スタイル系
;	    Ver. 2.00 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

;//--
	onexit *owari

	alloc msg , 65535 :	msg = ""
	screen 0 , 200 , 100 , , 0 , 0
	    title "HSPウィンドウ 0"
	screen 2 , 200 , 100 , , 200 , 0
	    title "HSPウィンドウ 2"
	screen 3 , 200 , 100 , , 400 , 0
	    title "HSPウィンドウ 3"
	screen 4 , 500 , 300 , , 0 , 100
	    title "HSPウィンドウ 4"


;/--システムの[画面のデザイン]の色を得る
	wait 10
	msg  = "システムの[画面のデザイン]の色の\n\n"

	GetColor clr , 5	;//--[画面のデザイン]の色を得る (ウィンドウの背景色)

	msg += "ウィンドウの背景色は、\n"
	msg += "  R = "+clr.0 + " , G = "+clr.1+" , B = "+clr.2+"\n\n"

	GetColor clr , 4	;//--[画面のデザイン]の色を得る (メニューの背景色)

	msg += "メニューの背景色は、\n"
	msg += "  R = "+clr.0 + " , G = "+clr.1+" , B = "+clr.2+"\n\n"

	dialog msg,,"GetColor 使用後"


;//--ウィンドウの表示状態を変更する
	wait 10
	dialog "[HSPウィンドウ *]の\n  ウィンドウの表示状態を変更します．",,"ShowWin 使用前"

	gsel 0
	GetHspWin : ID = stat		;//--[ウィンドウハンドル系]
					;//--  HSPウィンドウハンドルを取得
	ShowWin ID , 0			;//--ウィンドウ表示形式を変更

	gsel 2
	GetHspWin : ID = stat		;//--[ウィンドウハンドル系]
					;//--  HSPウィンドウハンドルを取得
	ShowWin ID , 1			;//--ウィンドウ表示形式を変更


;//--ウィンドウの表示状態を得る
	wait 10
	dialog "[HSPウィンドウ *]の\n  ウィンドウの表示状態を得ます．",,"IsWinVisible 使用前"

	msg = ""
	gsel 0
	GetHspWin : ID = stat	;//--[ウィンドウハンドル系]
				;//--  HSPウィンドウハンドルを取得
	IsWinVisible ID		;//--ウィンドウの表示状態 取得
	rVis = stat
	msg += "[HSPウィンドウ 0]は、\n"
	gosub *VisLoop
	msg + = "されています．\n\n"

	gsel 2
	GetHspWin : ID = stat	;//--[ウィンドウハンドル系]
				;//--  HSPウィンドウハンドルを取得
	IsWinVisible ID		;//--ウィンドウの表示状態 取得
	rVis = stat
	msg += "[HSPウィンドウ 2]は、 \n"
	gosub *VisLoop
	msg + = "されています．\n\n"

	dialog msg,,"IsWinVisible 使用後"


;//--ウィンドウの位置を変更します
	wait 10
	dialog "[HSPウィンドウ 4]の位置を変更します．",,"MoveWin 使用前"

	gsel 4
	GetHspWin : ID = stat	;//--[ウィンドウハンドル系]
				;//--  HSPウィンドウハンドルを取得

	MoveWin ID , 300 , 200	;//--ウィンドウの位置を変更する


;//--ウィンドウのサイズを変更する
	wait 10

	gsel 4
	GetHspWin : ID = stat	;//--[ウィンドウハンドル系]
				;//--  HSPウィンドウハンドルを取得

	dialog "[HSPウィンドウ 4]のサイズを( 100 , 100 )に変更します．",,"SizeWin 使用前"

	SizeWin ID , 100 , 100	;//--ウィンドウのサイズを変更する

	wait 100

	dialog "[HSPウィンドウ 4]のサイズを( 400 , 300 )に変更します．",,"SizeWin 使用前"

	SizeWin ID , 400 ,300	;//--ウィンドウのサイズを変更する


;//--ウィンドウをアクティブにする
	wait 10
	dialog "[HSPウィンドウ 3]をアクティブにします．",,"SetActWin 使用前"

	gsel 3
	GetHspWin : ID = stat	;//--[ウィンドウハンドル系]
				;//--  HSPウィンドウハンドルを取得

	SetActWin ID		;//--ウィンドウをアクティブにする

	wait 100


;//--ウィンドウを破棄します
	wait 10
	msg  = "[HSPウィンドウ 0]を破棄します．\n\n"
	msg += "このDelWin命令で、このスクリプトを終了します．\n"
	msg += "  (どのHSPのウィンドウを閉じてもHSP自体が終了します)\n"
	msg += "  (  onexit のラベルは実行されません)
	dialog msg,,"DelWin 使用前"

	gsel 0
	GetHspWin : ID = stat	;//--[ウィンドウハンドル系]
				;//--  HSPウィンドウハンドルを取得

	DelWin ID		;//--ウィンドウを破棄する

	stop


;//--
*owari
	dialog "強制終了します．"
	end


*VisLoop
	if rVis = 0 :	msg += "非表示で他がアクティブ\n"
	if rVis = 1 :	msg += "アクティブで最大化・最小化を元に戻して表示\n"
	if rVis = 2 :	msg += "アクティブで最小化で表示\n"
	if rVis = 3 :	msg += "アクティブで最大化で表示\n"
	if rVis = 4 :	msg += "アクティブ順はそのままで直前の位置・サイズで\n"
	if rVis = 5 :	msg += "アクティブで現在位置・サイズで表示\n"
	if rVis = 6 :	msg += "最小化で次がアクティブ\n"
	if rVis = 7 :	msg += "アクティブ順はそのままで、最小化\n"
	if rVis = 8 :	msg += "アクティブ順はそのままで表示\n"
	if rVis = 9 :	msg += "アクティブで最大・最小化を元に戻して表示\n"
	if rVis = 10 :	msg += "起動時のプロセスの通りに表示
	if rVis = 11 :	msg += "？？？？？"

	return
