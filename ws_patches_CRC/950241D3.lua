apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fuun Bakumatsuden [NTSC-J] (SLPM-65813)
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x0014a394,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)