' Silently launches "Start OrgChart Maker.bat" with its console window hidden,
' then opens the app in the default browser.
Dim WshShell, scriptDir, batPath
Set WshShell = CreateObject("WScript.Shell")
scriptDir = Left(WScript.ScriptFullName, InStrRev(WScript.ScriptFullName, "\"))
batPath = scriptDir & "Start OrgChart Maker.bat"
WshShell.Run """" & batPath & """ hidden", 0, False

' Give the server a moment to start (harmless if it's already running).
WScript.Sleep 1000
WshShell.Run "http://localhost:4310", 1, False
