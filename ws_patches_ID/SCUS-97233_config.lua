apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=World Tour Soccer 2003 (U)(SCUS-97233)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001549cc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)