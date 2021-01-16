;	KexMP3.DLL 命令 インクルード ファイル

#uselib "KexMP3.DLL"

#func KexMP3Ver		KexMP3Ver	$10

;//--MP3 再生
#func MP3Ready		MP3Ready	$00
#func MP3SetVol		MP3SetVol	$00
#func MP3Open		MP3Open		$06
#func MP3Close		MP3Close	$00
#func MP3Play		MP3Play		$00
#func MP3Stop		MP3Stop		$00
#func MP3State		MP3State	$00
#func MP3Start		MP3Start	$00
#func MP3Seek		MP3Seek		$00
#func MP3Pos		MP3Pos		$00
#func MP3Clean		MP3Clean	$100

;//--MP3 情報
#func MP3GetFmt		MP3GetFmt	$06
#func MP3Info		MP3Info		$03
#func MP3FileInfo	MP3FileInfo	$07

;//--おまけ(Waveボリューム)
#func GetWaveOutVolR	GetWaveOutVolR	$00
#func GetWaveOutVolL	GetWaveOutVolL	$00
#func SetWaveOutVol	SetWaveOutVol	$00
