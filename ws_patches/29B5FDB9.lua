apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 (50Hz Mode)
eeObj.WriteMem32(0x00183A64,0x3C023F40)
 
--Gameplay 16:9 (60Hz Mode) 
eeObj.WriteMem32(0x00183A88,0x3C023F40)
end

emuObj.AddVsyncHook(widescreen)