apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Reel Fishing III (U)(SLUS-20555)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0012bfdc,0x3c063f40)
eeObj.WriteMem32(0x0012bff0,0x3c0343e0)
end

emuObj.AddVsyncHook(widescreen)