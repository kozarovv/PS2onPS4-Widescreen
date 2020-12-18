apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jurassic Park - Operation Genesis (E)(SLES-51354)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0055a410,0x3ff3aaab)
eeObj.WriteMem32(0x0055c1f4,0x3FB60CD0)
end

emuObj.AddVsyncHook(widescreen)