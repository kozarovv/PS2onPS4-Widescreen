apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00A36A80,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)