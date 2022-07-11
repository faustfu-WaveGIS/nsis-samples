Function msgbox

  ; 在字串內使用 $\ 跳脫特殊字元
  Messagebox MB_OK|MB_ICONINFORMATION \
"This $\" is a sample that shows how to use line breaks for larger commands in NSIS scripts"

FunctionEnd

Function un.msgbox

  Messagebox MB_OK|MB_ICONINFORMATION \
"This $\" is a sample that shows how to use line breaks for larger commands in NSIS scripts"

FunctionEnd