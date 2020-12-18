apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
eeObj.WriteMem32(0x00188390,0x3c024307)
eeObj.WriteMem32(0x001885f4,0x3c023f22)
eeObj.WriteMem32(0x002FA714,0x3FAAAAAB)
end

emuObj.AddVsyncHook(widescreen)