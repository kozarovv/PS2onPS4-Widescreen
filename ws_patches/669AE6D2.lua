apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001a0c0c,0x3c013fab)
eeObj.WriteMem32(0x00182c70,0x3c013fab)
eeObj.WriteMem32(0x002b6a14,0x3ee90000)
end

emuObj.AddVsyncHook(widescreen)