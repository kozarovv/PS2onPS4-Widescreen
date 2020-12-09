apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0041b3d4,0x3ec00000)
eeObj.WriteMem32(0x0041e9f8,0x3f300000)
end

emuObj.AddVsyncHook(widescreen)