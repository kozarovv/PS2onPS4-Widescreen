apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
803f023c 00088244 (1st)
eeObj.WriteMem32(0x00103464,0x3c023f40)

--Zoom
803f033c 00008344 (1st)
eeObj.WriteMem32(0x001038a4,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)