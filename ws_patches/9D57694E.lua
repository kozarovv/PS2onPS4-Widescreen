apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=tsugunai
--comment=Widescreen Hack
eeObj.WriteMem32(0x0017cf94,0x3c013f40)
eeObj.WriteMem32(0x001c1f30,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)