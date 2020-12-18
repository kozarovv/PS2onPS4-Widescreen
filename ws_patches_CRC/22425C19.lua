apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by nemesis2000 (NTSC-K by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001a5110,0x3c013f40)
eeObj.WriteMem32(0x001a5114,0x44810000)
eeObj.WriteMem32(0x001a511c,0x46006b43)


eeObj.WriteMem32(0x0015635c,0x3c023fe3)
eeObj.WriteMem32(0x00156360,0x34438e38)

eeObj.WriteMem32(0x001d84c0,0x24040001)
end

emuObj.AddVsyncHook(widescreen)