apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9
--Zoom
eeObj.WriteMem32(0x00262890,0x3c014308)

--Y-Fov
eeObj.WriteMem32(0x0051094c,0x3FDDDDDB)
end

emuObj.AddVsyncHook(widescreen)