apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
--16:9
eeObj.WriteMem32(0x0012af50,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)