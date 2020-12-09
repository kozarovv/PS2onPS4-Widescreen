apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0018E834,0x3C013F40)
eeObj.WriteMem32(0x0018E838,0x44810000)
eeObj.WriteMem32(0x0018E840,0x4600C602)
end

emuObj.AddVsyncHook(widescreen)