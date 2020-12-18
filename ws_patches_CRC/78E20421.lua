apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht (NTSC-J by Arapapa)

--Widescreen hack 16:9
--aabf023c 00008544 abaa4334
eeObj.WriteMem32(0x001bb828,0x3c02bfe3)
eeObj.WriteMem32(0x001bb830,0x34438e39)
end

emuObj.AddVsyncHook(widescreen)