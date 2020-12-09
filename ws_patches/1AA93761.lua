apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00109de0,0x3c013f9f)
eeObj.WriteMem32(0x00109de4,0x34213fbf)

eeObj.WriteMem32(0x001a2198,0x3c013f9f)
eeObj.WriteMem32(0x001a219c,0x34213fbf)

eeObj.WriteMem32(0x00109d78,0x3c014328)
end

emuObj.AddVsyncHook(widescreen)