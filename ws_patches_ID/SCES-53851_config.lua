apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Forbidden Siren 2 SCES_538.51
--comment=Widescreen Hack
eeObj.WriteMem32(0x00177a04,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)