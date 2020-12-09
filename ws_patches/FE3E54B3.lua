apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Paddington Bear (E)(SLES-54665)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001de168,0x08096ce8)

eeObj.WriteMem32(0x0025b3a0,0x46011083)
eeObj.WriteMem32(0x0025b3a4,0x3c013f40)
eeObj.WriteMem32(0x0025b3a8,0x4481f000)
eeObj.WriteMem32(0x0025b3ac,0x461e1082)
eeObj.WriteMem32(0x0025b3b0,0x0807785b)
end

emuObj.AddVsyncHook(widescreen)