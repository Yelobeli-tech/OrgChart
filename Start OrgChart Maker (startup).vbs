' Used only by the Windows Startup shortcut: starts the server hidden at
' login without popping open a browser tab. Double-click
' "Start OrgChart Maker.vbs" instead to open the app.
Dim WshShell, scriptDir, batPath
Set WshShell = CreateObject("WScript.Shell")
scriptDir = Left(WScript.ScriptFullName, InStrRev(WScript.ScriptFullName, "\"))
batPath = scriptDir & "Start OrgChart Maker.bat"
WshShell.Run """" & batPath & """ hidden", 0, False
