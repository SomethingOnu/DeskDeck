;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		サウンド系
;	    Ver. 2.00 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	alloc msg , 65535 :	msg = ""

	screen 0 , 300 , 100
	    title "KexWin.DLL サンプル -Snd系-"


;/--ビープ音を鳴らす
	wait 10
	dialog "ビープ音を鳴らします．",,"Beeping 使用前"
	wait 100
	Beeping	cnt	;//--ビープ音を鳴らす
			;/-- NTだと、	p1 --- 周波数 , p2 --- 鳴らす時間


;/--システムのサウンドを鳴らす ( [コントロールパネル]の[サウンド] )
	wait 100
	msg  = "システムのサウンドを鳴らします．\n\n"
	msg += "  (1秒間隔で、6種類)\n"
	dialog msg,,"MesBeep 使用前"

	wait 200
	title "標準ビープ音"
	MesBeep 0

	wait 200
	title "メッセージ (情報)"
	MesBeep 1

	wait 200
	title "メッセージ (警告)"
	MesBeep 2

	wait 200
	title "システムエラー"
	MesBeep 3

	wait 200
	title "メッセージ (問合わせ)"
	MesBeep 4

	wait 200
	title "一般の警告音"
	MesBeep 5


;//--
	wait 100
	title "終了"
	dialog "このHSPスクリプトは終了しました．\nウィンドウを閉じてください．"
	stop
