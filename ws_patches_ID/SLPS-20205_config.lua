apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Magical Sports - Hard Hitter (New Price) (J)(SLPS-20205)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9


--X-Fov
--02210846 0000a4e7 040063c4 (1st)
eeObj.WriteMem32(0x002128a4,0x0804d0cc)

eeObj.WriteMem32(0x00134330,0x46082102)
eeObj.WriteMem32(0x00134334,0x3c013f40)
eeObj.WriteMem32(0x00134338,0x4481f000)
eeObj.WriteMem32(0x0013433c,0x461e2102)
eeObj.WriteMem32(0x00134340,0x08084a2a)
end

emuObj.AddVsyncHook(widescreen)