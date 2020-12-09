apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa and FlatOut

--Gameplay 16:9

--Render fix
eeObj.WriteMem32(0x001d4c94,0x3c013f30)

--Zoom
--Other Zoom : 003f013c 00a88144 06650046
eeObj.WriteMem32(0x00293058,0x3FD66666)

--Y-Fov
eeObj.WriteMem32(0x001d4cd8,0x3c013fe3)
eeObj.WriteMem32(0x001d4cdc,0x34218e3f)
end

emuObj.AddVsyncHook(widescreen)