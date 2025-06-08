' This script is a VBS wrapper that silently runs the BAT file without opening a command window.
' Modify the path below to match the actual location of your onedirvereserve.bat file.

' Example:
' C:\Users\YourUsername\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\onedirvereserve.bat
' ↑ This is the typical Startup folder location, but "YourUsername" will vary per system.

' Replace "INSERT-YOUR-BAT-FILE-PATH-HERE" in the line below with your actual .bat file path.

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "INSERT-YOUR-BAT-FILE-PATH-HERE" & chr(34), 0  ' ⚠ Replace this with the actual BAT file path
Set WshShell = Nothing
