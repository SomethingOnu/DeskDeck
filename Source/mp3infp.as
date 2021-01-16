#ifndef ___mp3infp___
#define global ___mp3infp___

#uselib "mp3infp.dll"

	//DWORD      mp3infp_GetVer()
	#func global mp3infp_GetVer "mp3infp_GetVer"

	//int        mp3infp_ViewPropEx(HWND hWnd,const char *szFileName,DWORD dwPage,BOOL modeless,DWORD param1,DWORD param2)
	#func global mp3infp_ViewPropEx "mp3infp_ViewPropEx" sptr,sptr,sptr,sptr,sptr,sptr

	//BOOL       mp3infp_ViewProp(HWND hWnd,const char *szFileName,DWORD dwPage)
	#func global mp3infp_ViewProp "mp3infp_ViewProp" sptr,sptr,sptr

	//DWORD      mp3infp_Load(HWND hWnd,const char *szFileName)
	#func global mp3infp_Load "mp3infp_Load" sptr,sptr

	//DWORD      mp3infp_GetType()
	#func global mp3infp_GetType "mp3infp_GetType"

	//BOOL       mp3infp_GetValue(const char *szValueName,char **buf)
	#func global mp3infp_GetValue "mp3infp_GetValue" sptr,sptr

	//DWORD      mp3infp_mp3_GetTagType()
	#func global mp3infp_mp3_GetTagType "mp3infp_mp3_GetTagType"

	//BOOL       mp3infp_SetConf(char *tag,char *value)
	#func global mp3infp_SetConf "mp3infp_SetConf" sptr,sptr

	//DWORD      mp3infp_SetValue(const char *szValueName,const char *buf)
	#func global mp3infp_SetValue "mp3infp_SetValue" sptr,sptr

	//DWORD      mp3infp_Save(const char *szFileName)
	#func global mp3infp_Save "mp3infp_Save" sptr

	//DWORD      mp3infp_mp3_MakeId3v1(const char *szFileName)
	#func global mp3infp_mp3_MakeId3v1 "mp3infp_mp3_MakeId3v1" sptr

	//DWORD      mp3infp_mp3_DelId3v1(const char *szFileName)
	#func global mp3infp_mp3_DelId3v1 "mp3infp_mp3_DelId3v1" sptr

	//DWORD      mp3infp_mp3_MakeId3v2(const char *szFileName)
	#func global mp3infp_mp3_MakeId3v2 "mp3infp_mp3_MakeId3v2" sptr

	//DWORD      mp3infp_mp3_DelId3v2(const char *szFileName)
	#func global mp3infp_mp3_DelId3v2 "mp3infp_mp3_DelId3v2" sptr

	//DWORD      mp3infp_mp3_MakeRMP(const char *szFileName)
	#func global mp3infp_mp3_MakeRMP "mp3infp_mp3_MakeRMP" sptr

	//DWORD      mp3infp_mp3_DelRMP(const char *szFileName)
	#func global mp3infp_mp3_DelRMP "mp3infp_mp3_DelRMP" sptr

	//DWORD      mp3infp_mp3_MakeApeTag(const char *szFileName)
	#func global mp3infp_mp3_MakeApeTag "mp3infp_mp3_MakeApeTag" sptr

	//DWORD      mp3infp_mp3_DelApeTag(const char *szFileName)
	#func global mp3infp_mp3_DelApeTag "mp3infp_mp3_DelApeTag" sptr
	
	#const global MP3INFP_FILE_UNKNOWN 0x00
	#const global MP3INFP_FILE_MP3     0x01
	#const global MP3INFP_FILE_WAV     0x02
	#const global MP3INFP_FILE_AVI     0x03
	#const global MP3INFP_FILE_VQF     0x04
	#const global MP3INFP_FILE_WMA     0x05
	#const global MP3INFP_FILE_OGG     0x07
	#const global MP3INFP_FILE_APE     0x08
	#const global MP3INFP_FILE_MP4     0x09
	
	#const global MP3INFP_HAS_MP3_ID3V1   0x00000001
	#const global MP3INFP_HAS_MP3_ID3V2   0x00000002
	#const global MP3INFP_HAS_MP3_RIFFSIF 0x00000004
	#const global MP3INFP_HAS_MP3_ID3V1_0 0x00000008
	#const global MP3INFP_HAS_MP3_ID3V1_1 0x00000010
	#const global MP3INFP_HAS_MP3_ID3V2_2 0x00000020
	#const global MP3INFP_HAS_MP3_ID3V2_3 0x00000040
	#const global MP3INFP_HAS_MP3_ID3V2_4 0x00000080
	#const global MP3INFP_HAS_MP3_APEV1   0x00000100
	#const global MP3INFP_HAS_MP3_APEV2   0x00000200

#endif