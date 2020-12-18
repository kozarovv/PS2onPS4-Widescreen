apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--aa3f013c be9f2134
eeObj.WriteMem32(0x00143980,0x3c013f80)
eeObj.WriteMem32(0x00143984,0x00000000)

--Zoom
--cd43013c 00608144 466c0046
eeObj.WriteMem32(0x001439a8,0x3c01439a)

--Render fix
--803f013c 00088144 02300046
eeObj.WriteMem32(0x002a2268,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)