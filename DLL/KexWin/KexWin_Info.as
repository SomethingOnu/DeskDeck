;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		ウィンドウ 情報 系
;	    Ver. 2.00 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

;//--
	alloc msg , 65535 :	msg = ""


;//--メッセージボックスを表示
*MesMain
	msg  = "KexWin.DLL の MesDlg です．\n\n"
	msg += "HSP標準の dialog の拡張版です．\n\n"
	msg += "HSP標準に加え(ファイル・色の操作はできません)、\n"
	msg += "  ボタン、アイコン が増え、\n"
	msg += "  デフォルトボタンの指定などが出来ます．\n"
	CapText = "MesDlg テスト"
	MesFlag = 0x00000002 + 0x00000020 + 0x00000000 + 0x00001000 + 0x0008000

	MesDlg msg , CapText , MesFlag		;//拡張ダイアログボックス

	RetS = stat
	if RetS = 3 : msg = "[中止]を押しましたね．"
	if RetS = 4 : msg = "[再試行]しま～す．"
	if RetS = 5 : msg = "[無視]しないでよ～"
	dialog msg , , "これはHSP標準の dialog です．"

	if RetS = 4 : goto *MesMain


;//--
	dialog "このHSPスクリプトは終了しました．\nウィンドウを閉じてください．"
	stop
