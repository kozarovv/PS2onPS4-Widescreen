apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by FlatOut

eeObj.WriteMem32(0x00194F44,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)