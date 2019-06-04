;run http://slovnik.azet.sk/preklad/anglicko-slovensky/
run http://webslovnik.zoznam.sk/en-sk/
msgbox
sleep 2000
WinGet, slovnik_id, ID, A
    WinGetClass, this_class, ahk_id %slovnik_id%
    WinGetTitle, this_title, ahk_id %slovnik_id%
    MsgBox `n`nahk_id %slovnik_id%`nahk_class %this_class%`n%this_title%`n`nOK?
focus = kniha
MButton::
if focus = kniha
{
	WinGet, active_id, ID, A
	;prev_clip = %clipboard%
	send ^c
	sleep 100
	;text = %clipboard%
	;send !{tab}
	WinActivate, ahk_id %slovnik_id%
	sleep 500
	focus = slovnik
	send ^v
	sleep 100
	send {enter}
	;clipboard = %prev_clip%
}
else{
	if focus = slovnik
	{
		;send !{tab}

		WinActivate, ahk_id %active_id%		
		focus = kniha
	}		
}


return