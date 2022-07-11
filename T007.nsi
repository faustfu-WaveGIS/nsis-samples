; 宣告編譯期常數
!define LABEL T007
!define VERSION 1.0.3
!define /date NOW "%Y%m%d%H%M%S"

; 使用 ${} 取得編譯期常數值
Name "${LABEL} ${VERSION}"

OutFile "${LABEL}_${VERSION}.exe"

RequestExecutionLevel user

Unicode True

Page instfiles

Section ""

  MessageBox MB_OK "${NOW}"

SectionEnd
