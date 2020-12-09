apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gradius V (U)(SLUS-20712)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f033c 1855040c 06a30046
eeObj.WriteMem32(0x001d9228,0x3c033f72)

--Render fix
--803f033c 6400a2af 0070023c
eeObj.WriteMem32(0x002e0638,0x3c033fb0)
eeObj.WriteMem32(0x002e0948,0x3c033fb0)
eeObj.WriteMem32(0x002e1038,0x3c033fb0)
eeObj.WriteMem32(0x002e1178,0x3c033fb0)
end

emuObj.AddVsyncHook(widescreen)