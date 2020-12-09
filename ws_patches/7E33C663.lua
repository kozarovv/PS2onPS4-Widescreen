apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-fov (In Squared Ring)
--803F033C 00888244
eeObj.WriteMem32(0x00150c20,0x3c033f40)

--Zoom (Event)
--803f013c 00008144 2d20a003
eeObj.WriteMem32(0x00103288,0x3c013FAB)

--Y-Fov (Event)
--f043073c 0045053c
eeObj.WriteMem32(0x001bde24,0x3c0743B4)
end

emuObj.AddVsyncHook(widescreen)