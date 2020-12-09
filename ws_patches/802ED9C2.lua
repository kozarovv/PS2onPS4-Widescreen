apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0030e17c,0x3c013f21)

--Y-Fov
eeObj.WriteMem32(0x00371b24,0x3c013f40)
eeObj.WriteMem32(0x00371b28,0x44810000)
eeObj.WriteMem32(0x00371b30,0x4600bdc3)


end

emuObj.AddVsyncHook(widescreen)