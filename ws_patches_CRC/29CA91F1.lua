apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00474D20,0x3C013F40)
eeObj.WriteMem32(0x00474C9C,0x3C013EC3)
end

emuObj.AddVsyncHook(widescreen)