apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov

eeObj.WriteMem32(0x00119874,0x00000000)
eeObj.WriteMem32(0x001198bc,0x3c014235)
eeObj.WriteMem32(0x001198c0,0x3421e327)
end

emuObj.AddVsyncHook(widescreen)