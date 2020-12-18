apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Crash Bandicoot Wrath Of Cortex

-- 16:9 hack
eeObj.WriteMem32(0x01D43044,0x3F100000)
end

emuObj.AddVsyncHook(widescreen)