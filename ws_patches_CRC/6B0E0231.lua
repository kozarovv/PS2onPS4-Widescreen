apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-J by Arapapa)

--Wide hack 16:9

eeObj.WriteMem32(0x003454d4,0x3f400000)
eeObj.WriteMem32(0x004c531c,0x3f206d37)
end

emuObj.AddVsyncHook(widescreen)