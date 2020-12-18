apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fight Club (E)(SLES-52718)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0025914c,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)