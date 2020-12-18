apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=X Fire [NTSC-J] (SLPS-20023)
--comment=Widescreen Hack 
eeObj.WriteMem32(0x001c0cac,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)