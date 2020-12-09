apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney's: Chicken Little [PAL] (SLES_537.39)
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9 (Memory Hack) 
eeObj.WriteMem32(0x005D27AC,0x3FE38E32)
 
--Start menu and left status bar (ELF Hack)
eeObj.WriteMem32(0x00287DE0,0x3C014455)
end

emuObj.AddVsyncHook(widescreen)