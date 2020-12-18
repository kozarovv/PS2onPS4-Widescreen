apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

eeObj.WriteMem32(0x00196ab4,0x3c013f40)
eeObj.WriteMem32(0x00196ab8,0x44810000)
eeObj.WriteMem32(0x00196ac0,0x4600c602)
eeObj.WriteMem32(0x0031A4F4,0x43e00000)
end

emuObj.AddVsyncHook(widescreen)