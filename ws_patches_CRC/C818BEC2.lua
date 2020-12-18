apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Lord of Rings: The Two Towers SLUS_205.78
--comment=Widescreen Hack
eeObj.WriteMem32(0x00107160,0x3c023fe3)
eeObj.WriteMem32(0x00107164,0x34428e38)
end

emuObj.AddVsyncHook(widescreen)