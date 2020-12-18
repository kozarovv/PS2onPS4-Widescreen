apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f033c 1855040c 06a30046
eeObj.WriteMem32(0x001da728,0x3c033f72)

--Render Fix
--803f033c 6400a2af 0070023c
eeObj.WriteMem32(0x002e3428,0x3c033fb0)
eeObj.WriteMem32(0x002e3738,0x3c033fb0)
eeObj.WriteMem32(0x002e3e28,0x3c033fb0)
eeObj.WriteMem32(0x002e3f68,0x3c033fb0)
end

emuObj.AddVsyncHook(widescreen)