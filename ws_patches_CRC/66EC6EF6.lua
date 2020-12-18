apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x001C1B8C,0x3C013EC6)
eeObj.WriteMem32(0x001DBB0C,0x3C013FFF)
end

emuObj.AddVsyncHook(widescreen)