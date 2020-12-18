apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dokapon Kingdom SLUS_217.78
--comment=Widescreen Hack
eeObj.WriteMem32(0x0043b8a8,0x3c023f22)
end

emuObj.AddVsyncHook(widescreen)