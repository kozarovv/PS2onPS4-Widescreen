apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001bba00,0x3c013cb1)
eeObj.WriteMem32(0x001bba04,0x34214000)

--Y-Fov
eeObj.WriteMem32(0x001bba1c,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)