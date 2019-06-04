morse = 0
translate = 0
#m::
if morse = 0
{
  morse = 1
  Hotkey, a, on
  Hotkey, b, on
  Hotkey, c, on
  Hotkey, d, on
  Hotkey, e, on
  Hotkey, f, on
  Hotkey, g, on
  Hotkey, h, on
  Hotkey, i, on
  Hotkey, j, on
  Hotkey, k, on
  Hotkey, l, on
  Hotkey, m, on
  Hotkey, n, on
  Hotkey, o, on
  Hotkey, p, on
  Hotkey, q, on
  Hotkey, r, on
  Hotkey, s, on
  Hotkey, t, on
  Hotkey, u, on
  Hotkey, v, on
  Hotkey, w, on
  Hotkey, x, on
  Hotkey, y, on
  Hotkey, z, on

}
else
{
  morse = 0
  Hotkey, a, off
  Hotkey, b, off
  Hotkey, c, off
  Hotkey, d, off
  Hotkey, e, off
  Hotkey, f, off
  Hotkey, g, off
  Hotkey, h, off
  Hotkey, i, off
  Hotkey, j, off
  Hotkey, k, off
  Hotkey, l, off
  Hotkey, m, off
  Hotkey, n, off
  Hotkey, o, off
  Hotkey, p, off
  Hotkey, q, off
  Hotkey, r, off
  Hotkey, s, off
  Hotkey, t, off
  Hotkey, u, off
  Hotkey, v, off
  Hotkey, w, off
  Hotkey, x, off
  Hotkey, y, off
  Hotkey, z, off

}
return
^m:: MsgBox morse = %morse% 

a::send .-{Space}
b::send -...{Space}
c::send -.-.{Space}
d::send -..{Space}
e::send .{Space}
f::send ..-.{Space}
g::send --.{Space}
h::send ....{Space}
i::send ..{Space}
j::send .---{Space}
k::send -.-{Space}
l::send .-..{Space}
m::send --{Space}
n::send -.{Space}
o::send ---{Space}
p::send .--.{Space}
q::send --.-{Space}
r::send .-.{Space}
s::send ...{Space}
t::send -{Space}
u::send ..-{Space}
v::send ...-{Space}
w::send .--{Space}
x::send -..-{Space}
y::send -.--{Space}
z::send --..{Space}
