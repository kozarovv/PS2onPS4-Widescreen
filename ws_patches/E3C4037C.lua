apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Forever Kingdom SLUS_203.43
--comment=Widescreen Hack
eeObj.WriteMem32(0x00101cc8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)