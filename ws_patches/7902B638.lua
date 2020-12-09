apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

eeObj.WriteMem32(0x005A18C0,0x43700000)
end

emuObj.AddVsyncHook(widescreen)