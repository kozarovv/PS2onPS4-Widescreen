apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hard Hitter 2 (E)(SLES-51057)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9


--X-Fov
--02210846 0000a4e7 040063c4 (1st)
eeObj.WriteMem32(0x0026fac4,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46082102)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e2102)
eeObj.WriteMem32(0x000c0010,0x0809beb2)
end

emuObj.AddVsyncHook(widescreen)