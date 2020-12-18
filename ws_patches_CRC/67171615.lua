apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0021CC20,0x3c013fee)
eeObj.WriteMem32(0x0021CC24,0x3421eeee)
eeObj.WriteMem32(0x01f6f574,0x3f100000)
end

emuObj.AddVsyncHook(widescreen)