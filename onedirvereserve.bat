@echo off
:: OneDrive 바탕화면 중복 아이콘 자동 제거 스크립트
:: Windows 10 / 11에서 바탕화면에 OneDrive 아이콘이 두 번 표시되는 현상 해결용

:: 사용 방법:
:: 1. 이 파일 또는 run_hidden.vbs를 아래 경로에 넣으면 부팅 시 자동 실행됩니다.
::    C:\Users\eunsung\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
::
:: 2. 아래 {04271989-C4D2-3BAD-F5DE-1179433B2F50} 키는 일반적인 중복 OneDrive 항목입니다.
::    만약 중복된 항목의 GUID가 다르다면 다음 경로에서 직접 확인해 키를 수정하세요:
::    Win + R → regedit → HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace

:: 중복 OneDrive 항목을 삭제하는 레지스트리 명령
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{04271989-C4D2-3BAD-F5DE-1179433B2F50}" /f

:: 탐색기 재시작은 생략 – 재부팅하거나 새로고침 시 반영됨
exit
