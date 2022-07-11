; 載入副程式
!include msgbox.nsh

; The name of the installer
Name "T002"

; The file to write
OutFile "T002.exe"

; Request application privileges for Windows Vista and higher
RequestExecutionLevel user

; Build Unicode installer
Unicode True

; Page instfiles
Page components
Page instfiles
UninstPage uninstConfirm
UninstPage instfiles

; The stuff to install
Section "Installer All"

  Call msgbox

SectionEnd

; The stuff to uninstall
Section "un.Installer All"

  Call un.msgbox

SectionEnd
