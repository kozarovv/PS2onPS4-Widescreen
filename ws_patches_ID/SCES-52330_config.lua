apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Forbidden Siren SCES_523.30
--comment=Widescreen Hack
eeObj.WriteMem32(0x002018a8,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)