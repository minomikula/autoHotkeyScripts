#InstallKeybdHook
pressed=1
!q::exitApp
;w::MsgBox %pressed%

x::send '
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!a::
if (A_PriorHotKey = "~Alt" AND A_TimeSincePriorHotkey < 1000)
{
if(pressed = "1"){
send à
}

if(pressed = "2"){
send â
}
if(pressed = "3"){
send æ
}


}
else
{
pressed=1
}
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!c::send ç
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!e::
if (A_PriorHotKey = "~Alt" AND A_TimeSincePriorHotkey < 1000)
{
if(pressed = "1"){
send è
}
if(pressed = "2"){
send ê
}
if(pressed = "3"){
send ë
}


}
else
{
pressed=1
}
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!i::
if (A_PriorHotKey = "~Alt" AND A_TimeSincePriorHotkey < 1000)
{
if(pressed = "1"){
send î
}
if(pressed = "2"){
send ï
}



}
else
{
pressed=1
}
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!o::send œ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!u::
if (A_PriorHotKey = "~Alt" AND A_TimeSincePriorHotkey < 1000)
{
if(pressed = "1"){
send ù
}
if(pressed = "2"){
send û
}
if(pressed = "3"){
send ü
}



}
else
{
pressed=1
}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!y::send ÿ

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
~Alt::
;400 is the maximum allowed delay (in milliseconds) between presses.
if (A_PriorHotKey = "~Alt" AND A_TimeSincePriorHotkey < 400)
{
   pressed := pressed + 1

}
else
{
pressed=1
}
Sleep 0
KeyWait Alt
return