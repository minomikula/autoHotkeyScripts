^p::
	i:=0
	SetKeyDelay 0, 10
	while(GetKeyState("Esc") = 0){
		i:=i+1
		if(Mod(i,60)<30){
			Send, {down}
		}else{
			Send, {up}
		}
		Sleep, 200
   }
Return	