apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dororo [NTSC-J] (SLPM-65526)
--comment=Widescreen Hack by Little Giant
eeObj.WriteMem32(0x001b8cbc,0x3c023f06)
eeObj.WriteMem32(0x001b8cc4,0x34426666)
end

emuObj.AddVsyncHook(widescreen)