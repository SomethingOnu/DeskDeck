;	ウィンドウ参照・更新 DLL (KexWin.DLL) for HSP
;		ファイル実行 系
;	    ver. 2.00 ～ (c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexWin.as"

	screen 0 , 300 , 100 ,, 0 , 0
	KexWinVer : vNo = stat : vStr = refstr
	title "KexWin.DLL Ver. "+vNo+vStr+" [CmdExec]"
	gsel 0 , 2

	dialog "ノートパッドを実行します．",,"CmdExec 使用前"

	CmdExec "notepad.exe"		;//ファイルを実行

	dialog "ノートパッドを実行しました．",,"CmdExec 使用後"


;//--
	wait 10
	gsel 0 , 2
	dialog "このHSPスクリプトは終了します．"
	end
