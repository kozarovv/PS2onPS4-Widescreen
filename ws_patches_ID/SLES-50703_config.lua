apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Maximo - Ghosts to Glory SLES_507.03
--comment=Widescreen Hack
eeObj.WriteMem32(0x001e25f4,0x3feeeeee)
eeObj.WriteMem32(0x001478cc,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)