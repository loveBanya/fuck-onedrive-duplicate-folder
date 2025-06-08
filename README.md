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
