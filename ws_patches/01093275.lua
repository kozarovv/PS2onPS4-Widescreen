apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f033c 1855040c 06a30046
eeObj.WriteMem32(0x001d9218,0x3c033f72)

--Render Fix
--803f033c 6400a2af 0070023c
eeObj.WriteMem32(0x002e0258,0x3c033fb0)
eeObj.WriteMem32(0x002e0568,0x3c033fb0)
eeObj.WriteMem32(0x002e0c58,0x3c033fb0)
eeObj.WriteMem32(0x002e0d98,0x3c033fb0)
end

emuObj.AddVsyncHook(widescreen)