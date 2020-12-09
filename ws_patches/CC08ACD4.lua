apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gretzky NHL 06 [NTSC-U] (SCUS_974.66)
--comment=Widescreen hack by El_Patas

Works fine for the default "Team" camera, but causes a different zoom in each one
of the other camera's view.
 
--Gameplay 16:9 
eeObj.WriteMem32(0x0026F480,0x3C013C2B)
eeObj.WriteMem32(0x0026F494,0x3C013F10)
end

emuObj.AddVsyncHook(widescreen)