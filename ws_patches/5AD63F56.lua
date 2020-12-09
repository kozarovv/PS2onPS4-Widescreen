apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 (Memory Hack) 
eeObj.WriteMem32(0x005C9CFC,0x3FE38E32)
 
--Start menu and left status bar (ELF Hack)
eeObj.WriteMem32(0x00284C00,0x3C014455)
end

emuObj.AddVsyncHook(widescreen)