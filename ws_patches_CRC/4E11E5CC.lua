apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


X-Fov (In Squared Ring)
--803f013c 00a08144
eeObj.WriteMem32(0x00114578,0x3c013f40)

--Event Zoom
--803f013c 00008144
eeObj.WriteMem32(0x0019a3d8,0x3c013fab)

--Event Y-Fov
--f043013c 00008144
eeObj.WriteMem32(0x00190bc8,0x3c0143b4)
end

emuObj.AddVsyncHook(widescreen)