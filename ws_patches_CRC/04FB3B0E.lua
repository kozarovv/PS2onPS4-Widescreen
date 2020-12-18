apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

--16:9
eeObj.WriteMem32(0x00148364,0x3c023fe3)
eeObj.WriteMem32(0x00148378,0x34428e39)
end

emuObj.AddVsyncHook(widescreen)