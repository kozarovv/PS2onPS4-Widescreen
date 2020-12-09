apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47

--Widescreen hack 16:9

eeObj.WriteMem32(0x00388D88,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)