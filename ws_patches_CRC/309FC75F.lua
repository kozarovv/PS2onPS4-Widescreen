apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f033c 0800a5c7 82180c46
eeObj.WriteMem32(0x00136a34,0x3c033fab)

--Y-Fov
--00bf023c 42080d46 00008244
eeObj.WriteMem32(0x00136b4c,0x3c02bf2b)
end

emuObj.AddVsyncHook(widescreen)