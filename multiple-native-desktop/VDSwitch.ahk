;you should first Run this, then Read this
;Ctrl + F: jump to #useful stuff

;#SETUP START
#SingleInstance force
ListLines 0
SendMode "Input"
SetWorkingDir A_ScriptDir
KeyHistory 0
#WinActivateForce

ProcessSetPriority "H"

SetWinDelay -1
SetControlDelay -1

;include the library
#Include %A_LineFile%\..\VD.ah2
; or
; #Include %A_LineFile%\..\_VD.ahk
; ...{startup code}
; VD.init()
VD.animation_on:=false
; VD.ahk : calls `VD.init()` on #Include
; _VD.ahk : `VD.init()` when you want, like after a GUI has rendered, for startup performance reasons

;you should WinHide invisible programs that have a window.
try WinHide "Malwarebytes Tray Application"
;#SETUP END

VD.createUntil(5) ;create until we have at least 3 VD

return

;#useful stuff
!1::VD.goToDesktopNum(1)
!2::VD.goToDesktopNum(2)
!3::VD.goToDesktopNum(3)
!4::VD.goToDesktopNum(4)
!5::VD.goToDesktopNum(5)
!6::VD.goToDesktopNum(6)
!7::VD.goToDesktopNum(7)

;follow your window
!+1::VD.MoveWindowToDesktopNum("A",1), VD.goToDesktopNum(1)
!+2::VD.MoveWindowToDesktopNum("A",2), VD.goToDesktopNum(2)
!+3::VD.MoveWindowToDesktopNum("A",3), VD.goToDesktopNum(3)
!+4::VD.MoveWindowToDesktopNum("A",4), VD.goToDesktopNum(4)
!+5::VD.MoveWindowToDesktopNum("A",5), VD.goToDesktopNum(5)
!+6::VD.MoveWindowToDesktopNum("A",6), VD.goToDesktopNum(6)
!+7::VD.MoveWindowToDesktopNum("A",7), VD.goToDesktopNum(7)

;just move window
;!^1::VD.MoveWindowToDesktopNum("A",1)
;!^2::VD.MoveWindowToDesktopNum("A",2)
;!^3::VD.MoveWindowToDesktopNum("A",3)
;!^4::VD.MoveWindowToDesktopNum("A",4)
;!^5::VD.MoveWindowToDesktopNum("A",5)
;!^6::VD.MoveWindowToDesktopNum("A",6)

; wrapping / cycle back to first desktop when at the last
^+#left::VD.goToRelativeDesktopNum(-1)
^+#right::VD.goToRelativeDesktopNum(+1)

; move window to left and follow it
#!left::VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", -1))
; move window to right and follow it
#!right::VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", 1))

;to come back to this window
#NumpadMult::{ ;#*
    VD.goToDesktopOfWindow("VD.ahk examples WinTitle")
    ; VD.goToDesktopOfWindow("ahk_exe code.exe")
}

;getters and stuff
f6::{
    Msgbox VD.getDesktopNumOfWindow("VD.ahk examples WinTitle")
    ; Msgbox VD.getDesktopNumOfWindow("ahk_exe GitHubDesktop.exe")
}
f1::Msgbox VD.getCurrentDesktopNum()

;Create/Remove Desktop
!NumpadAdd::VD.createDesktop(true) ;go to newly created
#NumpadAdd::VD.createDesktop(false) ;don't go to newly created, also the default

; !NumpadSub::VD.removeDesktop(VD.getCurrentDesktopNum())
; #!NumpadSub::VD.removeDesktop(VD.getCount()) ;removes 3rd desktop if there are 3 desktops

^+NumpadAdd::VD.createUntil(3) ;create until we have at least 3 VD

; ^+NumpadSub::{
;     VD.createUntil(3) ;create until we have at least 3 VD
;     sleep 1000
;     ;FALLBACK IS ONLY USED IF YOU ARE CURRENTLY ON THAT VD
;     VD.removeDesktop(3, 1)
; }

;Pin Window
; numpad0::VD.TogglePinWindow("A")
; ^numpad0::VD.PinWindow("A")
; !numpad0::VD.UnPinWindow("A")
; #numpad0::MsgBox VD.IsWindowPinned("A")

;Pin App
; numpadDot::VD.TogglePinApp("A")
; ^numpadDot::VD.PinApp("A")
; !numpadDot::VD.UnPinApp("A")
; #numpadDot::MsgBox VD.IsAppPinned("A")

; Run terminal win terminal
^!t::Run "wt.exe"
!e::Run "explorer.exe"
; Alt + i for settings
!i::Run "ms-settings:"

; Windows + R alternative
!r::Run "explorer.exe shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}"

!c::Run "explorer.exe ms-actioncenter:controlcenter/true"

; Alt + M for minimize current active window
!m::WinMinimize "A"  ; Ctrl+Down
; Alt + N for windows restore
!n::WinRestore "A"   ; Windows + N
; Alt + Q for close windows
!q::WinClose "A"

!Esc::ExitApp
^!r::Reload  ; Ctrl+Alt+R

; Turn off the function of CapsLock button
; CapsLock::Return
