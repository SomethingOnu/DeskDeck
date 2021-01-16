;	MP3再生 DLL (KexWin.DLL) for HSP
;		簡易プレイヤー	サンプルスクリプト
;	    ver. 2.00 ～	(c) 1999 KLAUS
;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#include "KexMP3.as"

;//--

	onexit *Owari

	alloc msg , 65535 : msg = ""
	alloc MesInfo , 65535 : MesInfo = "ここにMP3のデータが表示されます．"
	fn = ""
	TrackName = ""		;曲名
	ArtistName = ""		;アーティスト
	Channel = 0		;チャンネル
	BitRate = 0		;ビットレート
	SampRate = 0		;サンプリングレート
	TotalSec = 0		;曲の長さ
	sdim MorS , 64 , 3	;モノラル / ステレオ
	MorS.0 =  "??" : MorS.1 = "Monaural" : MorS.2 = "Stereo" 

	KexMP3Ver			;//[KexMP3.DLL]のバージョン取得
	vNo = stat : vS = refstr	;// 例 : 1.00-a = stat : 100 , refstr : a

	screen 0 , 400 , 300
	    title "MP3プレイヤーサンプル [KexMP3.DLL] "+vNo+vS
	pos 0 , 0
	mes "MP3プレイヤーサンプル [KexMP3.DLL] "+vNo+vS

	mesbox MesInfo , 400 , 150
	button "開く" , *S_MP3Open
	button "再生" , *S_MP3Start
	button "停止" , *S_MP3Stop

	MP3Ready -1 , -1 , 1		;//MP3メソッドを使う準備
					;//現在のボリュームを保持
	    if stat != 0 : dialog "エラー "+stat ,,"MP3Ready"

	stop

;//--MP3ファイルを開く
*S_MP3Open

	dialog "mp3;*.rmp" , 16 , "MP3 file"
	fn = refstr
	if stat != 1 : dialog "MP3ファイルを選んでね．" : stop

	MP3Open fn		;//MP3を開く
		if stat != 0 : dialog "エラー "+stat ,,"MP3Open" : end

	MP3Info TrackName , 0	;//MP3の情報を取得	曲名
	MP3Info ArtistName , 1	;//			アーティスト名
	MP3Info Channel , 2	;//			チャンネル
	MP3Info BitRate , 3	;//			ビットレート
	MP3Info SampRate , 4	;//			サンプリングレート
	MP3Info TotalSec , 5	;//			曲の長さ

	tMin = TotalSec / 60 : tSec = TotalSec \ 60

	MesInfo  = "TrackName\t: "+TrackName+"\n"
	MesInfo += "ArtistName\t: "+ArtistName+"\n"
	MesInfo += "Channels\t\t: "+MorS.Channel+"("+Channel+")\n"
	MesInfo += "BitRate\t\t: "+BitRate+"\n"
	MesInfo += "SamplingRate\t: "+SampRate+"\n"
	MesInfo += "TotalSec\t\t: "+tMin+" \: "+tSec+" ("+TotalSec+" )\n"
	objprm 0 , MesInfo
	objprm 2 , "再生"

	stop

;//--MP3ファイルを 再生 / 一時停止
*S_MP3Start

	MP3Start	;// 再生 / 一時停止 / 復帰 を判別して処理
		if stat != 0 : dialog "エラー "+stat ,,"MP3Start" : end

	wait 100	;//すぐにMP3Stateを実行すると変更されないときがあります

	MP3State	;//状態を取得 ( 停止中 / 再生中 / 一時停止中 )
	st = stat
	if st == 1 : objprm 2 , "一時停止"
	if st == 2 : objprm 2 , "再生" : stop

	nMin = 0 : nSec = 0
	repeat
		MP3State	;//状態を取得 ( 停止中 / 再生中 / 一時停止中 )
		    if stat != 1 : break
		MP3Pos		;//再生中の位置を取得(秒単位)
		nT = stat
		if nT != 0 : nMin = nT / 60 : nSec = nT \ 60
		title ""+nMin+" \: "+nSec
		wait 30
	loop

	objprm 2 , "再生"
	title "stop"
	stop

;//--MP3再生を停止
*S_MP3Stop
	MP3Stop		;//再生を停止
		if stat != 0 : dialog "エラー "+stat ,,"MP3Stop" : end
	title "stop"
	objprm 2 , "再生"
	stop

;//--終了
*Owari
	end
