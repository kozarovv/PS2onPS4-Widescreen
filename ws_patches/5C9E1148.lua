apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-U by Arapapa)

eeObj.WriteMem32(0x00AB3F94,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)