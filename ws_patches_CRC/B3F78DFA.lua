apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gradius V (J)(SLPM-62462)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f033c 1855040c 06a30046
eeObj.WriteMem32(0x001d9218,0x3c033f72)

--Render Fix
--803f033c 6400a2af 0070023c
eeObj.WriteMem32(0x002e0028,0x3c033fb0)
eeObj.WriteMem32(0x002e0338,0x3c033fb0)
eeObj.WriteMem32(0x002e0a28,0x3c033fb0)
eeObj.WriteMem32(0x002e0b68,0x3c033fb0)


--Zoom
--eeObj.WriteMem32(0x001d9254,0x3c033f72)
--Y-Fov
--eeObj.WriteMem32(0x001d9200,0x3c033f8e)
end

emuObj.AddVsyncHook(widescreen)