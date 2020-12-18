apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

eeObj.WriteMem32(0x0022e6f4,0x3c013f40)
eeObj.WriteMem32(0x0022e6f8,0x44810000)
eeObj.WriteMem32(0x0022e700,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)