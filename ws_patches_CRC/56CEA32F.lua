apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x004f972c,0x3fe38e32)
eeObj.WriteMem32(0x0050b7cc,0x3fe38e32)
end

emuObj.AddVsyncHook(widescreen)