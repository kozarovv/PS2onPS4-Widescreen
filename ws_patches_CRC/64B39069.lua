apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x005fb404,0x3fdba5e3)
end

emuObj.AddVsyncHook(widescreen)