apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by FlatOut

eeObj.WriteMem32(0x0061C318,0x3FC71C76)
end

emuObj.AddVsyncHook(widescreen)