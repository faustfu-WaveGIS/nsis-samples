Name "T006"

OutFile "T006.exe"

RequestExecutionLevel user

Unicode True

Page instfiles

; 使用 Var 宣告全域變數
Var BLA

Section "Installer Custom Var"

  ; 使用 $ 以及 StrCpy 指派變數值
  StrCpy $BLA "T006"

  ; 使用 $ 取變數值
  MessageBox MB_OK $BLA

SectionEnd

; 預設全域變數有二十個, $0 ~ $9, $R0 ~ $R9, 使用時不需先宣告
Section "Installer Default Var"

  ; 保存變數至堆疊
  Push $0

  ; 使用 $ 以及 StrCpy 指派變數值
  StrCpy $0 "T006"

  ; 使用 $ 取變數值
  MessageBox MB_OK $0

  ; 由堆疊還原變數
  Pop $0

SectionEnd
