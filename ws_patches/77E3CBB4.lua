apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Devina and Arapapa

--Widescreen hack 16:9

--X-Fov
--42a80146 2700013c
eeObj.WriteMem32(0x0022778c,0x08097c04)

eeObj.WriteMem32(0x0025f010,0x4601a842)
eeObj.WriteMem32(0x0025f014,0x3c013faa)
eeObj.WriteMem32(0x0025f018,0x3421aaab)
eeObj.WriteMem32(0x0025f01c,0x4481f000)
eeObj.WriteMem32(0x0025f020,0x461e0842)
eeObj.WriteMem32(0x0025f024,0x08089de4)
end

emuObj.AddVsyncHook(widescreen)