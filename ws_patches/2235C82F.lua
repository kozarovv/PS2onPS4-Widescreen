apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00112858,0x3C033F40)
eeObj.WriteMem32(0x0010F478,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)