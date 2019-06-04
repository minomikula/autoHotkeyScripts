

prev_clip = %clipboard%
clipboard =

#t::

;	focus je na okne s titulkamy


;	najskor zapneme cese senzitive

Send ^h
Send {tab}{tab} !{F4}

;Send ^{tab}


;	V pripade posunuteho kurzora nastavime na zaciatok dokumentu

send {PgUp 20}{Home}
Send ^{tab}
send {PgUp 20}{Home}
Send ^{tab}


;	Hlavna cast: Prepiname fokus a kopirujeme z titulkovac.txt
;	potom pouzijeme funkciu replace(ctrl-H)
 
Loop 13
{
	Send ^{tab}
	Send {Shift down}{Right}{Right}{Shift up}^c{Left}{Left}{down}
	Send ^{tab}
	Send ^h^v{BS}{tab}^v{left}{BS}{Enter}
	Sleep 1000  ; Wait 1 seconds.
	Send {Enter}
}

;	nastavenie formatovania na UTF-8 a ukoncenie PSPad-u

sleep 1000
Send !r
Loop 11{
	send {down}
}
send {Enter}
Sleep 1000
Send ^s
Sleep 1000
Send !{F4}
;Sleep 1000
;send {Enter}
;Send !f
;Loop 3{
;	send {down}
;}
;send {Enter}
;send {Enter}
;send {Left}
;send {Enter}
;Sleep 100
;Send !{F4}


;	Ukoncenie skriptu, pre spravne fungovanie titulkov je nutne ich otvorit v Notepad-e
;	a ulozit pod formatom UTF-8

clipboard = %prev_clip%
ExitApp
return
