#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Version = 0.0.1.004
BuildDate = 20140103
ApplicationTitle = Chars
;~ UserDataPath = %A_AppData%\%ApplicationTitle%\
;~ ConfigFile = %UserDataPath%Chars_Settings.ini
ConfigFile = Chars_Settings.ini
;~ IfNotExist, %UserDataPath%
	;~ FileCreateDir, %UserDataPath%
;~ IfNotExist, %A_ScriptDir%\%ConfigFile%
	;~ FileCopy, %A_ScriptDir%\%ConfigFile%, %UserDataPath%*.*
IniRead, Alphabet, %ConfigFile%, Alphabet, Alphabet, a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|$
CoordMode, Caret, Screen
CoordMode, Mouse, Screen
GuiVisible = 0
Loop, Parse, Alphabet, |
	IniRead, %A_LoopField%, %ConfigFile%, Characters, %A_LoopField%
IniRead, TextColor, %ConfigFile%, Settings, TextColor, FFF8DC
IniRead, BackgroundColor, %ConfigFile%, Settings, BackgroundColor, 696969
;~ Menu, Tray, Icon, Chars.ico
Menu, Tray, NoStandard
Menu, Tray, Add, Suspend hotkeys, SuspendHotkeys
Menu, Tray, Add, Help, Help
Menu, Tray, Add, Settings, Settings
Menu, Tray, Add,
Menu, Tray, Add, Exit, Exit
Menu, Tray, Default, Settings
Gui, 1:New, ToolWindow, %ApplicationTitle%
Gui, 1:Font, s12 c%TextColor% Q5, Times New Roman
Gui, 1:Add, Listbox, w40 r20 0x1000 vSpecChar,
Gui, 1:Add, Button, xp yp Hidden Default vSendChar, SendChar
Gui, 1:Color, EEAA99, %BackgroundColor%
Return

GuiClose:
GuiEscape:
Gui, 1:Hide
GuiVisible = 0
Return

SuspendHotkeys:
Menu, Tray, ToggleCheck, Suspend hotkeys
Suspend
Return

Help:
Run, Chars_help.pdf
Return

Settings:
Gui, 1:+OwnDialogs
Gui, 2:+Owner
Gui, 2:New, , %ApplicationTitle% - Settings
Gui, 2:Add, GroupBox, w300 h110 vGbColors, Colors
Gui, 2:Add, Text, xp+10 yp+20 w280 vInstColor, Please enter the hexidecimal html color code for the text and background color:
Gui, 2:Add, Text, x20 y+10 w90 vTxtTextColor, Text color:
Gui, 2:Font, c%TextColor%
Gui, 2:Color, , %BackgroundColor%
Gui, 2:Add, Edit, x+20 yp-5 w120 Limit6 vTextColor gPreview, %TextColor%
Gui, 2:Font, c000000
Gui, 2:Add, Text, x20 y+10 w90 vTxtBackgroundColor, Background color:
Gui, 2:Font, c%TextColor%
Gui, 2:Add, Edit, x+20 yp-5 w120 Limit6 vBackgroundColor gPreview, %BackgroundColor%
Gui, 2:Add, Button, x15 y+20 w80 h25, &Save
Gui, 2:Add, Button, x+25 w80 h25, De&fault
Gui, 2:Add, Button, x+25 w80 h25 Default, &Discard
Gui, 2:Show
GuiControl, 2:Font, TextColor
GuiControl, 2:Font, BackgroundColor
Return

Preview:
Gui, 2:Submit, NoHide
Gui, 2:Font, c%TextColor%
Gui, 2:Color, , %BackgroundColor%
GuiControl, 2:Font, TextColor
GuiControl, 2:Font, BackgroundColor
Gui, 2:Show
Return

2GuiClose:
2GuiEscape:
2ButtonDiscard:
Gui, 2:Hide
Return

2ButtonSave:
Gui, 2:Submit, NoHide
If TextColor = %BackgroundColor%
	Return
If (TextColor = "" OR BackgroundColor = "")
	Return
IniWrite, %TextColor%, %ConfigFile%, Settings, TextColor
IniWrite, %BackgroundColor%, %ConfigFile%, Settings, BackgroundColor
Gui, 1:Font, c%TextColor%
GuiControl, 1:Font, SpecChar
Gui, 1:Color, EEAA99, %BackgroundColor%
Gui, 2:Hide
Return

2ButtonDefault:
GuiControl, 2:, TextColor, FFF8DC
GuiControl, 2:, BackgroundColor, 696969
Return

Exit:
ExitApp

^+a::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+b::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+c::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+d::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+e::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+f::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+g::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+h::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+i::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+j::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+k::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+l::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+m::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+n::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+o::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+p::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+q::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+r::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+s::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+t::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+u::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+v::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+w::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+x::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+y::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+z::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return
^+$::
ThisHotkey := A_ThisHotkey
ShowCharList(ThisHotkey)
Return

ButtonSendChar:
Gui, 1:Submit
SendInput, %SpecChar%
GuiVisible = 0
Return

~LButton::
WinGetActiveTitle, Title
If Title <> Chars
{
	If GuiVisible = 1
	{
		Gui, 1:Hide
		GuiVisible = 0
	}
}
Return

ShowCharList(ThisHotkey)
{
	Global
	If GuiVisible = 0
	{
		WinGetActiveTitle, ActiveWin
		OriginalActiveWin = %ActiveWin%
	}
	Else
		WinActivate, %OriginalActiveWin%
	StringRight, Letter, ThisHotkey, 1
	GuiControl, 1:, SpecChar, |
	GuiControl, 1:, SpecChar, % %Letter%
	If (A_CaretX = "" OR A_CaretY = "" OR A_CaretX = "0" OR A_CaretY = "0")
	{
		MouseGetPos, CoordX, CoordY
		CoordX := CoordX + 10
		CoordY := CoordY + 20
	}
	Else
	{
		CoordX := A_CaretX + 10
		CoordY := A_CaretY + 20
	}
	SysGet, VirtualWidth, 78
	SysGet, VirtualHeight, 79
	If (CoordX>(VirtualWidth-60))
		CoordX += (VirtualWidth-(CoordX+60))
	If (CoordY>(VirtualHeight-400))
		CoordY += (VirtualHeight-(CoordY+400))
	Gui, 1:+LastFound
	WinSet, TransColor, EEAA99
	Gui, 1:-Caption,
	Gui, 1:Show, x%CoordX% y%CoordY% w60
	GuiVisible = 1
}