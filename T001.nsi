; The name of the installer
Name "T001"

; The file to write
OutFile "T001.exe"

; Request application privileges for Windows Vista and higher
RequestExecutionLevel user

; Build Unicode installer
Unicode True

Page instfiles

Function func
  ;这里输入要测试的代码
  MessageBox MB_OKCANCEL "請選擇 確定 或是 取消" \
    /SD IDOK IDOK label_ok IDCANCEL label_cancel
label_ok:
  MessageBox MB_OK "點擊了 確定"
  Goto end
label_cancel:
  MessageBox MB_OK "點擊了 取消"
  Goto end
end:
FunctionEnd

; The stuff to install
Section "" ;No components page, name is not important

  Call func

SectionEnd
