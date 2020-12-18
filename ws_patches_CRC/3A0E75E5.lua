apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
--eeObj.WriteMem32(0x00111aa4,0x3c034455)
eeObj.WriteMem32(0x00111ac0,0x3c0343b4)
eeObj.WriteMem32(0x001522c4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)