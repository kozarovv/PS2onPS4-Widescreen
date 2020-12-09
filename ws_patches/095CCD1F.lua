apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x002593a8,0x40700000)

--Y-Fov
eeObj.WriteMem32(0x001c6c9c,0x3c023f23)
eeObj.WriteMem32(0x001c6ca0,0x3442d70a)
end

emuObj.AddVsyncHook(widescreen)