## Open With Powershell script
- This Script is meant for adding applications to your windows file & folder Registry 
- This gives you the ability to execute the open with action with these applications

### Parameters
- This script need two Parameters
    - Path = The path to the application.exe you want to open with
    - Name = the name you want to appear in the context menu e.g Open With Sublime Text
- Make sure to execute this script with elevated rights

---

### example
```powershell
.\OpenWith.ps1 -Path "C:\Program Files\Sublime Text\sublimetext.exe" -Name "Sublime Text"
```

