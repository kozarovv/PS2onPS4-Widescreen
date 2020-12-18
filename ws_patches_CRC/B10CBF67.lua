apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gretzky NHL 2005 SCUS_974.09
--comment=Widescreen Hack
eeObj.WriteMem32(0x002bcfc0,0x3c013c2e)
eeObj.WriteMem32(0x002bcfd4,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)