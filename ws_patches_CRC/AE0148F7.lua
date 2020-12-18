apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tokobot Plus - Mysteries of the Karakuri SLUS_214.71
--comment=Widescreen Hack
eeObj.WriteMem32(0x0012833c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)