apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=AirForce Delta Strike (NTSC-K)(SLKA-25133)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x004aafac,0x3f400000)
eeObj.WriteMem32(0x004aafa4,0x44200000)
end

emuObj.AddVsyncHook(widescreen)