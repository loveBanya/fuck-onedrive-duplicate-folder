' 이 스크립트는 BAT 파일을 콘솔 창 없이 조용히 실행하기 위한 VBS 래퍼입니다.
' 아래 경로는 본인의 onedirvereserve.bat 파일 위치에 맞게 수정해주세요.

' 예시:
' C:\Users\사용자명\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\onedirvereserve.bat
' ↑ 위 경로는 일반적으로 Startup 폴더 위치이며, 사용자명은 PC 환경에 따라 다를 수 있습니다.

' 아래 줄의 "경로를 넣어주세요" 부분을 실제 .bat 파일 경로로 변경하세요.

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "경로를 넣어주세요" & chr(34), 0  ' ⚠ 여기를 실제 bat 경로로 수정
Set WshShell = Nothing
