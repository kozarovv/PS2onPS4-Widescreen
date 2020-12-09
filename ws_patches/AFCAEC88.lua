apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Reel Fishing III (E)(SLES-51308)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0012c0ec,0x3c063f40)
eeObj.WriteMem32(0x0012c100,0x3c0343e0)


end

emuObj.AddVsyncHook(widescreen)