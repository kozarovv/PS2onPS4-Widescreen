apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x002513F0,0x3C013FE3)
eeObj.WriteMem32(0x002513F4,0x34218E38)
end

emuObj.AddVsyncHook(widescreen)