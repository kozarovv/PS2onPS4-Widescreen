apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00138144,0x3c023f40)

--Zoom
eeObj.WriteMem32(0x001c5fcc,0x3c024466)
eeObj.WriteMem32(0x001c5fd4,0x34427000)
end

emuObj.AddVsyncHook(widescreen)