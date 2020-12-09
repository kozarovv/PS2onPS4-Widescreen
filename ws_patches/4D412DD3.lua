apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02210846 0000a4e7 040063c4 (1st)
eeObj.WriteMem32(0x00285ba8,0x080c2b44)

eeObj.WriteMem32(0x0030ad10,0x46082102)
eeObj.WriteMem32(0x0030ad14,0x3c013f40)
eeObj.WriteMem32(0x0030ad18,0x4481f000)
eeObj.WriteMem32(0x0030ad1c,0x461e2102)
eeObj.WriteMem32(0x0030ad20,0x080a16eb)
end

emuObj.AddVsyncHook(widescreen)