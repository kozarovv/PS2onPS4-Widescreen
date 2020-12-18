apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0021c55c,0x3c013ec0)
eeObj.WriteMem32(0x0021c5e0,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)