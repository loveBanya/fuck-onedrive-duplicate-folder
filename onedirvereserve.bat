@echo off
:: Automatically removes duplicate OneDrive desktop icon
:: Fixes the issue where OneDrive appears twice on the desktop in Windows 10 / 11

:: Instructions:
:: 1. Place this file (or run_hidden.vbs) in the Startup folder to run automatically on boot:
::    C:\Users\eunsung\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
::
:: 2. The registry key {04271989-C4D2-3BAD-F5DE-1179433B2F50} is the common duplicate OneDrive entry.
::    If your system uses a different GUID, find it manually:
::    Win + R → regedit → HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace

:: Deletes the registry key responsible for the duplicate OneDrive icon
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{04271989-C4D2-3BAD-F5DE-1179433B2F50}" /f

:: Skipping explorer restart – changes will apply after reboot or manual refresh
exit
