# path_of_crafting
 1 - Requer AutoHotkey V2 - https://www.autohotkey.com/
 2 - Necessario que a resolução esteja em 1920 x 1080 (No caso de outra resolução, precisa alterar os pixeis de mouse click e "ascendeuLuz") 
 3 - Para identificar a cor da posição do mouse, utilizar o seguinte script
        MouseGetPos, OutputVarX, OutputVarY
        PixelGetColor, OutputVar, OutputVarX, OutputVarY
        FileAppend, %OutputVar%`n, %a_scriptdir%\cores.txt
        return
 4 - O macro para de rodar quando identifica o highlight do mode desejado