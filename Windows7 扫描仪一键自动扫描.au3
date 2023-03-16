#Region ;**** 参数创建于 ACNWrapper_GUI ****
#PRE_Icon=..\..\..\Windows\syswow64\SHELL32.dll
#PRE_Outfile_x64=一键扫描.exe
#PRE_Res_SaveSource=y
#PRE_Res_requestedExecutionLevel=None
#EndRegion ;**** 参数创建于 ACNWrapper_GUI ****
;~ Opt("WinTitleMatchMode",2)
#Include <Misc.au3>
_Singleton("onekeysaom" ,0)


Opt("TrayAutoPause",0)
Func scan()
ShellExecute('wiaacmgr')
	$hw=WinWaitActive("新扫描","")
	ControlClick($hw,"","Button4")
	WinWaitClose($hw)
	$hw2=WinWaitActive("[CLASS:#32770]","导入(&M)")
	ControlSetText($hw2,"","Edit1",@hour)
;~ 	Sleep(6000)
	ControlClick($hw2,"","Button1")
	$hw3=WinWaitActive("[CLASS:CabinetWClass]","")
	WinClose("[CLASS:CabinetWClass]","")
EndFunc


HotKeySet("{F9}","scan")
HotKeySet("{F4}","qt")


Func qt()
	Exit
EndFunc


While 1
Sleep(100)
If FileExists("C:\Users\Public\Pictures\do.scan") Then 
scan()
FileDelete("C:\Users\Public\Pictures\do.scan")
EndIf
WEnd
