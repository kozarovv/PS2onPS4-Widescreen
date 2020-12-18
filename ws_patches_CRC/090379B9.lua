apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00172674,0x3C013F40)
eeObj.WriteMem32(0x00172678,0x44810000)
eeObj.WriteMem32(0x00172680,0x4600C602)
end

emuObj.AddVsyncHook(widescreen)