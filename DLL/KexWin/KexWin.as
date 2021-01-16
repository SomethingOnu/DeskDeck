#uselib "KexWin.DLL"

#func KexWinVer		KexWinVer	$10

;//--hWnd
#func GetActWin		GetActWin	$13
#func GetHspWin		GetHspWin	$12
#func WinFinder		WinFinder	$17
#func ExistWin		ExistWin	$00

;//--Cap
#func GetWinTitle	GetWinTitle	$13
#func SetWinTitle	SetWinTitle	$04
#func FlashWin		FlashWin	$00

;//--Ctr
#func EnableWin		EnableWin	$02	;//危険！
#func IsEnableWin	IsEnableWin	$02
#func FreeEnableWin	FreeEnableWin	$100	;//☆★必ず宣言する事★☆

;//--Cur
#func MouseLimit	MouseLimit	$00
#func MouseWinLimit	MouseWinLimit	$02
#func FreeMouseLimit	FreeMouseLimit	$100	;//☆★必ず宣言する事★☆
#func SysCur		SysCur		$02
#func FileCur		FileCur		$06
#func DrawCur		DrawCur		$02
#func MouseMove		MouseMove	$00
#func MouseLClick	MouseLClick	$00
#func MouseRClick	MouseRClick	$00
#func MouseMClick	MouseMClick	$00
#func MouseLDown	MouseLDown	$00
#func MouseRDown	MouseRDown	$00
#func MouseMDown	MouseMDown	$00
#func MouseLUp		MouseLUp	$00
#func MouseRUp		MouseRUp	$00
#func MouseMUp		MouseMUp	$00

;//--Exec
#func CmdExec		CmdExec		$06

;//--Font
#func GetMesSize	GetMesSize	$06

;//--Ico
#func IcoCnt		IcoCnt		$07
#func SysIco		SysIco		$00
#func FileIco		FileIco		$06
#func GetWinIco		GetWinIco	$02
#func DrawIco		DrawIco		$02

;//--Info
#func MesDlg		MesDlg		$07

;//--Point
#func CliToScr		CliToScr	$03
#func ScrToCli		ScrToCli	$03

;//--Rgn
#func ReadyRgn		ReadyRgn	$02
#func RectRgn		RectRgn		$03
#func OvalRgn		OvalRgn		$03
#func PolyRgn		PolyRgn		$03
#func ImageRgn		ImageRgn	$06
#func UniteRgn		UniteRgn	$00
#func SetRgn		SetRgn		$00
#func ReadyHspWinRgn	ReadyHspWinRgn	$02
#func HspWinRgn		HspWinRgn	$02
#func BackUpRgn		BackUpRgn	$00
#func ReSetRgn		ReSetRgn	$00
#func FreeRgn		FreeRgn		$100	;//☆★必ず宣言する事★☆

;//--Size
#func GetWinRect	GetWinRect	$13
#func GetCliSize	GetCliSize	$13
#func GetSysMetrics	GetSysMetrics	$03

;//--Snd
#func Beeping		Beeping		$00
#func MesBeep		MesBeep		$00

;//--Style
#func GetColor		GetColor	$03
#func ShowWin		ShowWin		$00
#func IsWinVisible	IsWinVisible	$10
#func MoveWin		MoveWin		$00
#func SizeWin		SizeWin		$00
#func SetActWin		SetActWin	$00
#func DelWin		DelWin		$00
#func SetPriority	SetPriority	$02
