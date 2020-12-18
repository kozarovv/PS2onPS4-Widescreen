apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=RedCard SLES_507.11
--comment=Widescreen Hack
--bc7e2dc4003f023c to bc7e2dc4223f023c
--aa3f023c040080acabaa4234 to e33f023c040080ac398e4234
eeObj.WriteMem32(0x0012b308,0x3c023f22)
eeObj.WriteMem32(0x0020a054,0x3c023fe3)
eeObj.WriteMem32(0x0020a05c,0x34428e39)
end

emuObj.AddVsyncHook(widescreen)