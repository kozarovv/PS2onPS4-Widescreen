apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen Hack by nemesis2000 (pnach by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x003958e4,0x3c043f24)
eeObj.WriteMem32(0x0039591c,0x46010003)
eeObj.WriteMem32(0x0039e288,0x3c023f24)
eeObj.WriteMem32(0x0039e2c0,0x46010842)
eeObj.WriteMem32(0x0039e2c8,0x46010903)

--eeObj.WriteMem32(0x005964a4,0x3fe38e38)
--eeObj.WriteMem32(0x005b8bd0,0x400ccccd)
end

emuObj.AddVsyncHook(widescreen)