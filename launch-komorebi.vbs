Set WshShell = CreateObject("WScript.Shell")

' Get the path of the script file
Set objFSO = CreateObject("Scripting.FileSystemObject")
strScriptPath = objFSO.GetParentFolderName(WScript.ScriptFullName)

' Build the path to the batch file
strBatchFile = strScriptPath & "\run.bat"

' Run the batch file with hidden console
WshShell.Run Chr(34) & strBatchFile & Chr(34), 0, False

Set WshShell = Nothing
