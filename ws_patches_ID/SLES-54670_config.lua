apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wacky Races: Mad Motors [PAL-M11] (SLES_546.70)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x002FB0C4,0x3FE38E38)

--Automatic demo fix
eeObj.WriteMem32(0x0032D7F4,0x3FE38E38)
end

emuObj.AddVsyncHook(widescreen)