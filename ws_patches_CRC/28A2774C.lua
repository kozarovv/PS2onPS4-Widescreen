apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001400ec,0x3c063f40)
end

emuObj.AddVsyncHook(widescreen)