# 💥 Delete Duplicate OneDrive Folder (Fuck OneDrive Duplicate Folder)

Do you see **two OneDrive folders** on your desktop or File Explorer every time you boot your PC?

No idea why it happens, can’t delete it, and it’s just pissing you off?

This script silently **kills that bullshit** every time your PC boots.  
**No window, no noise**, just clean execution in the background. Done.

---

## 💡 What It Does

- Deletes the registry entry that causes duplicate OneDrive folders on Desktop / Explorer  
- **Runs automatically on boot with no CMD window**  
- Doesn’t restart Explorer (you’ll see changes on next boot or manual refresh)  
- **Fully compatible with Windows 11** (not tested on 10, tbh lol)

---

## ⚙️ How to Use

### 1. Put the two files in your Startup folder

Place both `onedirvereserve.bat` and `run_hidden.vbs` in the folder below:

```
C:\Users\YourUsername\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\
```

This folder is where Windows automatically runs anything on startup.

- `onedirvereserve.bat` → Deletes the duplicate OneDrive registry key  
- `run_hidden.vbs` → Silently runs the BAT file without showing a CMD window

---

### 2-1. Edit `run_hidden.vbs`

Open the file in Notepad and update the path to your `.bat` file:

```vbscript
' This script silently runs the BAT file using VBS (no CMD popup)
' Edit the path below to match the location of your onedirvereserve.bat file

' Example:
' C:\Users\YourUsername\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\onedirvereserve.bat

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "PUT-YOUR-BAT-FILE-PATH-HERE" & chr(34), 0  ' ⚠ Replace this path
Set WshShell = Nothing
```

📝 Notes:

- Only change `"PUT-YOUR-BAT-FILE-PATH-HERE"` — **do not remove the quotes**
- Save the file after editing

---

### 2-2. You may also need to edit `onedirvereserve.bat`

The BAT file contains a registry path like this:

```
HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{04271989-C4D2-3BAD-F5DE-1179433B2F50}
```

This **GUID may be different on your system**.

If the script doesn’t work:

1. Press `Win + R` → type `regedit` and press Enter  
2. Go to:
   ```
   HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace
   ```
3. Look through the folders and identify the one responsible for the duplicate OneDrive icon  
4. Copy that folder’s name (the GUID) and replace the one in your `.bat` file

---

Now you’ll never need to manually delete that shit again.  
This script silently cleans it every time you boot your PC.

---

## 🤜🤛 Troubleshooting?

- **80% chance** the path in `run_hidden.vbs` is wrong  
- **20% chance** the registry key in `onedirvereserve.bat` is incorrect

That’s it.



# 💥 원드라이브 중복 폴더 삭제하기 (Fuck OneDrive Duplicate Folder)

윈도우 켤 때마다 바탕화면이나 탐색기에 **원드라이브 폴더가 두 개**씩 뜨는 사람?

아무 이유 없이 생겨서 지우지도 못하고 존나 짜증났던 사람?

이 스크립트는 부팅할 때마다 **조용히 그딴 거 삭제**합니다.  
**창도 안 뜨고**, 그냥 뒤에서 깔끔하게 처리. 끝.

---

## 💡 하는 일 요약

- 바탕화면/탐색기에 중복된 OneDrive 폴더를 만드는 레지스트리 항목 삭제
- **자동 실행 + 콘솔 창 없음**
- 탐색기 재시작 안 함 (다음 부팅 시 or 탐색기 재실행 시 삭제된 거 보임)
- **Windows 10 / 11 완벽 호환** (※ 사실 10은 안 해봄 ㅋㅋ)

---

## ⚙️ 사용법

### 1. 두 파일을 시작프로그램 폴더에 넣기

`onedirvereserve.bat` 과 `run_hidden.vbs` 파일을 아래 경로에 넣습니다:

C:\Users\사용자명\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\


이 폴더는 **윈도우가 부팅될 때 자동으로 실행되는 프로그램**들을 담는 폴더입니다.

- `onedirvereserve.bat` → 중복 OneDrive 레지스트리 항목을 삭제해줌
- `run_hidden.vbs` → BAT 파일을 **몰래 조용히 실행**해줌 (창 안 뜸)

---

### 2-1. `run_hidden.vbs` 수정

해당 파일을 메모장으로 열고, **BAT 파일 경로 부분을 수정**해줘야 합니다.


' 이 스크립트는 BAT 파일을 콘솔 창 없이 조용히 실행하기 위한 VBS 래퍼입니다.
' 아래 경로는 본인의 onedirvereserve.bat 파일 위치에 맞게 수정해주세요.

' 예시:
' C:\Users\사용자명\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\onedirvereserve.bat
' ↑ 위 경로는 일반적으로 Startup 폴더 위치이며, 사용자명은 PC 환경에 따라 다를 수 있습니다.

' 아래 줄의 "경로를 넣어주세요" 부분을 실제 .bat 파일 경로로 변경하세요.

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "경로를 넣어주세요" & chr(34), 0  ' ⚠ 여기를 실제 bat 경로로 수정
Set WshShell = Nothing

맨 아래 3줄이 코드입니다. 위의 한글 주석은 놔둬도 됩니다.

"경로를 넣어주세요" 이 부분만 실제 .bat 파일 경로로 바꿔주세요.

따옴표(")는 삭제하지 마세요.

수정 후 저장하면 완료.

두개 같은폴더에 있어야함, 저 경로는 onedirvereserve.bat 의 경로여야 함



### 2-2. onedirvereserve.bat도 수정이 필요할 수 있음
BAT 파일 안에 들어 있는 아래 레지스트리 경로:

HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{04271989-C4D2-3BAD-F5DE-1179433B2F50}
이게 PC마다 다를 수 있습니다.

안 된다면 아래 순서로 직접 확인해서 바꿔주세요:

Win + R → regedit 입력 후 실행

아래 경로로 이동:

HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace
안에 있는 폴더들 중 OneDrive 중복 폴더로 보이는 항목을 확인

해당 GUID 값을 .bat 파일에 복사해서 기존 값과 교체

이렇게 하면 매번 수동 삭제할 필요 없이,
시작할 때마다 자동으로 지우고 창도 안 뜨고 깔끔하게 정리됩니다.


🤜🤛 안 되면?
vbs에 경로 잘못 넣었을 확률 80%

bat에 레지스트리 키 틀린 게 20%

