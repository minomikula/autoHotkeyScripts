a1 :="a"
a2 :="b"
a3 :="c"
a4 :="d"
a5 :="e"
a6 :="f"
a7 :="g"
a8 :="h"
a9 :="i"
a10 :="j"
a11 :="k"
a12 :="l"
a13 :="m"
a14 :="n"
a15 :="o"
a16 :="p"
a17 :="q"
a18 :="r"
a19 :="s"
a20 :="t"
a21 :="u"
a22 :="v"
a23 :="w"
a24 :="x"
a25 :="y"
a26 :="z"

m1 :=".-"
m2 :="-..."
m3 :="-.-."
m4 :="-.."
m5 :="."
m6 :="..-."
m7 :="--."
m8 :="...."
m9 :=".."
m10 :=".---"
m11 :="-.-"
m12 :=".-.."
m13 :="--"
m14 :="-."
m15 :="---"
m16 :=".--."
m17 :="--.-"
m18 :=".-."
m19 :="..."
m20 :="-"
m21 :="..-"
m22 :="...-"
m23 :="-.."
m24 :="-..-"
m25 :="-.--"
m26 :="--.."
array_len := 26

translate = 0
dir = 0 ;0 - morse to text; 1 - text to morse
;;;;;;;;;;;;;;;;;;;;;;;;;

ch_text2morse(char){
  mor:=char
  global array_len
  Loop %array_len%
  {
    a:=a%A_Index%
    m:=m%A_Index%
    if(a = char){
      mor:=m	
    }


  }
  if (char = " "){
    return A_space
  }
      	
  return mor

}

text2morse(text){


  text_len:=strlen(text)
  morse:=""
  
  loop %text_len%{
    char:=subStr(text,A_Index,1)
    morse_char:=ch_text2morse(char)
    if (morse_char = " "){
      morse := morse . A_space
    }
    else
    {
      morse := morse . morse_char . A_space
    }
  }

  return morse
}

form(text){
  gui, font, s17, Verdana 
  Gui, Add, Text,, %text%
  gui, font, s10, Verdana 
  Gui, Add, Button, default, Zrus
  Gui, Add, Button, default, Clip
  Gui, Show,, Preklad

}

;;;;;;;;;;;;;;;;;;;;;;;;;


#f::
x:="a"
y:="a"
 if(x = y)
 {
  msgbox array_len = %array_len%	
 }

return

#a::
Loop %array_len%
{
  a:=a%A_Index%
  m:=m%A_Index%
  send %a%
  send {space}={space}
  send %m%
  send {enter}
}
return



#t::
if translate = 0
{
  translate = 1 
}
else
{
  translate = 0
}
return



MButton::
prev_clip = %clipboard%
send ^c
text = %clipboard%
clipboard = %prev_clip%
translated:=text2morse(text)
form(translated)

return



GuiClose:
ButtonZrus:
Gui, Destroy

ButtonClip: 
clipboard=%translated%
Gui, Destroy
;return

