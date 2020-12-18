apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fantastic 4 - Rise of the Silver Surfer PAL-M2
--comment=Widescreen Hack
eeObj.WriteMem32(0x0037F768,0x3Faaaaab)
end

emuObj.AddVsyncHook(widescreen)