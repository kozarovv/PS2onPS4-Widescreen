apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
--eeObj.WriteMem32(0x00166000,0x3c023f40)
eeObj.WriteMem32(0x00166078,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)