apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Virtua Fighter - 10th Anniversary (J)(SLPM-68008)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02100046 9200013c 6c1020ac
eeObj.WriteMem32(0x003a879c,0x080ead70)
eeObj.WriteMem32(0x003ab5c0,0x46013002)
eeObj.WriteMem32(0x003ab5c4,0x3c013f5e)
eeObj.WriteMem32(0x003ab5c8,0x4481f000)
eeObj.WriteMem32(0x003ab5cc,0x461e0002)
eeObj.WriteMem32(0x003ab5d0,0x080ea1e8)

end

emuObj.AddVsyncHook(widescreen)