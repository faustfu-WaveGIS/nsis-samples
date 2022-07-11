Name "T004"

OutFile "T004.exe"

RequestExecutionLevel user

Unicode True

Page instfiles

Section ""
  Messagebox MB_OK "T004"
SectionEnd

; Callback function: 由各種事件觸發的函數
Function .onInit
  MessageBox MB_YESNO "This will install My Program. Do you wish to continue?" IDYES gogogo
    ; 中斷安裝流程
    Abort
  gogogo:
    ; 正常結束函數, 接續後面安裝流程
FunctionEnd
