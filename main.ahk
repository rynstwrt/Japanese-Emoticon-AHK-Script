::`.joy::
SendEmote("Joy")
Return

::`.love::
SendEmote("Love")
Return

::`.embarrassed::
SendEmote("Embarrassed")
Return

::`.notamused::
SendEmote("NotAmused")
Return

::`.angry::
SendEmote("Angry")
Return

::`.sad::
SendEmote("Sad")
Return

::`.scared::
SendEmote("Scared")
Return

::`.shrug::
SendEmote("Shrug")
Return

::`.confused::
SendEmote("Confused")
Return

::`.doubt::
SendEmote("Doubt")
Return

::`.shock::
SendEmote("Shock")
Return

::`.suicide::
SendEmote("Suicide")
Return

::`.fight::
SendEmote("Fight")
Return

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
