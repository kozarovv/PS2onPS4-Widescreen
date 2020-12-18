apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00284dc8,0x40700000)

--Y-Fov
eeObj.WriteMem32(0x0021523c,0x3c023f23)
eeObj.WriteMem32(0x00215240,0x3442d70a)
end

emuObj.AddVsyncHook(widescreen)