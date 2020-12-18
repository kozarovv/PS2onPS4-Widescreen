apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0010daa4,0x3c023f21)
eeObj.WriteMem32(0x0010dfbc,0x3c02bfaa)
eeObj.WriteMem32(0x001428a0,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)