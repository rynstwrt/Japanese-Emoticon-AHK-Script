# Read emotes folder and auto generate autohotkey script

Remove-Item .\emoji.ahk -ErrorAction Ignore

dir .\emotes\ | Select-Object | ForEach-Object {
	
echo @"
::`.$($_.BaseName)::
SendEmote("$($_.BaseName)")
Return

"@ >> emoji.ahk

}

echo @'
SendEmote(fileName) {
	Array := Object()
	Loop, Read, %A_ScriptDir%\Emotes\%fileName%.txt
	{
		Array.Insert(A_LoopReadLine)
		lineNumber = %A_Index%
	}
	Random, rand, 1, lineNumber
	element := Array[rand]
	SendRaw, %element% `
}
'@ >> emoji.ahk

.\emoji.ahk
