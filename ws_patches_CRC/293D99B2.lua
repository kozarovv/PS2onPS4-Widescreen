apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0019ECB8,0x3C024455)
eeObj.WriteMem32(0x001A6730,0x3C0243A8)
eeObj.WriteMem32(0x001A6750,0x3C0243C0)
end

emuObj.AddVsyncHook(widescreen)