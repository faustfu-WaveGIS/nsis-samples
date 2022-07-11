; 安裝檔名
Name "T003"

; 輸出安裝檔名
OutFile "T003.exe"

; 預設輸出路徑
InstallDir "D:\tmp"

; Request application privileges for Windows Vista and higher
RequestExecutionLevel user

; Build Unicode installer
Unicode True

; 顯示可安裝單元清單, 若不指定此步驟, 預設安裝全部單元
Page components

; 指定安裝路徑
Page directory

; 開始安裝被選擇的單元
Page instfiles

; Section 命名規則:
;   可安裝單元 Installer <Section Name>
;   可反安裝單元 un.Installer <Section Name>
Section "Installer A"
  ; 指定檔案安裝路徑
  SetOutPath $INSTDIR

  ; 1) 打包檔案; 2)安裝時, 將指定檔案安裝至指定路徑
  File "test1.txt"
  File "test2.txt"

  Messagebox MB_OK "Installer A"
SectionEnd

Section "Installer B"
  Messagebox MB_OK "Installer B"
SectionEnd
