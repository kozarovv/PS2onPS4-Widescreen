apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00117514,0x3c013f2a)
eeObj.WriteMem32(0x00204710,0x3fe38e2a)
end

emuObj.AddVsyncHook(widescreen)