;Resolução necessario para rodar 1920x1080 em windowed
Esc::ExitApp

^i::
op = 0
InputBox, op, Certifique-se de que o game esteja em 1920x1080 em windowed mode. Qual macro?, Alt = 1`, AltEAug = 2 ; Box Para Selecionar qual função sera chamada atraves do if com a var OP
if op = 1
Goto Alt
if op = 2
Goto AltEAug

Alt: ; Script para usar alteration
if WinExist("Path of Exile"){
    WinGet, PID, PID, "Path of Exile"
	WinActivate Path of Exile
	Loop
	{
    while (true)
    {
    PixelGetColor, acendeuLuz, 387, 442
    if(acendeuLuz = 0x77B4E7)
    {
        break
    }   
        MouseClick, Right, 129, 313
        Sleep, 350
        MouseClick, left, 314, 436
        Sleep, 350
            
    }
    }
    }
	return

AltEAug: ; Script para usar alteration
if WinExist("Path of Exile"){
    WinGet, PID, PID, "Path of Exile"
	WinActivate Path of Exile
	Loop
	{
    while (true)
    {
    PixelGetColor, acendeuLuz, 387, 442
    if(acendeuLuz = 0x77B4E7)
    {
        break
    }   
        MouseClick, Right, 129, 313
        Sleep, 500
        MouseClick, left, 314, 436
        Sleep, 500
        MouseClick, Right, 236, 373
        Sleep, 500
        MouseClick, left, 314, 436
        Sleep, 500
            
    }
    }
    }
	return


':: ; Script para pegar cor certa pela posição
MouseGetPos, OutputVarX, OutputVarY
PixelGetColor, OutputVar, OutputVarX, OutputVarY
FileAppend, %OutputVar%`n, %a_scriptdir%\cores.txt
return