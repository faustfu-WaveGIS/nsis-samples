; 載入邏輯判斷工具
!include "LogicLib.nsh"

Name "T005"

OutFile "T005.exe"

RequestExecutionLevel user

Unicode True

Page instfiles

Section "Installer If"

  ${If} $0 == 'some value'
    MessageBox MB_OK '$$0 is some value'
  ${ElseIf} $0 == 'some other value'
    MessageBox MB_OK '$$0 is some other value'
  ${Else}
    MessageBox MB_OK '$$0 is "$0"'
  ${EndIf}

SectionEnd

Section "Installer Switch"

  ${Switch} $0
    ${Case} 'some value'
      MessageBox MB_OK '$$0 is some value'
      ${Break}
    ${Case} 'some other value'
      MessageBox MB_OK '$$0 is some other value'
      ${Break}
    ${Default}
      MessageBox MB_OK '$$0 is "$0"'
      ${Break}
  ${EndSwitch}

SectionEnd

Section "Installer Loop"

  ; Loop from 1 to 5
  ${For} $R1 1 5
    ; Print XXXX into Installation detail dialog.
    DetailPrint $R1
  ${Next}

SectionEnd
