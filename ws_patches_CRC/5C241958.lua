apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--Widescreen hack 16:9

--FOV
--803f033c 4940023c 00188344
eeObj.WriteMem32(0x001c3ba4,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)