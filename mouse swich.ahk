mouse = 1

block_mouse(){
  global mouse = 0 ;zastavuje sa
  BlockInput,MouseMove
  Hotkey, LButton, on
  Hotkey, RButton, on
  Hotkey, MButton, on
}

unblock_mouse(){
  global   mouse = 1 ;pusta sa
  BlockInput,MouseMoveOff
  Hotkey, LButton, off
  Hotkey, RButton, off
  Hotkey, MButton, off
}

#m::
if mouse = 0
{
  unblock_mouse()
}
else
{
  block_mouse()
}
return
LButton::unblock_mouse()
RButton::unblock_mouse()
MButton::unblock_mouse()