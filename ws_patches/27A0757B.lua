apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00480160,0x3F400000)
eeObj.WriteMem32(0x00480168,0x3FE38E2A)
end

emuObj.AddVsyncHook(widescreen)