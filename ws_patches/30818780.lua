apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--803f013c 00008144 2d200000
eeObj.WriteMem32(0x00102a60,0x3c013f40)

--46630046 0000058e
eeObj.WriteMem32(0x0010cfcc,0x46000346)
end

emuObj.AddVsyncHook(widescreen)