apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

eeObj.WriteMem32(0x00119018,0x3c0240ab)
eeObj.WriteMem32(0x00118990,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)