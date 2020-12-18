apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Saint Seiya - The Sanctuary SLES_532.01
--comment=Widescreen Hack
eeObj.WriteMem32(0x0015e404,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)